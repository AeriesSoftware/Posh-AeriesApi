function Remove-AeriesAuthorization
{
    <#
        .SYNOPSIS
        Remove an Authorization in Aeries

        .DESCRIPTION
        The Remove-AeriesAuthorization cmdlet is used to remove an Authorization in Aeries

        .EXAMPLE
        Remove-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Sequence 1
        This will remove an Authorization in Aeries
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
        [Parameter(Mandatory=$false)]
        [Int16]
        $Sequence
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Delete"
        $SuccessStatusCode = 204
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/authorizations/$Sequence"
    }

    Process {
        if($PSCmdlet.ShouldProcess("Authorization Sequence $Sequence for Student ID $StudentID")) {
            $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
        }
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
