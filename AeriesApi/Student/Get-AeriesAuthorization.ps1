function Get-AeriesAuthorization
{
    <#  
        .SYNOPSIS
        Get Authorizations from Aeries
        
        .DESCRIPTION
        The Get-AeriesAuthorization cmdlet is used to retrieve Authorizations for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesAuthorization -SchoolCode 994
        This will return all Authorizations for all Students at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesAuthorization -SchoolCode 994 -StudentID 99400001
        This will return all Authorizations for the given Student ID at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Sequence 5
        This will return specific Authorization for the given Student ID at the given School Code from Aeries
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
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Sequence
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        # v5/schools/$SchoolCode/authorizations
        # is the same as
        # v5/schools/$SchoolCode/students/0/authorizations
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/authorizations"

        if ($Sequence -gt 0) {
            $Endpoint += "/$Sequence"
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
