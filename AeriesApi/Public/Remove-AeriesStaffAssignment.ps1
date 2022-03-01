function Remove-AeriesStaffAssignment
{
    <#
        .SYNOPSIS
        Removes a Staff Assignment in Aeries

        .DESCRIPTION
        The Remove-AeriesStaffAssignment cmdlet is used to remove a Staff Assignment in Aeries for a given Staff ID, Assignment Type and Sequence

        .EXAMPLE
        Remove-AeriesStaffAssignment -StaffID 1 AssignmentType "classified" -Sequence 1
        This will remove a classified Staff Assignment in Aeries for StaffID 1 with a Sequence Number of 1
    #>

    [CmdletBinding(SupportsShouldProcess)]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true, ParameterSetName="Sequence")]
        [Parameter(Mandatory=$true, ParameterSetName="StartDate")]
        [int]
        $StaffID,

        [ValidateSet("classified", "certificated")]
        [Parameter(Mandatory=$true, ParameterSetName="Sequence")]
        [Parameter(Mandatory=$true, ParameterSetName="StartDate")]
        [string]
        $AssignmentType,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true, ParameterSetName="Sequence")]
        [Int16]
        $Sequence,

        [Parameter(Mandatory=$true, ParameterSetName="StartDate")]
        [datetime]
        $StartDate
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Delete"
        $SuccessStatusCode = 204

        If ($PSCmdlet.ParameterSetName -eq "Sequence")
        {
            $Endpoint = "v5/staff/$StaffID/assignments/$AssignmentType/$Sequence"
        }
        elseif ($PSCmdlet.ParameterSetName -eq "StartDate")
        {
            $Endpoint = "v5/staff/$StaffID/assignments/startdate/$($StartDate.ToString("yyyy/MM/dd"))/$AssignmentType"
        }
        else
        {
            Throw "No valid parameters were set"
        }
    }

    Process {
        If ($PSCmdlet.ShouldProcess("Staff Assignment by $($PSCmdlet.ParameterSetName)")) {
            $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
        }
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
