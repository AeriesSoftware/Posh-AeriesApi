function Get-AeriesStaffClass
{
    <#  
        .SYNOPSIS
        Get Staff Classes/Sections from Aeries
        
        .DESCRIPTION
        The Get-AeriesStaffClass cmdlet is used to retrieve a filtered set or all Staff Classes/Sections from Aeries

        .EXAMPLE
        Get-AeriesStaffClass -StaffID 994605
        This will return all Classes/Sections for Staff ID 994605 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int]
        $StaffID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/staff/$StaffID/classes"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
