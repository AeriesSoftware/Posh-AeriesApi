function Get-AeriesAttendanceHistoryCodes
{
    <#  
        .SYNOPSIS
        Get Attendace History Codes from Aeries
        
        .DESCRIPTION
        The Get-AeriesAttendanceHistoryCodes cmdlet is used to retrieve all of Attendace History Codes from Aeries

        .EXAMPLE
        Get-AeriesAttendanceHistoryCodes -SchoolCode 994
        This will return all Attendace History Codes from Aeries for School Code 994

        .EXAMPLE
        Get-AeriesAttendanceHistoryCodes -SchoolCode 994 -StartYear 2020
        This will return all Attendace History Codes from Aeries for Academic Year 2020-2021 at School Code 994
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        # Start Year (Will format to be Academic Year of YYYY-YYYY)
        [ValidateRange(1000,9999)]
        [Parameter(Mandatory=$false)]
        [int]
        $StartYear
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/AttendanceHistory/AbsenceCodes"

        if ($StartYear -gt 0) {
            $Endpoint += "/year/$StartYear-$($StartYear+1)"
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
