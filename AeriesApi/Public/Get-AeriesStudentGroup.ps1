function Get-AeriesStudentGroup
{
    <#
        .SYNOPSIS
        Get Student Groups from Aeries

        .DESCRIPTION
        The Get-AeriesStudentGroup cmdlet is used to retrieve Student Groups for all Students from Aeries

        .EXAMPLE
        Get-AeriesStudentGroup -SchoolCode 994
        This will return all Student Groups for all Students at the specified School Code from Aeries
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
        $Endpoint = "v5/schools/$SchoolCode/StudentGroups"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
