function Get-AeriesStudentEnrollmentHistory
{
    <#  
        .SYNOPSIS
        Get Enrollment History from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentEnrollmentHistory cmdlet is used to retrieve a specific or all of Student Enrollment Histories from Aeries

        .EXAMPLE
        Get-AeriesStudentEnrollmentHistory
        This will return all Student Enrollment Histories from Aeries

        .EXAMPLE
        Get-AeriesStudentEnrollmentHistory -StudentID 99400001
        This will return all Enrollment Histories from Aeries for Student ID 99400001

        .EXAMPLE
        Get-AeriesStudentEnrollmentHistory -StudentID 99400001 -AcademicYear 2020
        This will return all Enrollment Histories from Aeries for Student ID 99400001 and Academic Year 2020-2021

        .EXAMPLE
        Get-AeriesStudentEnrollmentHistory -SchoolCode 994
        This will return all Enrollment Histories from Aeries for School Code 994

        .EXAMPLE
        Get-AeriesStudentEnrollmentHistory -SchoolCode 994 -AcademicYear 2020
        This will return all Enrollment Histories from Aeries for School Code 994 and Academic Year 2020-2021

        .EXAMPLE
        Get-AeriesStudentEnrollmentHistory -SchoolCode 994 -StudentID 99400001 -AcademicYear 2020
        This will return all Enrollment Histories from Aeries for Student ID 99400001 at School Code 994 for Academic Year 2020
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID,
        # Academic year (2017 for 2017-2018)
        [ValidateLength(4,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $AcademicYear
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5"

        if (($SchoolCode -gt 0) -and (![string]::IsNullOrWhiteSpace($AcademicYear))) {
            # School Code and Academic Year were provided
            $Endpoint += "/schools/$SchoolCode/enrollment/$StudentID/year/$AcademicYear"
        }
        elseif ($SchoolCode -gt 0) {
            # School Code is greater than 0
            $Endpoint += "/schools/$SchoolCode/enrollment/$StudentID"
        }
        elseif (![string]::IsNullOrWhiteSpace($AcademicYear)) {
            # Academic Year was provided
            $Endpoint += "/enrollment/$StudentID/year/$AcademicYear"
        }
        else {
            # Default (can return a LOT of data if no Student ID is passed)
            $Endpoint += "/enrollment/$StudentID"
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
