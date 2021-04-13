function Get-AeriesGradebook
{
    <#  
        .SYNOPSIS
        Get something from Aeries
        
        .DESCRIPTION
        The Get-AeriesGradebook cmdlet is used to retrieve a specific or all Gradebooks from Aeries

        .EXAMPLE
        Get-AeriesGradebook -GradebookNumber 4487750
        This will return the Gradebook with Number 4487750 from Aeries

        .EXAMPLE
        Get-AeriesGradebook -StaffID 994605
        This will return all Gradebooks associated to Staff ID 994605 from Aeries

        .EXAMPLE
        Get-AeriesGradebook -SchoolCode 994 -SectionNumber 43
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
        $StaffID,
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $SectionNumber
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5"

        if ($GradebookNumber -gt 0) {
            $Endpoint += "/gradebooks/$GradebookNumber"
        }
        elseif ($StaffID -gt 0) {
            $Endpoint += "/staff/$StaffID/gradebooks"
        }
        elseif (($SchoolCode -gt 0) -and ($SectionNumber -gt 0)) {
            $Endpoint += "/schools/$SchoolCode/sections/$SectionNumber/gradebooks"
        }
        else {
            Throw "Must provide GradebookNumber, StaffID or a SchoolCode and SectionNumber"
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
