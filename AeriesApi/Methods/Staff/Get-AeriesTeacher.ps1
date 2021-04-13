function Get-AeriesTeacher
{
    <#  
        .SYNOPSIS
        Get Teacher record from Aeries
        
        .DESCRIPTION
        The Get-AeriesTeacher cmdlet is used to retrieve one or all Teacher records per School Code from Aeries

        .EXAMPLE
        Get-AeriesTeacher -SchoolCode 994
        This will return all Teacher records for School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesTeacher -SchoolCode 994 -TeacherNumber 605
        This will return the Teacher record for School Code 994 and Teacher Number 605 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber = "-1"
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/teachers"

        if ($TeacherNumber -ge 0) {
            $Endpoint += "/$TeacherNumber"
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
