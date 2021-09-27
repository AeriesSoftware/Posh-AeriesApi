function Get-AeriesSchoolTerms
{
    <#
        .SYNOPSIS
        Get Terms from Aeries for a specific School

        .DESCRIPTION
        The Get-AeriesSchoolTerms cmdlet is used to retrieve a specific schools terms from Aeries

        .EXAMPLE
        Get-AeriesSchoolTerms -SchoolCode 994
        This will return Terms for School 994 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/terms"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
