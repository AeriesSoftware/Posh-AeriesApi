function Remove-AeriesAlternateCourseRequest
{
    <#
        .SYNOPSIS
        Remove an Alternate Course Request from Aeries

        .DESCRIPTION
        The Remove-AeriesAlternateCourseRequest cmdlet is used to remove an Alternate Course Request in Aeries for a given StudentID, SchoolCode and Sequence

        .EXAMPLE
        Remove-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1
        This will delete an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
    #>

    [CmdletBinding(SupportsShouldProcess)]
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
        $Sequence
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Delete"
        $SuccessStatusCode = 204
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/alternatecourserequests/$Sequence"
    }

    Process {
        if($PSCmdlet.ShouldProcess("Alternate Course Request with Sequence $Sequence for Student ID $StudentID")) {
            $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
        }
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
