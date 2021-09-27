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
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID,
        # Program to limit results to
        [Parameter(Mandatory=$false)]
        [string]
        $Code
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/programs"

        $QueryParameters = @{}
        if ($Code -ge 1) {
            $QueryParameters += @{
                "code" = $Code
            }
        }
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -QueryParameters $QueryParameters)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
