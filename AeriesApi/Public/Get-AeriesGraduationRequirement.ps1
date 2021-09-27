function Get-AeriesGraduationRequirement
{
    <#
        .SYNOPSIS
        Get Graduation Requirements from Aeries

        .DESCRIPTION
        The Get-AeriesGraduationRequirement cmdlet is used to retrieve Graduation Requirements for a specific School from Aeries

        .EXAMPLE
        Get-AeriesGraduationRequirement -SchoolCode 994
        This will return Graduation Requirements from Aeries at School 994
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/GraduationRequirements"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
