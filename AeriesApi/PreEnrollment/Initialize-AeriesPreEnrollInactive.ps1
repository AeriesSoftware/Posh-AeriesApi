function Initialize-AeriesPreEnrollInactive
{
    <#  
        .SYNOPSIS
        Initialize a Pre-Enrollment for an Active Student
        
        .DESCRIPTION
        The Initialize-AeriesPreEnrollActive cmdlet is used to Initialize a Pre-Enrollment record for a given Student ID in Aeries

        .EXAMPLE
        Initialize-AeriesPreEnrollActive -SchoolCode 994 -StudentID 99400001
        This will initialize a Pre Enrollment for the given Student ID in Aeries
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
        $StudentID
    )

    Begin {
        Throw "$($MyInvocation.MyCommand): Does not function in dev environment. Disabling for now"
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/PreEnrollInactiveStudent/$StudentID/$SchoolCode"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
