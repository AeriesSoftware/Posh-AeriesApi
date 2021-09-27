function Get-AeriesGradebookAssignment
{
    <#
        .SYNOPSIS
        Get Gradebook Assignments from Aeries

        .DESCRIPTION
        The Get-AeriesGradebookAssignment cmdlet is used to retrieve a specific or all Gradebook Assignments from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignment -GradebookNumber 4487750
        This will return the Gradebook Assignments for Gradebook Number 4487750 from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignment -GradebookNumber 4487750 -AssignmentNumber 1
        This will return all Gradebooks associated to Staff ID 994605 from Aeries

        .EXAMPLE
        Get-AeriesGradebookAssignment -AssignmentUniqueID "059FE76C-05C1-40DD-8B95-1FFA961DE488"
        This will return the Gradebooks associated to School Code 994 and Section Number 43 from Aeries
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
        $AssignmentUniqueID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/gradebooks"

        if (![string]::IsNullOrWhiteSpace($AssignmentUniqueID)) {
            $Endpoint += "/Assignments/$AssignmentUniqueID"
        }
elseif ($GradebookNumber -gt 0) {
            $Endpoint += "/$GradebookNumber/assignments/$AssignmentNumber"
        }
else {
            Throw "Must provide at least AssignmentUniqueID or GradebookNumber"
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
