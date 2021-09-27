function Get-AeriesStudentTest
{
    <#
        .SYNOPSIS
        Get Tests from Aeries

        .DESCRIPTION
        The Get-AeriesStudentTest cmdlet is used to retrieve Tests for a specific Student from Aeries

        .EXAMPLE
        Get-AeriesStudentTest -StudentID 99400001
        This will return all Tests for the specific Student ID from Aeries
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
        $Endpoint = "v5/students/$StudentID/tests"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
