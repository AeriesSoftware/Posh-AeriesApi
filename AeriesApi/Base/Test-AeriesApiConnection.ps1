function Test-AeriesApiConnection
{
    <#  
        .SYNOPSIS
        Test the connection for Aeries API calls
        
        .DESCRIPTION
        The Test-AeriesApiConnection cmdlet is used to test the Aeries API connection

        .EXAMPLE
        Test-AeriesApiConnection
        This will perform a web request against the configured Aeries Instance
    #>

    Begin {
        Write-Verbose -Message "Begin testing Aeries Api connection"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/systeminfo"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish testing Aeries Api connection"
        if (![string]::IsNullOrWhiteSpace($Result.AeriesVersion)) {
            Write-Verbose -Message "Server running Aeries Version $($Result.AeriesVersion)"
            return $true
        }
        return $false
    }
}
