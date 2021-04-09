function Get-AeriesSchoolCalendar
{
    <#  
        .SYNOPSIS
        Get Terms from Aeries for a specific School
        
        .DESCRIPTION
        The Get-AeriesSchoolCalendar cmdlet is used to retrieve a specific schools terms from Aeries

        .EXAMPLE
        Get-AeriesSchoolCalendar -SchoolCode 994
        This will return Terms for School 994 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $SchoolCode = 0
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/calendar"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
