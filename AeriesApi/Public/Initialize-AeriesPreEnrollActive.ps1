function Initialize-AeriesPreEnrollActive
{
    <#
        .SYNOPSIS
        Initialize a Pre-Enrollment for an Active Student

        .DESCRIPTION
        The Initialize-AeriesPreEnrollActive cmdlet is used to Initialize a Pre-Enrollment record for a given Student ID in Aeries

        .EXAMPLE
        Initialize-AeriesPreEnrollActive -StudentID 99400001
        This will initialize a Pre Enrollment for the given Student ID in Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/commands/preenrollstudent/$StudentID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
