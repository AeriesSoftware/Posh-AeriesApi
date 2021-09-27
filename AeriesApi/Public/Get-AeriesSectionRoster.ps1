function Get-AeriesSectionRoster
{
    <#
        .SYNOPSIS
        Get Section Class Roster from Aeries

        .DESCRIPTION
        The Get-AeriesSectionRoster cmdlet is used to retrieve a filtered set or all Section Class Roster from Aeries

        .EXAMPLE
        Get-AeriesSectionRoster -SchoolCode 994 -SectionNumber 43
        This will return the Section Class Roster for Section 43 from School Code 994 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SectionNumber
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/sections/$SectionNumber/students"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
