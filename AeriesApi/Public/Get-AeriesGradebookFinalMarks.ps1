function Get-AeriesGradebookFinalMarks
{
    <#
        .SYNOPSIS
        Get Gradebook Final Marks from Aeries

        .DESCRIPTION
        The Get-AeriesGradebookFinalMarks cmdlet is used to retrieve Final Marks for a Gradebook from Aeries

        .EXAMPLE
        Get-AeriesGradebookFinalMarks -GradebookNumber 4487750
        This will return the Final Marks for Gradebook Number 4487750 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $GradebookNumber
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/gradebooks/$GradebookNumber/FinalMarks"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
