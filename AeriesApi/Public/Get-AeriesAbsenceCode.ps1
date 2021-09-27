function Get-AeriesAbsenceCode
{
    <#
        .SYNOPSIS
        Get one or all Absence Codes from Aeries for a specific School

        .DESCRIPTION
        The Get-AeriesAbsenceCode cmdlet is used to retrieve one or all Absence Codes for a specific School from Aeries

        .EXAMPLE
        Get-AeriesAbsenceCode -SchoolCode 994
        This will return all Absence Codes for School 994 from Aeries

        .EXAMPLE
        Get-AeriesAbsenceCode -SchoolCode 994 -AbsenceCode "A"
        This will return the Absence Code "A" for School 994 from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        # Specific Absence Code to pull
        [ValidateLength(1,1)]
        [Parameter(Mandatory=$false)]
        [string]
        $AbsenceCode
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/AbsenceCodes/$AbsenceCode"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
