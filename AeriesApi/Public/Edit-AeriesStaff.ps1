function Edit-AeriesStaff
{
    <#
        .SYNOPSIS
        Edit a Staff in Aeries

        .DESCRIPTION
        The Edit-AeriesStaff cmdlet is used to edit a Staff in Aeries
        Except for StaffID, no fields are required

        .EXAMPLE
        Edit-AeriesStaff -StaffID 1 -FirstName "Aeries" -LastName "Software"
        This will edit a Staff in Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StaffID,

        [ValidateLength(1, 20)]
        [Parameter(Mandatory=$false)]
        [string]
        $FirstName,

        [ValidateLength(1, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $LastName,

        [ValidateLength(1, 20)]
        [Parameter(Mandatory=$false)]
        [string]
        $MiddleName,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $BirthYear = -1,

        [Parameter(Mandatory=$false)]
        [datetime]
        $BirthDate,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $FullTimePercentage = -1,

        [Parameter(Mandatory=$false)]
        [datetime]
        $HireDate,

        [Parameter(Mandatory=$false)]
        [datetime]
        $LeaveDate,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $InactiveStatusCode,

        [ValidateLength(1, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $StateEducatorID,

        [ValidateLength(1, 255)]
        [Parameter(Mandatory=$false)]
        [string]
        $EmailAddress,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $PrimaryAeriesSchool = -1,

        [ValidateLength(1, 255)]
        [Parameter(Mandatory=$false)]
        [string]
        $NetworkLoginID,

        [ValidateLength(1, 255)]
        [Parameter(Mandatory=$false)]
        [string]
        $AlternateEmailAddress,

        [ValidateLength(1, 255)]
        [Parameter(Mandatory=$false)]
        [string]
        $HumanResourcesSystemID,

        [ValidateLength(1, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $CellPhone,

        [ValidateLength(1, 100)]
        [Parameter(Mandatory=$false)]
        [string]
        $Title,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $Gender,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $EducationLevelCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $EthnicityCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $RaceCode1,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $RaceCode2,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $RaceCode3,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $RaceCode4,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $RaceCode5,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $PositionStatusCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TotalYearsOfEduService = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TotalYearsInThisDistrict = -1,

        [ValidateLength(1, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $PreviousLastName,

        [ValidateLength(1, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $PreviousFirstName,

        [ValidateLength(1, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $PreviousMiddleName,

        [ValidateLength(1, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $NameSuffix,

        [ValidateLength(1, 55)]
        [Parameter(Mandatory=$false)]
        [string]
        $Address,

        [ValidateLength(1, 30)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressCity,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressState,

        [ValidateLength(1, 5)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressZipCode,

        [ValidateLength(1, 4)]
        [Parameter(Mandatory=$false)]
        [string]
        $AddressZipExt,

        [ValidateLength(1, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $HomePhone,

        [ValidateLength(1, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $EmergencyContactName,

        [ValidateLength(1, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $EmergencyContactPhone
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Put"
        $SuccessStatusCode = 200,201
        $Endpoint = "v5/staff/$StaffID"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($FirstName)) {
            <# String value #>
            $Body.FirstName = $FirstName
        }

        If (![string]::IsNullOrWhiteSpace($LastName)) {
            <# String value #>
            $Body.LastName = $LastName
        }

        If (![string]::IsNullOrWhiteSpace($MiddleName)) {
            <# String value #>
            $Body.MiddleName = $MiddleName
        }

        If (![string]::IsNullOrWhiteSpace($Gender)) {
            <# String value #>
            $Body.Gender = $Gender
        }

        If (![string]::IsNullOrWhiteSpace($BirthYear) -and ($BirthYear -gt -1)) {
            <# Datetime value #>
            $Body.BirthYear = $BirthYear
        }

        If (![string]::IsNullOrWhiteSpace($BirthDate)) {
            <# Datetime value #>
            $Body.BirthDate = $BirthDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($HireDate)) {
            <# Datetime value #>
            $Body.HireDate = $HireDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($LeaveDate)) {
            <# Datetime value #>
            $Body.LeaveDate = $LeaveDate.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($InactiveStatusCode)) {
            <# String value #>
            $Body.InactiveStatusCode = $InactiveStatusCode
        }

        If (![string]::IsNullOrWhiteSpace($StateEducatorID)) {
            <# String value #>
            $Body.StateEducatorID = $StateEducatorID
        }

        If (![string]::IsNullOrWhiteSpace($EmailAddress)) {
            <# String value #>
            $Body.EmailAddress = $EmailAddress
        }

        If (![string]::IsNullOrWhiteSpace($PrimaryAeriesSchool) -and ($PrimaryAeriesSchool -gt -1)) {
            <# Int16 value #>
            $Body.PrimaryAeriesSchool = $PrimaryAeriesSchool
        }

        If (![string]::IsNullOrWhiteSpace($NetworkLoginID)) {
            <# String value #>
            $Body.NetworkLoginID = $NetworkLoginID
        }

        If (![string]::IsNullOrWhiteSpace($AlternateEmailAddress)) {
            <# String value #>
            $Body.AlternateEmailAddress = $AlternateEmailAddress
        }

        If (![string]::IsNullOrWhiteSpace($HumanResourcesSystemID)) {
            <# String value #>
            $Body.HumanResourcesSystemID = $HumanResourcesSystemID
        }

        If (![string]::IsNullOrWhiteSpace($CellPhone)) {
            <# String value #>
            $Body.CellPhone = $CellPhone
        }

        If (![string]::IsNullOrWhiteSpace($Title)) {
            <# String value #>
            $Body.Title = $Title
        }

        If (![string]::IsNullOrWhiteSpace($Gender)) {
            <# String value #>
            $Body.Gender = $Gender
        }

        If (![string]::IsNullOrWhiteSpace($EducationLevelCode)) {
            <# String value #>
            $Body.EducationLevelCode = $EducationLevelCode
        }

        If (![string]::IsNullOrWhiteSpace($EthnicityCode)) {
            <# String value #>
            $Body.EthnicityCode = $EthnicityCode
        }

        If (![string]::IsNullOrWhiteSpace($RaceCode1)) {
            <# String value #>
            $Body.RaceCode1 = $RaceCode1
        }

        If (![string]::IsNullOrWhiteSpace($RaceCode2)) {
            <# String value #>
            $Body.RaceCode2 = $RaceCode2
        }

        If (![string]::IsNullOrWhiteSpace($RaceCode3)) {
            <# String value #>
            $Body.RaceCode3 = $RaceCode3
        }

        If (![string]::IsNullOrWhiteSpace($RaceCode4)) {
            <# String value #>
            $Body.RaceCode4 = $RaceCode4
        }

        If (![string]::IsNullOrWhiteSpace($RaceCode5)) {
            <# String value #>
            $Body.RaceCode5 = $RaceCode5
        }

        If (![string]::IsNullOrWhiteSpace($PositionStatusCode)) {
            <# String value #>
            $Body.PositionStatusCode = $PositionStatusCode
        }

        If (![string]::IsNullOrWhiteSpace($TotalYearsOfEduService) -and ($TotalYearsOfEduService -gt -1)) {
            <# Int16 value #>
            $Body.TotalYearsOfEduService = $TotalYearsOfEduService
        }

        If (![string]::IsNullOrWhiteSpace($TotalYearsInThisDistrict) -and ($TotalYearsInThisDistrict -gt -1)) {
            <# Int16 value #>
            $Body.TotalYearsInThisDistrict = $TotalYearsInThisDistrict
        }

        If (![string]::IsNullOrWhiteSpace($PreviousLastName)) {
            <# String value #>
            $Body.PreviousLastName = $PreviousLastName
        }

        If (![string]::IsNullOrWhiteSpace($PreviousFirstName)) {
            <# String value #>
            $Body.PreviousFirstName = $PreviousFirstName
        }

        If (![string]::IsNullOrWhiteSpace($PreviousMiddleName)) {
            <# String value #>
            $Body.PreviousMiddleName = $PreviousMiddleName
        }

        If (![string]::IsNullOrWhiteSpace($NameSuffix)) {
            <# String value #>
            $Body.NameSuffix = $NameSuffix
        }

        If (![string]::IsNullOrWhiteSpace($Address)) {
            <# String value #>
            $Body.Address = $Address
        }

        If (![string]::IsNullOrWhiteSpace($AddressCity)) {
            <# String value #>
            $Body.AddressCity = $AddressCity
        }

        If (![string]::IsNullOrWhiteSpace($AddressState)) {
            <# String value #>
            $Body.AddressState = $AddressState
        }

        If (![string]::IsNullOrWhiteSpace($AddressZipCode)) {
            <# String value #>
            $Body.AddressZipCode = $AddressZipCode
        }

        If (![string]::IsNullOrWhiteSpace($AddressZipExt)) {
            <# String value #>
            $Body.AddressZipExt = $AddressZipExt
        }

        If (![string]::IsNullOrWhiteSpace($HomePhone)) {
            <# String value #>
            $Body.HomePhone = $HomePhone
        }

        If (![string]::IsNullOrWhiteSpace($EmergencyContactName)) {
            <# String value #>
            $Body.EmergencyContactName = $EmergencyContactName
        }

        If (![string]::IsNullOrWhiteSpace($EmergencyContactPhone)) {
            <# String value #>
            $Body.EmergencyContactPhone = $EmergencyContactPhone
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
