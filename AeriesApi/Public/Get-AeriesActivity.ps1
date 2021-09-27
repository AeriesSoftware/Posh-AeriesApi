function Get-AeriesActivity
{
    <#
        .SYNOPSIS
        Get Activities and Awards from Aeries

        .DESCRIPTION
        The Get-AeriesActivity cmdlet is used to retrieve Activities and Awards for all or a specific Student from Aeries

        .EXAMPLE
        Get-AeriesActivity -SchoolCode 994
        This will return all Activities and Awards for all Students at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesActivity -SchoolCode 994 -Code "600"
        This will return all Activities and Awards for all Students at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesActivity -SchoolCode 994 -StudentID 99400001
        This will return all Activities and Awards for the given Student ID at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesActivity -SchoolCode 994 -StudentID 99400001 -Code "600"
        This will return all Activities and Awards for the given Student ID at the given School Code from Aeries

        .EXAMPLE
        Get-AeriesActivity -SchoolCode 994 -StudentID 99400001 -Sequence 7
        This will return an Activity or Award for the given Sequence Number, Student ID and School Code from Aeries
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
        # Used to get Activity with a specific code
        [Parameter(Mandatory=$false)]
        [string]
        $Code,
        # Used to get a specific Activity
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Sequence
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200

        # Go from most restrictive to least restrictive
        if (($StudentID -gt 0) -and ($Sequence -gt 0)) {
            # Student ID and Sequence were provided
            $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/activities/$Sequence"
        }
        elseif (($StudentID -gt 0) -and (![string]::IsNullOrWhiteSpace($Code))) {
            # Student ID and Code were provided
            $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/activities/code/$Code"
        }
        elseif ($StudentID -gt 0) {
            # Student ID was provided
            $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/activities"
        }
        elseif (![string]::IsNullOrWhiteSpace($Code)) {
            # Code provided
            $Endpoint = "v5/schools/$SchoolCode/activities/code/$Code"
        }
        else {
            # Nothing was provided, so get for entire School
            $Endpoint = "v5/schools/$SchoolCode/activities"
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
