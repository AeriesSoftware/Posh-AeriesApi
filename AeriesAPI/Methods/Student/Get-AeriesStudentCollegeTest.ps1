function Get-AeriesStudentCollegeTest
{
    <#  
        .SYNOPSIS
        Get College Tests from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentCollegeTest cmdlet is used to retrieve College Tests for a specific Student from Aeries

        .EXAMPLE
        Get-AeriesStudentCollegeTest -SchoolCode 994 -StudentID 99400001
        This will return all College Tests for the specific Student ID at the specified School Code from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/CollegeTestScores/$StudentID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
