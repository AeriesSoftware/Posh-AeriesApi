function Get-AeriesSection
{
    <#  
        .SYNOPSIS
        Get Sections from Aeries
        
        .DESCRIPTION
        The Get-AeriesSection cmdlet is used to retrieve a filtered set or all Sections from Aeries

        .EXAMPLE
        Get-AeriesSection -SchoolCode 994
        This will return all Sections for School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesSection -SchoolCode 994 -SectionNumber 43
        This will return the Sections for Section 43 from School Code 994 from Aeries
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
        $Endpoint = "v5/schools/$SchoolCode/sections/$SectionNumber"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
