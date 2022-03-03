function Send-AeriesAlert
{
    <#
        .SYNOPSIS
        Send an alert to a User/Teacher/Parent/Student in Aeries

        .DESCRIPTION
        The Send-AeriesAlert cmdlet is used to send Alerts in Aeries
        PageID can be found by searching a pages Source Code in your browser for "data-pageid"
        Ex: data-pageid="100019191"

        .EXAMPLE
        Send-AeriesAlert -SchoolCode 994 -RecipientID 1 -RecipientType "User" -Comment "This is an amazing Alert!"
        This will send an Alert to the User with UID 1 to Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $RecipientID,

        [ValidateSet("Parent","Student","Teacher","User")]
        [Parameter(Mandatory=$true)]
        [string]
        $RecipientType,

        [Parameter(Mandatory=$true)]
        [string]
        $Comment,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentNumber = -1,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $StudentID = -1,

        [Parameter(Mandatory=$false)]
        [string]
        $OtherID,

        [Parameter(Mandatory=$false)]
        [string]
        $PageID = "0",

        [ValidateSet("Alert","ActionAlert")]
        [Parameter(Mandatory=$false)]
        [string]
        $AlertType = "Alert"
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/SendAlert"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        $Body.SchoolCode = $SchoolCode
        $Body.RecipientID = $RecipientID
        $Body.RecipientType = $RecipientType
        $Body.Comment = $Comment
        $Body.AlertType = $AlertType

        If ($StudentNumber -gt -1) {
            <# int value #>
            $Body.StudentNumber = $StudentNumber
        }

        If ($StudentID -gt -1) {
            <# int value #>
            $Body.StudentID = $StudentID
        }

        If (![string]::IsNullOrWhiteSpace($OtherID)) {
            <# String value #>
            $Body.OtherID = $OtherID
        }

        If (![string]::IsNullOrWhiteSpace($PageID)) {
            <# string value #>
            $Body.PageID = $PageID
        }

        If ($AlertType -eq "ActionAlert") {
            If (($StudentID -eq -1) -and ($StudentNumber -eq -1)) {
                Throw "Must provide a StudentID or StudentNumber when sending an ActionAlert"
            }
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
