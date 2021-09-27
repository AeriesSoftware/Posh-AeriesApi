function Get-AeriesCodeSet
{
    <#
        .SYNOPSIS
        Get a Code Set from Aeries

        .DESCRIPTION
        The Get-AeriesCodeSet cmdlet is used to retrieve the Code Set for a specific Table and Field from Aeries

        .EXAMPLE
        Get-AeriesCodeSet -Table "STU" -Field "TG"
        This will return the Code Set from Aeries for STU.TG (Student Tag)
    #>

    [CmdletBinding()]
    param (
        # Table Code
        [Parameter(Mandatory=$true)]
        [string]
        $Table,
        # Field Code
        [Parameter(Mandatory=$true)]
        [string]
        $Field
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/codes/$Table/$Field"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
