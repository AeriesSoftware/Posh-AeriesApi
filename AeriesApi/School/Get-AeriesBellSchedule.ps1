function Get-AeriesBellSchedule
{
    <#  
        .SYNOPSIS
        Get Bell Schedules from Aeries for a specific School
        
        .DESCRIPTION
        The Get-AeriesBellSchedule cmdlet is used to retrieve Bell Schedules from a specific School from Aeries

        .EXAMPLE
        Get-AeriesBellSchedule -SchoolCode 994
        This will return Bell Schedules for School 994 from Aeries

        .EXAMPLE
        Get-AeriesBellSchedule -SchoolCode 994 -Date (Get-Date "2021-04-08")
        This will return Bell Schedules for School 994 from Aeries on the specified Date
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        # Specific date to pull Bell Schedule for
        [Parameter(Mandatory=$false)]
        [datetime]
        $Date
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/BellSchedule"

        if ($Date -ne $null) {
            $DateString = $Date.ToString("yyyy-MM-dd")
            $EncodedDate = [System.Web.HTTPUtility]::UrlEncode($DateString)
            $Endpoint += "/date/" + $EncodedDate
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
