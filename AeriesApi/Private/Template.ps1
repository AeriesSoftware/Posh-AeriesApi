function Get-AeriesTemplate
{
    <#
        .SYNOPSIS
        Get something from Aeries

        .DESCRIPTION
        The Template-AeriesApi cmdlet is used to retrieve a specific something or all of something from Aeries

        .EXAMPLE
        Template-AeriesApi
        This will return something from Aeries

        .EXAMPLE
        Template-AeriesApi -Parameter 5
        This will return the requested something from Aeries
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)]
        [int]
        $Parameter = 0
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/someendpoint"

        if ($Parameter -gt 0) {
            $Endpoint += "/$Parameter"
        }
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
