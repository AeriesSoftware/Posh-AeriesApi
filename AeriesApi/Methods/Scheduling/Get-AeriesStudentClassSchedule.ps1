function Get-AeriesStudentClassSchedule
{
    <#  
        .SYNOPSIS
        Get Student Class Schedules from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentClassSchedule cmdlet is used to retrieve a filtered set or all Student Class Schedules from Aeries

        .EXAMPLE
        Get-AeriesStudentClassSchedule -SchoolCode 994
        This will return all Student Class Schedules for School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesStudentClassSchedule -SchoolCode 994 -StudentID 99400001
        This will return the Student Class Schedules for Student ID 99400001 from School Code 994 from Aeries
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
        $Endpoint = "v5/schools/$SchoolCode/classes/$StudentID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
