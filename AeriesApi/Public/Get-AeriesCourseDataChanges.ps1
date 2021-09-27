function Get-AeriesCourseDataChanges
{
    <#
        .SYNOPSIS
        Get Course Data Changes from Aeries

        .DESCRIPTION
        The Get-AeriesCourseDataChanges cmdlet is used to retrieve all Course Data Changes from Aeries since a given date

        .EXAMPLE
        Get-AeriesCourseDataChanges -DateTime (Get-Date "2021-04-09 9:00AM")
        This will return the requested Course Data Changes from Aeries
    #>

    [CmdletBinding()]
    param (
        # Date Object to use for filters
        [Parameter(Mandatory=$true)]
        [datetime]
        $DateTime
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/CourseDataChanges/" + $DateTime.ToString("yyyy/MM/dd/HH/mm")
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
