function New-AeriesActivity
{
    <#
        .SYNOPSIS
        Add an Activity/Award to Aeries

        .DESCRIPTION
        The New-AeriesActivity cmdlet is used to create an Activity/Award in Aeries for a given StudentID at the SchoolCode

        .EXAMPLE
        New-AeriesActivity -SchoolCode 994 -StudentID 99400001 -TypeCode "1" -DateEntered "2021-10-26" -Comment "This was added via PowerShell!"
        This will create an Activity in Aeries for StudentID 99400001 at SchoolCode 994
    #>
    [Alias("Add-AeriesActivity")]

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

        [Parameter(Mandatory=$false)]
        [datetime]
        $DateEntered,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $TypeCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $ActivityOrAwardCode,

        [ValidateLength(1, 40)]
        [Parameter(Mandatory=$false)]
        [string]
        $Name,

        [Parameter(Mandatory=$false)]
        [datetime]
        $StartDate,

        [Parameter(Mandatory=$false)]
        [datetime]
        $EndDate,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [decimal]
        $Hours = -1,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $ReasonCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $SeasonCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $StatusCode,

        [Parameter(Mandatory=$false)]
        [datetime]
        $TransportationDate,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $TransportationStatusCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $CareerPathwayCode,

        [Parameter(Mandatory=$false)]
        [string]
        $Comment
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/activities"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($DateEntered)) {
            <# Datetime Value #>
            $Body.DateEntered = $DateEntered.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($TypeCode)) {
            <# String Value #>
            $Body.TypeCode = $TypeCode
        }

        If (![string]::IsNullOrWhiteSpace($ActivityOrAwardCode)) {
            <# String Value #>
            $Body.ActivityOrAwardCode = $ActivityOrAwardCode
        }

        If (![string]::IsNullOrWhiteSpace($Name)) {
            <# String Value #>
            $Body.Name = $Name
        }

        If (![string]::IsNullOrWhiteSpace($StartDate)) {
            <# Datetime Value #>
            $Body.StartDate = $StartDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($EndDate)) {
            <# Datetime Value #>
            $Body.EndDate = $EndDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($Hours) -and ($Hours -gt -1)) {
            <# Decimal Value #>
            $Body.Hours = $Hours
        }

        If (![string]::IsNullOrWhiteSpace($ReasonCode)) {
            <# String Value #>
            $Body.ReasonCode = $ReasonCode
        }

        If (![string]::IsNullOrWhiteSpace($SeasonCode)) {
            <# String Value #>
            $Body.SeasonCode = $SeasonCode
        }

        If (![string]::IsNullOrWhiteSpace($StatusCode)) {
            <# String Value #>
            $Body.StatusCode = $StatusCode
        }

        If (![string]::IsNullOrWhiteSpace($TransportationDate)) {
            <# Datetime Value #>
            $Body.TransportationDate = $TransportationDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($TransportationStatusCode)) {
            <# String Value #>
            $Body.TransportationStatusCode = $TransportationStatusCode
        }

        If (![string]::IsNullOrWhiteSpace($CareerPathwayCode)) {
            <# String Value #>
            $Body.CareerPathwayCode = $CareerPathwayCode
        }

        If (![string]::IsNullOrWhiteSpace($Comment)) {
            <# String Value #>
            $Body.Comment = $Comment
        }

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
