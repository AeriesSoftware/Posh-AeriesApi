function Get-AeriesStudentReportCard
{
    <#  
        .SYNOPSIS
        Get one or more Students Report Cards from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentReportCard cmdlet is used to retrieve Report Cards for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesStudentReportCard -SchoolCode 994
        This will return all Student Report Cards from Aeries at School 994

        .EXAMPLE
        Get-AeriesStudentReportCard -SchoolCode 994 -StudentID 99400001
        This will return the Report Cards for School 994 and Student ID 99400001
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
        $Endpoint = "v5/schools/$SchoolCode/ReportCard/$StudentId"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
