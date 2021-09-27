function Get-AeriesCourseRequest
{
    <#
        .SYNOPSIS
        Get Course Requests from Aeries

        .DESCRIPTION
        The Get-AeriesCourseRequest cmdlet is used to retrieve a filtered set or all Course Requests from Aeries

        .EXAMPLE
        Get-AeriesCourseRequest -SchoolCode 994
        This will return all Course Requests for School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesCourseRequest -SchoolCode 994 -StudentID 99400002
        This will return the Course Requests for Student ID 99400002 from School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesCourseRequest -SchoolCode 994 -StudentID 99400002 -Sequence 5
        This will return the Course Request Sequence 5 for Student ID 99400002 from School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesCourseRequest -SchoolCode 994 -StudentNumber 2
        This will return the Course Requests for Student Number 2 from School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesCourseRequest -SchoolCode 994 -StudentNumber 2 -Sequence 5
        This will return the Course Request Sequence 5 for Student Number 2 from School Code 994 from Aeries
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
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Sequence,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentNumber
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode"

        if ($StudentID -gt 0) {
            $Endpoint += "/students/$StudentID/courserequests/$Sequence"
        }
elseif ($StudentNumber -gt 0) {
            $Endpoint += "/students/sn/$StudentNumber/courserequests/$Sequence"
        }
else {
            $Endpoint += "/scheduling/courserequests"
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
