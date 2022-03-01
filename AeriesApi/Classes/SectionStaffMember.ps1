class SectionStaffMember {
    [ValidateRange(1, [int]::MaxValue)]
    [int]
    $StaffID

    [ValidateLength(1, 1)]
    [bool]
    $IsPrimaryTeacher

    [ValidateLength(1, 3)]
    [string]
    $StaffRoleCode

    [ValidateLength(1, 3)]
    [string]
    $TeacherPositionCode

    [ValidateSet("Y","N")]
    [string]
    $AttendancePermission = "N"

    [ValidateSet("Y","N")]
    [string]
    $GradebookPermissionCode = "N"

    [ValidateSet("Y","N")]
    [string]
    $GradeReportingAccess = "N"

    [ValidateSet("Y","N")]
    [string]
    $StudentAccess = "N"

    [ValidateSet("Y","N")]
    [string]
    $IncludeInStateReporting = "N"

    [System.Nullable[datetime]]
    $StartDate = $null

    [System.Nullable[datetime]]
    $EndDate = $null

    [ValidateLength(1, 1)]
    [string]
    $InactiveStatusCode

    SectionStaffMember([int]$StaffID) {
        <# With a constructor defined, this means it can't be made blank. We want to require at least Staff ID #>
        $this.StaffID = $StaffID
    }
}
