function Get-AeriesStaffAssignment
{
    <#
        .SYNOPSIS
        Get Staff Assignments from Aeries

        .DESCRIPTION
        The Get-AeriesStaffAssignment cmdlet is used to retrieve one or more Staff Assignment something from Aeries

        .EXAMPLE
        Get-AeriesStaffAssignment -StaffID 1
        This will return all Staff Assignments for Staff ID 1 from Aeries

        .EXAMPLE
        Get-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified"
        This will return all Staff Assignments for Staff ID 1 that match Assignment Type of "classified" from Aeries

        .EXAMPLE
        Get-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified" -Sequence 1
        This will return all Staff Assignments for Staff ID 1 that match Assignment Type of "classified" and Sequence Number 1 from Aeries

        .EXAMPLE
        Get-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified" -Date (Get-Date "2021-04-13")
        This will return all Staff Assignments for Staff ID 1 that match Assignment Type of "classified" and were effective on 04/13/2021 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StaffID,
        [ValidateSet("classified", "certificated")]
        [Parameter(Mandatory=$false)]
        $AssignmentType,
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Sequence,
        [Parameter(Mandatory=$false)]
        [datetime]
        $Date
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/staff/$StaffID/assignments"

        if ($Date -ne $null) {
            $Endpoint += "/date/" + $Date.ToString("yyyy/MM/dd") + "/$AssignmentType"
        }
elseif (![string]::IsNullOrWhiteSpace($AssignmentType) -and ($Sequence -gt 0)) {
            $Endpoint += "/$AssignmentType/$Sequence"
        }
else {
            $Endpoint += "/$AssignmentType"
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
