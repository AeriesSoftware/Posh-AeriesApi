function Get-AeriesSchedulingSection
{
    <#
        .SYNOPSIS
        Get Scheduling Sections from Aeries

        .DESCRIPTION
        The Get-AeriesSchedulingSection cmdlet is used to retrieve a filtered set or all Scheduling Sections from Aeries

        .EXAMPLE
        Get-AeriesSchedulingSection -SchoolCode 994
        This will return all Scheduling Sections for School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesSchedulingSection -SchoolCode 994 -SectionNumber 43
        This will return the Scheduling Sections for Section 43 from School Code 994 from Aeries
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
        $SectionNumber
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/scheduling/sections"

        if ($SectionNumber -gt 0) {
            $Endpoint =+ "/$SectionNumber"
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
