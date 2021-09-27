function Get-AeriesGradebookAssignmentScore
{
    <#
        .SYNOPSIS
        Get Gradebook Assignment Scores from Aeries

        .DESCRIPTION
        The Get-AeriesGradebookAssignmentScore cmdlet is used to retrieve a specific or all Gradebook Assignment Scores from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignmentScore -GradebookNumber 4487750 -AssignmentNumber 1
        This will return the Gradebook Assignment Scores for Gradebook Number 4487750 and Assignment 1 from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignmentScore -GradebookNumber 4487750 -AssignmentNumber 1 -StudentID 99400015
        This will return all Gradebook Assignemtn Scores for Student ID 99400015 on Assignment 1 in Gradebook Number 4487750 from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignmentScore -AssignmentUniqueID "059FE76C-05C1-40DD-8B95-1FFA961DE488"
        This will return the Gradebook Assignment Scores for Gradebook Assignment "059FE76C-05C1-40DD-8B95-1FFA961DE488" from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignmentScore -AssignmentUniqueID "059FE76C-05C1-40DD-8B95-1FFA961DE488" -StudentID 99400015
        This will return the Gradebook Assignment Scores for Gradebook Assignment "059FE76C-05C1-40DD-8B95-1FFA961DE488" and Student ID 99400015 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $GradebookNumber,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $AssignmentNumber,
        [Parameter(Mandatory=$false)]
        [string]
        $AssignmentUniqueID,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/gradebooks"

        if (![string]::IsNullOrWhiteSpace($AssignmentUniqueID)) {
            $Endpoint += "/Assignments/$AssignmentUniqueID/scores/$StudentID"
        }
        elseif (($GradebookNumber -gt 0) -and ($AssignmentNumber -gt 0)) {
            $Endpoint += "/$GradebookNumber/assignments/$AssignmentNumber/scores/$StudentID"
        }
        else {
            Throw "Must provide at least AssignmentUniqueID or GradebookNumber and Assignment Number"
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
