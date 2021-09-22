function Get-AeriesStaff
{
    <#  
        .SYNOPSIS
        Get Staff records from Aeries
        
        .DESCRIPTION
        The Get-AeriesStaff cmdlet is used to retrieve one or all Staff records from Aeries

        .EXAMPLE
        Get-AeriesStaff
        This will return all Staff records from Aeries

        .EXAMPLE
        Get-AeriesStaff -StaffID 994605
        This will return the Staff record for Staff ID 994605 from Aeries

        .EXAMPLE
        Get-AeriesStaff -HRID "SomeOtherID"
        This will return the Staff record for HR ID "SomeOtherID" from Aeries
    #>

    <#
        TODO: Implement parameter filtering
        https://support.aeries.com/support/solutions/articles/14000113687
    #>
    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StaffID,
        [Parameter(Mandatory=$false)]
        [string]
        $HRID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/staff"

        if ($StaffID -gt 0) {
            $Endpoint += "/$StaffID"
        }
        elseif (![string]::IsNullOrWhiteSpace($HRID)) {
            $Endpoint += "/hrid/$HRID"
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
