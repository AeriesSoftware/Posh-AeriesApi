function Get-AeriesStudentGraduationStatus
{
    <#  
        .SYNOPSIS
        Get one or more Students Graduation Status from Aeries
        
        .DESCRIPTION
        The Get-AeriesStudentGraduationStatus cmdlet is used to retrieve Graduation Status for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesStudentGraduationStatus -SchoolCode 994
        This will return all Student Graduation Status from Aeries at School 994

        .EXAMPLE
        Get-AeriesStudentGraduationStatus -SchoolCode 994 -StudentID 99400001
        This will return the Graduation Status for School 994 and Student ID 99400001
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
        $Endpoint = "v5/schools/$SchoolCode/GraduationStatusSummary"

        if (![string]::IsNullOrWhiteSpace($Grade)) {
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
