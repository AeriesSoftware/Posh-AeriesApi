function Get-AeriesAttendanceHistorySummary
{
    <#
        .SYNOPSIS
        Get Attendace History Summary from Aeries

        .DESCRIPTION
        The Get-AeriesAttendanceHistorySummary cmdlet is used to retrieve a specific or all of Student Attendance History Summaries from Aeries

        .EXAMPLE
        Get-AeriesAttendanceHistorySummary -SchoolCode 994
        This will return all Attendace History Summaries from Aeries for School Code 994

        .EXAMPLE
        Get-AeriesAttendanceHistorySummary -SchoolCode 994 -StudentID 99400001
        This will return all Attendance History Summaries from Aeries for Student ID 99400001

        .EXAMPLE
        Get-AeriesAttendanceHistorySummary -SchoolCode 994 -StartYear 2020
        This will return all Attendance History Summaries from Aeries for Academic Year 2020-2021 at School Code 994
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
        $StudentID,
        # Start Year (Will format to be Academic Year of YYYY-YYYY)
        [ValidateRange(1000,9999)]
        [Parameter(Mandatory=$false)]
        [int]
        $StartYear
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/AttendanceHistory/summary"

        if ($StartYear -gt 0) {
            $Endpoint += "/year/$StartYear-$($StartYear+1)"
        }
        else {
            $Endpoint += "/$StudentID"
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
