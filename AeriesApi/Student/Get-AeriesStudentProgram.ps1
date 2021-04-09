function Get-AeriesStudentProgram
{
    <#  
        .SYNOPSIS
        Get Programs from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentProgram cmdlet is used to retrieve Programs for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesStudentProgram -SchoolCode 994
        This will return all Programs for all Students at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesStudentProgram -SchoolCode 994 -StudentID 99400001
        This will return all Programs for the given Student ID at the given School Code from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
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
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/programs"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
