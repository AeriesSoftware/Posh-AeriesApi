function Get-AeriesStudentPicture
{
    <#
        .SYNOPSIS
        Get Student Picture from Aeries

        .DESCRIPTION
        The Get-AeriesStudentPicture cmdlet is used to retrieve Student Picture for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesStudentPicture -SchoolCode 994
        This will return all Student Picture for all Students at the specified School Code from Aeries

        .EXAMPLE
        Get-AeriesStudentPicture -SchoolCode 994 -StudentID 99400001
        This will return all Student Picture for the specific Student ID at the specified School Code from Aeries
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
        $Endpoint = "v5/schools/$SchoolCode/StudentPictures/$StudentID"

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
