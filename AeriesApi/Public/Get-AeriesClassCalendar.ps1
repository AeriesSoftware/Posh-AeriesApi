function Get-AeriesClassCalendar
{
    <#
        .SYNOPSIS
        Get Class Calendars from Aeries

        .DESCRIPTION
        The Get-AeriesClassCalendar cmdlet is used to retrieve a filtered set or all Class Calendars from Aeries

        .EXAMPLE
        Get-AeriesClassCalendar -SchoolCode 894
        This will return all Class Calendars for School Code 894 from Aeries

        .EXAMPLE
        Get-AeriesClassCalendar -SchoolCode 894 -StartYear 2020
        This will return all Class Calendars for School Code 894 that apply to Academic Year 2020-2021 from Aeries

        .EXAMPLE
        Get-AeriesClassCalendar -SchoolCode 894 -Sequence 14
        This will return the Class Calendar with Sequence 14 from School Code 894 from Aeries

        .EXAMPLE
        Get-AeriesClassCalendar -SchoolCode 894 -Sequence 14 -GetDates
        This will return the Dates for Class Calendar with Sequence 14 from School Code 894 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Sequence,
        # Switch for pulling Dates for a Class Calendar
        [Parameter(Mandatory=$false)]
        [switch]
        $GetDates,
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
        $Endpoint = "v5/schools/$SchoolCode/classcalendars"

        if ($GetDates -and ($Sequence -gt 0)) {
            $Endpoint += "/$Sequence/dates"
        }
        elseif ($Sequence -gt 0) {
            $Endpoint += "/$Sequence"
        }
        elseif ($StartYear -gt 0) {
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
