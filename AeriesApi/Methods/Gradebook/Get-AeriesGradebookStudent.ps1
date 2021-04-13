function Get-AeriesGradebookStudent
{
    <#  
        .SYNOPSIS
        Get Gradebook Students from Aeries
        
        .DESCRIPTION
        The Get-AeriesGradebookStudent cmdlet is used to retrieve a specific or all Gradebook Students from Aeries

        .EXAMPLE
        Get-AeriesGradebookStudent -GradebookNumber 4487750 -Term "Y"
        This will return the Gradebook Students for Gradebook Number 4487750 and Term "Y" from Aeries

        .EXAMPLE
        Get-AeriesGradebookStudent -GradebookNumber 4487750 -Term "Y" -StudentID 99400015
        This will return the Gradebook Student for Gradebook Number 4487750, Term "Y" and Student ID 99400015 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $GradebookNumber,
        [ValidateLength(1,1)]
        [Parameter(Mandatory=$true)]
        [string]
        $Term,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/gradebooks/$GradebookNumber/$Term/students/$StudentID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
