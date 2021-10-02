function Edit-AeriesContact
{
    <#
        .SYNOPSIS
        Edit a Contact in Aeries

        .DESCRIPTION
        The Edit-AeriesContact cmdlet is used to edit a Contact in Aeries for a given StudentID and Sequence Number

        .EXAMPLE
        Edit-AeriesContact -StudentID 99400001 -Sequence 1 -FirstName "Aeries" -LastName "Software"
        This will create a Contact in Aeries for StudentID 99400001
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $Sequence,

        [ValidateLength(0, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailingName,

        [ValidateLength(0, 5)]
        [Parameter(Mandatory=$false)]
        [string]
        $NamePrefix,

        [ValidateLength(0, 20)]
        [Parameter(Mandatory=$false)]
        [string]
        $FirstName,

        [ValidateLength(0, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $LastName,

        [ValidateLength(0, 20)]
        [Parameter(Mandatory=$false)]
        [string]
        $MiddleName,

        [ValidateLength(0, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $NameSuffix,

        [ValidateLength(0, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $Address,

        [ValidateLength(0, 24)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressCity,

        [ValidateLength(0, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressState,

        [ValidateLength(0, 5)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressZip,

        [ValidateLength(0, 4)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressZipExt,

        [ValidateLength(0, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $RelationshipToStudentCode,

        [Parameter(Mandatory=$false)]
        [string]
        $HomePhone,

        [Parameter(Mandatory=$false)]
        [string]
        $WorkPhone,

        [ValidateLength(0, 5)]
        [Parameter(Mandatory=$false)]
        [string]
        $WorkPhoneExt,

        [Parameter(Mandatory=$false)]
        [string]
        $CellPhone,

        [ValidateLength(0, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $EmailAddress,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int]
        $ContactOrder = -1,

        [ValidateLength(0, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $MiscCode,

        [Parameter(Mandatory=$false)]
        [System.Boolean]
        $PrimaryContact,

        [ValidateLength(0, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $MailTagCode,

        [Parameter(Mandatory=$false)]
        [System.Boolean]
        $AccessToPortal,

        [Parameter(Mandatory=$false)]
        [System.Boolean]
        $LivesWithStudentIndicator
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/UpdateContact/$StudentID/$Sequence"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($MailingName)) {
            <# String Value #>
            $Body.MailingName = $MailingName
        }

        If (![string]::IsNullOrWhiteSpace($NamePrefix)) {
            <# String Value #>
            $Body.NamePrefix = $NamePrefix
        }

        If (![string]::IsNullOrWhiteSpace($FirstName)) {
            <# String Value #>
            $Body.FirstName = $FirstName
        }

        If (![string]::IsNullOrWhiteSpace($LastName)) {
            <# String Value #>
            $Body.LastName = $LastName
        }

        If (![string]::IsNullOrWhiteSpace($MiddleName)) {
            <# String Value #>
            $Body.MiddleName = $MiddleName
        }

        If (![string]::IsNullOrWhiteSpace($NameSuffix)) {
            <# String Value #>
            $Body.NameSuffix = $NameSuffix
        }

        If (![string]::IsNullOrWhiteSpace($Address)) {
            <# String Value #>
            $Body.Address = $Address
        }

        If (![string]::IsNullOrWhiteSpace($AddressCity)) {
            <# String Value #>
            $Body.AddressCity = $AddressCity
        }

        If (![string]::IsNullOrWhiteSpace($AddressState)) {
            <# String Value #>
            $Body.AddressState = $AddressState
        }

        If (![string]::IsNullOrWhiteSpace($AddressZip)) {
            <# String Value #>
            $Body.AddressZip = $AddressZip
        }

        If (![string]::IsNullOrWhiteSpace($AddressZipExt)) {
            <# String Value #>
            $Body.AddressZipExt = $AddressZipExt
        }

        If (![string]::IsNullOrWhiteSpace($RelationshipToStudentCode)) {
            <# String Value #>
            $Body.RelationshipToStudentCode = $RelationshipToStudentCode
        }

        If (![string]::IsNullOrWhiteSpace($HomePhone)) {
            <# String Value #>
            $Body.HomePhone = $HomePhone
        }

        If (![string]::IsNullOrWhiteSpace($WorkPhone)) {
            <# String Value #>
            $Body.WorkPhone = $WorkPhone
        }

        If (![string]::IsNullOrWhiteSpace($WorkPhoneExt)) {
            <# String Value #>
            $Body.WorkPhoneExt = $WorkPhoneExt
        }

        If (![string]::IsNullOrWhiteSpace($CellPhone)) {
            <# String Value #>
            $Body.CellPhone = $CellPhone
        }

        If (![string]::IsNullOrWhiteSpace($EmailAddress)) {
            <# String Value #>
            $Body.EmailAddress = $EmailAddress
        }

        If ($ContactOrder -gt -1) {
            <# Int Value #>
            $Body.ContactOrder = $ContactOrder
        }

        If (![string]::IsNullOrWhiteSpace($MiscCode)) {
            <# String Value #>
            $Body.MiscCode = $MiscCode
        }

        If ($PrimaryContact) {
            <# Boolean Value #>
            $Body.PrimaryContact = "Y"
        }
        else {
            <# Boolean Value #>
            $Body.PrimaryContact = "N"
        }

        If (![string]::IsNullOrWhiteSpace($MailTagCode)) {
            <# String Value #>
            $Body.MailTagCode = $MailTagCode
        }

        If ($AccessToPortal) {
            <# Boolean Value #>
            $Body.AccessToPortal = "Y"
        }
        else {
            <# Boolean Value #>
            $Body.AccessToPortal = "N"
        }

        If ($LivesWithStudentIndicator) {
            <# Boolean Value #>
            $Body.LivesWithStudentIndicator = "Y"
        }
        else {
            <# Boolean Value #>
            $Body.LivesWithStudentIndicator = "N"
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
