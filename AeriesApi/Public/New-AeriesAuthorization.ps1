function New-AeriesAuthorization
{
    <#
        .SYNOPSIS
        Add a new Authorization in Aeries

        .DESCRIPTION
        The New-AeriesAuthorization cmdlet is used to add an Authorization in Aeries

        .EXAMPLE
        New-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Comment "This was added with PowerShell"
        This will add an Authorization to Aeries
    #>

    [Alias("Add-AeriesAuthorization")]

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
        $MiscCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $StatusCode,

        [Parameter(Mandatory=$false)]
        [datetime]
        $StatusDate,

        [Parameter(Mandatory=$false)]
        [datetime]
        $EffectiveEndDate,

        [Parameter(Mandatory=$false)]
        [string]
        $Comment,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $TestAdministration,

        [ValidateLength(1, 255)]
        [Parameter(Mandatory=$false)]
        [string]
        $Source
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/authorizations"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($DateEntered)) {
            <# Datetime Value #>
            $Body.DateEntered = $DateEntered.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($TypeCode)) {
            <# String value #>
            $Body.TypeCode = $TypeCode
        }

        If (![string]::IsNullOrWhiteSpace($MiscCode)) {
            <# String value #>
            $Body.MiscCode = $MiscCode
        }

        If (![string]::IsNullOrWhiteSpace($StatusCode)) {
            <# String value #>
            $Body.StatusCode = $StatusCode
        }

        If (![string]::IsNullOrWhiteSpace($StatusDate)) {
            <# Datetime value #>
            $Body.StatusDate = $StatusDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($EffectiveEndDate)) {
            <# Datetime value #>
            $Body.EffectiveEndDate = $EffectiveEndDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($Comment)) {
            <# String value #>
            $Body.Comment = $Comment
        }

        If (![string]::IsNullOrWhiteSpace($TestAdministration)) {
            <# String value #>
            $Body.TestAdministration = $TestAdministration
        }

        If (![string]::IsNullOrWhiteSpace($Source)) {
            <# String value #>
            $Body.Source = $Source
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
