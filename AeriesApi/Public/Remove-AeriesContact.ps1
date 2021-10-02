function Remove-AeriesContact
{
    <#
        .SYNOPSIS
        Removes a Contact in Aeries

        .DESCRIPTION
        The Remove-AeriesContact cmdlet is used to remove a Contact in Aeries for a given StudentID and Sequence Number

        .EXAMPLE
        Remove-AeriesContact -StudentID 99400001 -Sequence 1
        This will remove a Contact in Aeries for StudentID 99400001 with a Sequence Number of 1
    #>

    [CmdletBinding(SupportsShouldProcess)]
    param (
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
        $SuccessStatusCode = 200
        $Endpoint = "v5/DeleteContact/$StudentID/$Sequence"
    }

    Process {
        if($PSCmdlet.ShouldProcess("Contact Sequence $Sequence for Student ID $StudentID")) {
            $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
        }
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
