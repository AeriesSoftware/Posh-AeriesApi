function Get-AeriesContact
{
    <#  
        .SYNOPSIS
        Get Contacts from Aeries
        
        .DESCRIPTION
        The Get-AeriesContact cmdlet is used to retrieve Contacts for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesContact -SchoolCode 994
        This will return all Contacts for all Students at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesContact -SchoolCode 994 -StudentID 99400001
        This will return all Contacts for the given Student ID at the given School Code from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $SchoolCode,
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/contacts/$StudentID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
