function Invoke-AeriesApiCall
{
    <#  
        .SYNOPSIS
        Invokes Aeries API calls
        
        .DESCRIPTION
        The Invoke-AeriesApiCall cmdlet is used to perform Aeries API calls

        .EXAMPLE
        Invoke-AeriesApiCall -Method "Get" -Endpoint "v5/systeminfo"
        This will perform a web request against the configured Aeries Instance and return the result
    #>

    [CmdletBinding()]
    param (
        # Method to perform the call with (Default is Get)
        [Parameter(Mandatory=$false)]
        [string]
        [ValidateSet("Get","Post","Put","Delete")]
        $Method = "Get",
        # Endpoint to call, such as "v5/systeminfo"
        [Parameter(Mandatory=$true)]
        [string]
        $Endpoint,
        # Success Status Code expected
        [Parameter(Mandatory=$false)]
        [int]
        $SuccessStatusCode = 200,
        # Body to send the request with. Typically used for Post or Put
        [Parameter(Mandatory=$false, ValueFromPipeline)]
        [string]
        $Body = "",
        # URL Query Parameters to utilize
        [Parameter(Mandatory=$false)]
        [hashtable]
        $QueryParameters
    )

    Begin {
        $ApiError = $null
        Write-Verbose -Message "Begin calling $Endpoint"

        # Required in order to communicate to Aeries
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        # Add System.Web for parameter parsing (if necessary)
        Add-Type -AssemblyName System.Web

        # Retrieve config and ensure things are set properly
        $AeriesConfig = $Global:AeriesApiConfig
        if (
            [string]::IsNullOrWhiteSpace($AeriesConfig.URL) -or
            [string]::IsNullOrWhiteSpace($AeriesConfig.Certificate)
            ) { Throw "Please run Initialize-AeriesApi before making API calls" }

        # Generate the headers that will be sent
        $Headers = @{
            "Accept" = "application/json"
            "AERIES-CERT" = $AeriesConfig.Certificate
        }

        # Basic variables to be used when sending the request
        $UserAgent = "PowerShell AeriesApi Module"
        $RequestURL = "$($AeriesConfig.URL)/api/$Endpoint"

        # Begin Parameter processing
        # Check if a DatabaseYear was configured. If so, add to parameters
        if (![string]::IsNullOrWhiteSpace($AeriesConfig.DatabaseYear)) {
            $QueryParameters += @{
                "DatabaseYear" = $AeriesConfig.DatabaseYear
            }
        }

        $QueryStringObject = [System.Web.HttpUtility]::ParseQueryString([string]::Empty)
        # Go through and process Parameters into TempParameters
        if ($QueryParameters.Count -ge 1) {
            foreach ($Key in $QueryParameters.Keys) {
                $QueryStringObject.Add($Key, $QueryParameters[$Key])
            }
        }
        # If there are items in the 
        if ($QueryStringObject.Count -ge 1) {
            $RequestURL += ("?" + $QueryStringObject.ToString())
        }
    }

    Process {
        try {
            # Sending a body when it's not Put or Post doesn't work for Invoke-WebRequest
            if (@("Put","Post") -contains $Method) {
                $ApiResult = (Invoke-WebRequest -Uri $RequestURL -Method $Method -Headers $Headers -UserAgent $UserAgent -Body $Body)
            }
            else {
                $ApiResult = (Invoke-WebRequest -Uri $RequestURL -Method $Method -Headers $Headers -UserAgent $UserAgent)
            }
        }
        catch {
            # End block will run even when an exception is thrown
            # So store the error then re-throw it
            $ApiError = $Error[0]
            Throw
        }
    }

    End {
        Write-Verbose -Message "Finish calling $Endpoint"

        # If there was an error, the call for this method should handle it
        # so just cancel here for now, unless otherwise thought of
        if ($null -ne $ApiError) {
            return
        }
        elseif ($ApiResult.StatusCode -eq $SuccessStatusCode) {
            # If the request was a success, return the Content as a JSON object
            return ($ApiResult.Content | ConvertFrom-Json)
        }
        elseif ($ApiResult.StatusCode -ge 400) {
            # If the Status Code is 400 or greater, there is a message attached to the error from Aeries
            Throw "Error calling $Endpoint : $(($ApiResult.Content | ConvertFrom-Json).Message)"
        }
        else {
            Write-Verbose -Message "Error: $($ApiResult.Content)"
            Throw "Status code `"$($ApiResult.StatusCode)`" does not indicate success for $Endpoint"
        }
    }
}
