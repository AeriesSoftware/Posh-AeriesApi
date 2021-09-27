function Get-AeriesStudentDataChanges
{
    <#
        .SYNOPSIS
        Get Student Data Changes from Aeries

        .DESCRIPTION
        The Get-AeriesStudentDataChanges cmdlet is used to retrieve all Student Data Changes from Aeries since a given date

        .EXAMPLE
        Get-AeriesStudentDataChanges -DataArea "student" -DateTime (Get-Date "2021-04-09 9:00AM")
        This will return the requested something from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateSet("student","contact","program","test","class","enrollment")]
        [Parameter(Mandatory=$true)]
        [string]
        $DataArea,
        # Date Object to use for filters
        [Parameter(Mandatory=$true)]
        [datetime]
        $DateTime
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/StudentDataChanges/$DataArea"

        $Endpoint += "/" + $DateTime.ToString("yyyy/MM/dd/HH/mm")
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
