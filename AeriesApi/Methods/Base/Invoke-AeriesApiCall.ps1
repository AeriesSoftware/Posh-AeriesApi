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
        $QueryParameters,
        # When this is used, DatabaseYear will be ignored on the request
        [Parameter(Mandatory=$false)]
        [switch]
        $IgnoreDatabaseYear
    )

    Begin {
        Write-Verbose -Message "Begin calling $Endpoint"

        # Required in order to communicate to Aeries
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        # Add System.Web for parameter parsing (if necessary)
        Add-Type -AssemblyName System.Web

        # Retrieve config and ensure things are set properly
        $AeriesConfig = $Script:AeriesApiConfig
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
        # Check if a DatabaseYear was configured
        # If so, add to parameters except when asked to ignore
        if (![string]::IsNullOrWhiteSpace($AeriesConfig.DatabaseYear) -and !$IgnoreDatabaseYear) {
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
            $StatusCode = $ApiResult.StatusCode
            $ResponseBody = $ApiResult.Content
        }
        catch {
            $StatusCode = $_.Exception.Response.StatusCode.value__
            $ResponseBody = $_.ErrorDetails.Message
        }
    }

    End {
        Write-Verbose -Message "Finish calling $Endpoint"

        if ($StatusCode -eq $SuccessStatusCode) {
            # If the request was a success, return the Content as a JSON object
            return ($ResponseBody | ConvertFrom-Json)
        }
        elseif ($StatusCode -in (400,404)) {
            # There is a message attached to the error from Aeries
            Throw "Error calling $Endpoint : $(($ResponseBody | ConvertFrom-Json).Message)"
        }
        else {
            Write-Verbose -Message "Error: $($ResponseBody)"
            Throw "Status code `"$($StatusCode)`" does not indicate success for $Endpoint`r`n$ResponseBody"
        }
    }
}
