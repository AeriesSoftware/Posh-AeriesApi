function Get-AeriesStudent
{
    <#
        .SYNOPSIS
        Get one or more Students from Aeries

        .DESCRIPTION
        The Get-AeriesStudent cmdlet is used to retrieve one or more Students from Aeries

        .EXAMPLE
        Get-AeriesStudent -SchoolCode 994
        This will return all Students from Aeries at School 994

        .EXAMPLE
        Get-AeriesStudent -SchoolCode 994 -Grade 9
        This will return all Stduents from Aeries at School 994 and Grade 9
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
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentNumber,
        [ValidateSet("-2","-1","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18")]
        [Parameter(Mandatory=$false)]
        [string]
        $Grade,
        # The Record-Count value of the first record to return (inclusive)
        [Parameter(Mandatory=$false)]
        [int]
        $StartingRecord,
        # The Record-Count value of the last record to return (inclusive)
        [Parameter(Mandatory=$false)]
        [int]
        $EndingRecord
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/students"

        if ($StudentNumber -gt 0) {
            $Endpoint += "/sn/$StudentNumber"
        }
        elseif (![string]::IsNullOrWhiteSpace($Grade)) {
            $Endpoint += "/grade/$Grade"
        }
        else {
            $Endpoint += "/$StudentID"
        }

        $QueryParameters = @{}
        if ($StartingRecord -ge 1) {
            $QueryParameters += @{
                "StartingRecord" = $StartingRecord
            }
        }
        if ($EndingRecord -ge 1) {
            $QueryParameters += @{
                "EndingRecord" = $EndingRecord
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
