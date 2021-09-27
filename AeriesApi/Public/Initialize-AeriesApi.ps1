function Initialize-AeriesApi
{
    <#
        .SYNOPSIS
        Initialize and prepare for Aeries API calls

        .DESCRIPTION
        The Initialize-AeriesApi cmdlet is used to setup the necessary information for Aeries API calls

        .EXAMPLE
        Initialize-AeriesApi -URL "https://demo.aeries.net/aeries" -Certificate "abcdefghijklmnopqrstuvwxyz0123456789"
        This will initialize the link to an Aeries Instance for API calls
    #>

    [CmdletBinding()]
    param (
        # Base URL for Aeries API
        [Parameter(Mandatory=$true)]
        [string]
        $URL,
        # The certificate to perform the requests
        [Parameter(Mandatory=$true, ValueFromPipeline)]
        [string]
        $Certificate,
        # The DatabaseYear to utilize
        # If provided, must be 4 characters
        [ValidateLength(4,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $DatabaseYear,
        # User Agent to use for Requests
        [Parameter(Mandatory=$false)]
        [string]
        $UserAgent = "PowerShell AeriesApi Module"
    )

    Begin {
        Write-Verbose -Message "Begin initializing Aeries API and storing config"

        $AeriesConfig = [PSCustomObject]@{
            URL = $URL.Trim("/") # Remove trailing slash if it is present
            Certificate = $Certificate
            DatabaseYear = $DatabaseYear
            UserAgent = $UserAgent
        }
Set-Variable -Name "AeriesApiConfig" -Scope "Script" -Value $AeriesConfig

        $ObfuscatedCertificate = $AeriesConfig.Certificate.Substring(0,5) + ("x" * ($AeriesApiConfig.Certificate.length - 5))
        Write-Verbose -Message "Set URL to: $URL, Certificate to $ObfuscatedCertificate, DatabaseYear to `"$DatabaseYear`""
    }

    Process {
        $ConnectionResult = (Test-AeriesApiConnection)
    }

    End {
        Write-Verbose -Message "Finished initializing Aeries API and storing config"
        if ($ConnectionResult -eq $false) {
            Throw "Could not establish connection to the server $($URL)"
        }
    }
}
