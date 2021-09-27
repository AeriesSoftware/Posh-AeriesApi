function Get-AeriesDistrictSupplemental
{
    <#
        .SYNOPSIS
        Get District Supplemental from Aeries

        .DESCRIPTION
        The Get-AeriesDistrictSupplemental cmdlet is used to retrieve District Supplemental for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesDistrictSupplemental -SchoolCode 994
        This will return all District Supplemental for all Students at the specified School Code from Aeries

        .EXAMPLE
        Get-AeriesDistrictSupplemental -SchoolCode 994 -StudentID 99400001
        This will return all District Supplemental for the specific Student ID at the specified School Code from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/DistrictSupplemental/$StudentID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
