function Remove-AeriesSchedulingSection
{
    <#
        .SYNOPSIS
        Removes a Scheduling Section in Aeries

        .DESCRIPTION
        The Remove-AeriesSchedulingSection cmdlet is used to remove a Scheduling Section in Aeries for a given SchoolCode and SectionNumber

        .EXAMPLE
        Remove-AeriesSchedulingSection -SchoolCode 884 -SectionNumber 1
        This will remove a Scheduling Section in Aeries for SchoolCode 884 with a SectionNumber 1
    #>

    [CmdletBinding(SupportsShouldProcess)]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SectionNumber
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Delete"
        $SuccessStatusCode = 204

        $School = (Get-AeriesSchool -SchoolCode $SchoolCode)

        If ($School.UsingSectionStaffInScheduling) {
            $Endpoint = "v5/schools/$SchoolCode/scheduling/sections/$SectionNumber"
        }
        else
        {
            $Endpoint = "v4/schools/$SchoolCode/scheduling/sections/$SectionNumber"
        }
    }

    Process {
        if($PSCmdlet.ShouldProcess("Scheduling Section $SectionNumber for School Code $SchoolCode")) {
            $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
        }
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
