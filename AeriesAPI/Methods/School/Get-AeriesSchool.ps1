function Get-AeriesSchool
{
    <#  
        .SYNOPSIS
        Get a specific school or all schools from Aeries
        
        .DESCRIPTION
        The Get-AeriesSchoolInformation cmdlet is used to retrieve a specific school or all schools from Aeries

        .EXAMPLE
        Get-AeriesSchoolInformation
        This will return all schools from Aeries

        .EXAMPLE
        Get-AeriesSchoolInformation -SchoolCode 994
        This will return the requested school from Aeries
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)]
        [Int16]
        $SchoolCode = 0
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools"

        if ($SchoolCode -gt 0) {
            $Endpoint += "/$SchoolCode"
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
