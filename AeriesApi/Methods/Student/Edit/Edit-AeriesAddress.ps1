function Edit-AeriesAddress
{
    <#  
        .SYNOPSIS
        Edit a Students Address in Aeries
        
        .DESCRIPTION
        The Edit-AeriesAddress cmdlet is used to edit a Students Address in Aeries
        If UpdateType is "Change", an EffectiveStartDate must be specified. If one is not specified, the current datetime will be used

        .EXAMPLE
        Edit-AeriesAddress -StudentID 99400001 -UpdateType "Change" -MailingAddress "770 The City Dr S #6500" -MailingAddressCity "Orange" -MailingAddressState "CA" -MailingAddressZipCode "92868"
        This will update Student ID 99400001 to have the Address of "770 The City Dr S #6500, Orange, CA 92868"
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

        [ValidateSet("Correction", "Change")]
        [Parameter(Mandatory=$true)]
        [string]
        $UpdateType,

        [Parameter(Mandatory=$false)]
        [datetime]
        $EffectiveStartDate = (Get-Date),

        [ValidateLength(1, 55)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailingAddress,

        [ValidateLength(1, 30)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailingAddressCity,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailingAddressState,

        [ValidateLength(1, 5)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailingAddressZipCode,

        [ValidateLength(1, 4)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailingAddressZipExt,

        [ValidateLength(1, 55)]
        [Parameter(Mandatory=$false)]
        [string]
        $ResidenceAddress,

        [ValidateLength(1, 30)]
        [Parameter(Mandatory=$false)]
        [string]
        $ResidenceAddressCity,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $ResidenceAddressState,

        [ValidateLength(1, 5)]
        [Parameter(Mandatory=$false)]
        [string]
        $ResidenceAddressZipCode,

        [ValidateLength(1, 4)]
        [Parameter(Mandatory=$false)]
        [string]
        $ResidenceAddressZipExt
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/UpdateStudentAddress/$StudentID"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($MailingAddress)) {
            <# String value #>
            $Body.MailingAddress = $MailingAddress
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressCity)) {
            <# String value #>
            $Body.MailingAddressCity = $MailingAddressCity
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressState)) {
            <# String value #>
            $Body.MailingAddressState = $MailingAddressState
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressZipCode)) {
            <# String value #>
            $Body.MailingAddressZipCode = $MailingAddressZipCode
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressZipExt)) {
            <# String value #>
            $Body.MailingAddressZipExt = $MailingAddressZipExt
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddress)) {
            <# String value #>
            $Body.ResidenceAddress = $ResidenceAddress
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressCity)) {
            <# String value #>
            $Body.ResidenceAddressCity = $ResidenceAddressCity
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressState)) {
            <# String value #>
            $Body.ResidenceAddressState = $ResidenceAddressState
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressZipCode)) {
            <# String value #>
            $Body.ResidenceAddressZipCode = $ResidenceAddressZipCode
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressZipExt)) {
            <# String value #>
            $Body.ResidenceAddressZipExt = $ResidenceAddressZipExt
        }

        If (![string]::IsNullOrWhiteSpace($UpdateType)) {
            <# String value #>
            $Body.CorrectionOrChange = $UpdateType
            If ($UpdateType -eq "Change") {
                <# Only send Effect Start Date on Change and not Correction #>
                $Body.EffectiveStartDate = $EffectiveStartDate.ToString("yyyy-MM-dd")
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
