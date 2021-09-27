function Get-AeriesReportCardMarkingPeriod
{
    <#
        .SYNOPSIS
        Get Report Card Marking Periods from Aeries

        .DESCRIPTION
        The Get-AeriesReportCardMarkingPeriod cmdlet is used to retrieve Repot Card Marking Periods for a specific School from Aeries

        .EXAMPLE
        Get-AeriesReportCardMarkingPeriod -SchoolCode 994
        This will return all Report Card Marking Periods from Aeries at School 994
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
        $Endpoint = "v5/schools/$SchoolCode/ReportCardMarkingPeriods"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
