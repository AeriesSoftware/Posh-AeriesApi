function Edit-AeriesCourseRequest
{
    <#
        .SYNOPSIS
        Edit a Course Request to Aeries

        .DESCRIPTION
        The Edit-AeriesCourseRequest cmdlet is used to edit a Course Request in Aeries for a given StudentID, SchoolCode and Sequence

        .EXAMPLE
        Edit-AeriesCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1 -CourseNumber "123456"
        This will edit a Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $Sequence,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $SectionNumber = -1,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$true)]
        [string]
        $CourseNumber,

        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $PreferredTeacherNumber = -1,

        [ValidateRange(0, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $PreferredStaffID = -1,

        [ValidateLength(0, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $RejectCode,

        [ValidateSet("", "X")]
        [Parameter(Mandatory=$false)]
        [string]
        $AlternateTag,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $ActualPrimaryCourseID,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $PermanentLockCode,

        [Parameter(Mandatory=$false)]
        [Int16[]]
        $AlternateCourseRequestReferences = $null,

        [ValidateSet("append", "replace")]
        [ValidateScript({
            If ($AlternateCourseRequestReferences.Count -gt 0) {
                <# Must provide either append or replace if providing AlternateCourseRequestReferences #>
                return (![string]::IsNullOrWhiteSpace($_))
            }
            else
            {
                return $true
            }
        })]
        [Parameter(Mandatory=$false)]
        [string]
        $AlternateCourseRequestUpdateOptions
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Put"
        $SuccessStatusCode = 200,201
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/courserequests/$Sequence"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        $Body.CourseID = $CourseNumber

        If ($SectionNumber -gt -1) {
            <# Int16 Value #>
            $Body.SectionNumber = $SectionNumber
        }

        If ($PreferredTeacherNumber -gt -1) {
            <# Int16 Value #>
            $Body.PreferredTeacherNumber = $PreferredTeacherNumber
        }

        If ($PreferredStaffID -gt -1) {
            <# Int Value #>
            $Body.PreferredStaffID = $PreferredStaffID
        }

        If (![string]::IsNullOrWhiteSpace($RejectCode)) {
            <# String Value #>
            $Body.RejectCode = $RejectCode
        }

        If (![string]::IsNullOrWhiteSpace($AlternateTag)) {
            <# String Value #>
            $Body.AlternateTag = $AlternateTag
        }

        If (![string]::IsNullOrWhiteSpace($ActualPrimaryCourseID)) {
            <# String Value #>
            $Body.ActualPrimaryCourseID = $ActualPrimaryCourseID
        }

        If (![string]::IsNullOrWhiteSpace($PermanentLockCode)) {
            <# String Value #>
            $Body.PermanentLockCode = $PermanentLockCode
        }

        If ($AlternateCourseRequestReferences.Count -gt 0) {
            <# Int16[] Value #>
            $Body.AlternateCourseRequestReferences = $AlternateCourseRequestReferences
        }

        If (![string]::IsNullOrWhiteSpace($AlternateCourseRequestUpdateOptions)) {
            <# String Value #>
            $Body.AlternateCourseRequestUpdateOptions = $AlternateCourseRequestUpdateOptions
        }

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
