function Get-AeriesStudentAttendance
{
    <#  
        .SYNOPSIS
        Get Attendace from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentAttendance cmdlet is used to retrieve a specific or all of Student Attendance from Aeries

        .EXAMPLE
        Get-AeriesStudentAttendance
        This will return all Student Attendace from Aeries

        .EXAMPLE
        Get-AeriesStudentAttendance -SchoolCode 994
        This will return the requested Attendace from Aeries for School Code 994

        .EXAMPLE
        Get-AeriesStudentAttendance -SchoolCode 994 -StudentID 99400001 -StartDate (Get-Date "2020-08-01") -EndDate (Get-Date "2021-07-31")
        This will return the requested Attendance from Aeries for Student ID 99400001, School Code 994, Start Date of 08/01/2020 and End Date 07/31/2021
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
        # The earliest date of attendance to include (inclusive)
        [Parameter(Mandatory=$false)]
        [datetime]
        $StartDate,
        # The latest date of attendance to include (inclusive)
        [Parameter(Mandatory=$false)]
        [datetime]
        $EndDate
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/attendance/$StudentID"

        $QueryParameters = @{}
        if ($StartDate -ne $null) {
            $QueryParameters += @{
                "StartDate" = $StartDate.ToString("yyyyMMdd")
            }
        }
        if ($EndDate -ge 1) {
            $QueryParameters += @{
                "EndDate" = $EndDate.ToString("yyyyMMdd")
            }
        }
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -QueryParameters $QueryParameters)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
