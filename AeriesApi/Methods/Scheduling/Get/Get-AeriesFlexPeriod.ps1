function Get-AeriesFlexPeriod
{
    <#  
        .SYNOPSIS
        Get Flex Periods from Aeries
        
        .DESCRIPTION
        The Get-AeriesFlexPeriod cmdlet is used to retrieve a filtered set or all Flex Periods from Aeries

        .EXAMPLE
        Get-AeriesFlexPeriod -SchoolCode 894
        This will return all Flex Periods for School Code 894 from Aeries

        .EXAMPLE
        Get-AeriesFlexPeriod -SchoolCode 894 -StartYear 2020
        This will return all Flex Periods for School Code 894 that apply to Academic Year 2020-2021 from Aeries

        .EXAMPLE
        Get-AeriesFlexPeriod -SchoolCode 894 -Sequence 2
        This will return the Flex Period with Sequence 2 from School Code 894 from Aeries
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
        $Endpoint = "v5/schools/$SchoolCode/flexperiods"

        if ($Sequence -gt 0) {
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
