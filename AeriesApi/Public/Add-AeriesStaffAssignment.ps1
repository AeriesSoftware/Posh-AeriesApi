function Add-AeriesStaffAssignment
{
    <#
        .SYNOPSIS
        Add a Staff Assignment in Aeries

        .DESCRIPTION
        The Add-AeriesStaffAssignment cmdlet is used to create a Staff Assignment in Aeries

        .EXAMPLE
        Add-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified"
        This will create a Staff Assignment for Staff ID 1 with an Assignment Type of "classified" in Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StaffID,

        [ValidateSet("classified", "certificated")]
        [Parameter(Mandatory=$true)]
        [string]
        $AssignmentType,

        [ValidateScript({
            if ([string]::IsNullOrWhiteSpace($_))
            {
                <# If the passed in value is blank or null, accept it #>
                return $true
            }
            elseif ($AssignmentType -eq "classified")
            {
                <# Classified can have up to 3 character codes #>
                return $_.Length -le 3
            }
            elseif ($AssignmentType -eq "certificated")
            {
                <# Certificated can have up to 2 character codes #>
                return $_.Length -le 2
            }
            else {
                return $false
            }
        })]
        [Parameter(Mandatory=$false)]
        [string]
        $JobClassification,

        [Parameter(Mandatory=$false)]
        [double]
        $FullTimePercentage = -1,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment1,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment2,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment3,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment4,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment5,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment6,

        [ValidateLength(0,4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonClassroomBasedJobAssignment7,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $SchoolCode = -1,

        [Parameter(Mandatory=$false)]
        [datetime]
        $StartDate,

        [Parameter(Mandatory=$false)]
        [datetime]
        $EndDate
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $Endpoint = "v5/staff/$StaffID/assignments"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        $Body.AssignmentType = $AssignmentType

        If (![string]::IsNullOrWhiteSpace($JobClassification)) {
            <# String value #>
            $Body.JobClassification = $JobClassification
        }

        If ($FullTimePercentage -gt -1) {
            <# double value #>
            $Body.FullTimePercentage = $FullTimePercentage
        }

        If ($AssignmentType -eq "certificated") {
            <# These only apply for Certificated #>

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment1)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment1 = $NonClassroomBasedJobAssignment1
            }

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment2)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment2 = $NonClassroomBasedJobAssignment2
            }

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment3)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment3 = $NonClassroomBasedJobAssignment3
            }

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment4)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment4 = $NonClassroomBasedJobAssignment4
            }

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment5)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment5 = $NonClassroomBasedJobAssignment5
            }

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment6)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment6 = $NonClassroomBasedJobAssignment6
            }

            If (![string]::IsNullOrWhiteSpace($NonClassroomBasedJobAssignment7)) {
                <# String value #>
                $Body.NonClassroomBasedJobAssignment7 = $NonClassroomBasedJobAssignment7
            }
        }

        If ($SchoolCode -gt -1) {
            <# Int16 value #>
            $Body.SchoolCode = $SchoolCode
        }

        If (![string]::IsNullOrWhiteSpace($StartDate)) {
            <# Datetime value #>
            $Body.StartDate = $StartDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($EndDate)) {
            <# Datetime value #>
            $Body.EndDate = $EndDate.ToString("yyyy-MM-dd")
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
