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

    [CmdletBinding()]
    [OutputType([bool])]
    param ()
    
    Begin {
        Write-Verbose -Message "Begin testing Aeries Api connection"
    }

    Process {
        $Result = (Get-AeriesSystemInfo)
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
