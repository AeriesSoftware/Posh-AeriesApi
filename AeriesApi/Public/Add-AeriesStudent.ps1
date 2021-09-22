function Add-AeriesStudent
{
    <#  
        .SYNOPSIS
        Add a new Student in Aeries
        
        .DESCRIPTION
        The Add-AeriesStudent cmdlet is used to add a Student for a specific School in Aeries
        No fields are technically required other than SchoolCode, but the more you provide the more accurate it will be immediately

        .EXAMPLE
        Add-AeriesStudent -SchoolCode 994 -FirstName "Aeries" -LastName "Software"
        This will add a student to the specific School Code in Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateLength(1, 100)]
        [Parameter(Mandatory=$false)]
        [string]
        $LastName,

        [ValidateLength(1, 100)]
        [Parameter(Mandatory=$false)]
        [string]
        $FirstName,

        [ValidateLength(1, 100)]
        [Parameter(Mandatory=$false)]
        [string]
        $MiddleName,

        [ValidateLength(1, 10)]
        [Parameter(Mandatory=$false)]
        [string]
        $NameSuffix,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $Gender,

        [ValidateSet("-2","-1","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18")]
        [Parameter(Mandatory=$false)]
        [string]
        $Grade,

        [ValidateSet("-2","-1","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18")]
        [Parameter(Mandatory=$false)]
        [string]
        $NextGrade,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $NextSchool = -1,

        [Parameter(Mandatory=$false)]
        [datetime]
        $BirthDate,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $InactiveStatusCode,

        [Parameter(Mandatory=$false)]
        [string]
        $HomePhone,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $HomeLanguageCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $CorrespondanceLanguageCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $LanguageFluencyCode,

        [ValidateLength(1, 1)]
        [ValidateSet("Y","N")]
        [Parameter(Mandatory=$false)]
        [string]
        $EthnicityCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $Race1Code,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $Race2Code,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $Race3Code,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $Race4Code,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $Race5Code,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $LastSchool = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $ResidenceSchool = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $NextResidenceSchool = -1,

        [Parameter(Mandatory=$false)]
        [datetime]
        $SchoolEnterDate,

        [Parameter(Mandatory=$false)]
        [datetime]
        $DistrictEnterDate,

        [ValidateLength(1, 30)]
        [Parameter(Mandatory=$false)]
        [string]
        $BirthCity,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $BirthStateCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $BirthCountryCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $ParentEdLevelCode,

        [ValidateLength(1, 50)]
        [Parameter(Mandatory=$false)]
        [string]
        $ParentGuardianName,

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
        $ResidenceAddressZipExt,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $HomeLanguageSurveyFirstLanguageCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $HomeLanguageSurveyPrimaryLanguageCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $HomeLanguageSurveyHomeLanguageCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $HomeLanguageSurveyAdultLanguageCode,

        [Parameter(Mandatory=$false)]
        [datetime]
        $USEnterDate,

        [Parameter(Mandatory=$false)]
        [datetime]
        $USSchoolEnterDate,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode1,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode2,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode3,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode4,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode5,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode6,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode7,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode8,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode9,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode10,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode11,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode12,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode13
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/InsertStudent"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($LastName)) {
            <# String value #>
            $Body.LastName = $LastName
        }
        
        If (![string]::IsNullOrWhiteSpace($FirstName)) {
            <# String value #>
            $Body.FirstName = $FirstName
        }
        
        If (![string]::IsNullOrWhiteSpace($MiddleName)) {
            <# String value #>
            $Body.MiddleName = $MiddleName
        }
        
        If (![string]::IsNullOrWhiteSpace($NameSuffix)) {
            <# String value #>
            $Body.NameSuffix = $NameSuffix
        }
        
        If (![string]::IsNullOrWhiteSpace($Gender)) {
            <# String value #>
            $Body.Gender = $Gender
        }
        
        If (![string]::IsNullOrWhiteSpace($Grade)) {
            <# String value #>
            $Body.Grade = $Grade
        }
        
        If (![string]::IsNullOrWhiteSpace($NextGrade)) {
            <# String value #>
            $Body.NextGrade = $NextGrade
        }
        
        If (![string]::IsNullOrWhiteSpace($NextSchool) -and ($NextSchool -gt -1)) {
            <# String value #>
            $Body.NextSchool = $NextSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthDate)) {
            <# Datetime value #>
            $Body.BirthDate = $BirthDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($InactiveStatusCode)) {
            <# String value #>
            $Body.InactiveStatusCode = $InactiveStatusCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomePhone)) {
            <# String value #>
            $Body.HomePhone = $HomePhone
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageCode)) {
            <# String value #>
            $Body.HomeLanguageCode = $HomeLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($CorrespondanceLanguageCode)) {
            <# String value #>
            $Body.CorrespondanceLanguageCode = $CorrespondanceLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($LanguageFluencyCode)) {
            <# String value #>
            $Body.LanguageFluencyCode = $LanguageFluencyCode
        }
        
        If (![string]::IsNullOrWhiteSpace($EthnicityCode)) {
            <# String value #>
            $Body.EthnicityCode = $EthnicityCode
        }
        
        If (![string]::IsNullOrWhiteSpace($Race1Code)) {
            <# String value #>
            $Body.Race1Code = $Race1Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race2Code)) {
            <# String value #>
            $Body.Race2Code = $Race2Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race3Code)) {
            <# String value #>
            $Body.Race3Code = $Race3Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race4Code)) {
            <# String value #>
            $Body.Race4Code = $Race4Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race5Code)) {
            <# String value #>
            $Body.Race5Code = $Race5Code
        }
        
        If (![string]::IsNullOrWhiteSpace($LastSchool) -and ($LastSchool -gt -1)) {
            <# String value #>
            $Body.LastSchool = $LastSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceSchool) -and ($ResidenceSchool -gt -1)) {
            <# String value #>
            $Body.ResidenceSchool = $ResidenceSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($NextResidenceSchool) -and ($NextResidenceSchool -gt -1)) {
            <# String value #>
            $Body.NextResidenceSchool = $NextResidenceSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($SchoolEnterDate)) {
            <# String value #>
            $Body.SchoolEnterDate = $SchoolEnterDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($DistrictEnterDate)) {
            <# String value #>
            $Body.DistrictEnterDate = $DistrictEnterDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthCity)) {
            <# String value #>
            $Body.BirthCity = $BirthCity
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthStateCode)) {
            <# String value #>
            $Body.BirthStateCode = $BirthStateCode
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthCountryCode)) {
            <# String value #>
            $Body.BirthCountryCode = $BirthCountryCode
        }
        
        If (![string]::IsNullOrWhiteSpace($ParentEdLevelCode)) {
            <# String value #>
            $Body.ParentEdLevelCode = $ParentEdLevelCode
        }
        
        If (![string]::IsNullOrWhiteSpace($ParentGuardianName)) {
            <# String value #>
            $Body.ParentGuardianName = $ParentGuardianName
        }
        
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
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyFirstLanguageCode)) {
            <# String value #>
            $Body.HomeLanguageSurveyFirstLanguageCode = $HomeLanguageSurveyFirstLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyPrimaryLanguageCode)) {
            <# String value #>
            $Body.HomeLanguageSurveyPrimaryLanguageCode = $HomeLanguageSurveyPrimaryLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyHomeLanguageCode)) {
            <# String value #>
            $Body.HomeLanguageSurveyHomeLanguageCode = $HomeLanguageSurveyHomeLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyAdultLanguageCode)) {
            <# String value #>
            $Body.HomeLanguageSurveyAdultLanguageCode = $HomeLanguageSurveyAdultLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($USEnterDate)) {
            <# Datetime value #>
            $Body.USEnterDate = $USEnterDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($USSchoolEnterDate)) {
            <# Datetime value #>
            $Body.USSchoolEnterDate = $USSchoolEnterDate.ToString("yyyy-mm-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode1)) {
            <# String value #>
            $Body.UserCode1 = $UserCode1
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode2)) {
            <# String value #>
            $Body.UserCode2 = $UserCode2
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode3)) {
            <# String value #>
            $Body.UserCode3 = $UserCode3
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode4)) {
            <# String value #>
            $Body.UserCode4 = $UserCode4
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode5)) {
            <# String value #>
            $Body.UserCode5 = $UserCode5
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode6)) {
            <# String value #>
            $Body.UserCode6 = $UserCode6
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode7)) {
            <# String value #>
            $Body.UserCode7 = $UserCode7
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode8)) {
            <# String value #>
            $Body.UserCode8 = $UserCode8
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode9)) {
            <# String value #>
            $Body.UserCode9 = $UserCode9
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode10)) {
            <# String value #>
            $Body.UserCode10 = $UserCode10
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode11)) {
            <# String value #>
            $Body.UserCode11 = $UserCode11
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode12)) {
            <# String value #>
            $Body.UserCode12 = $UserCode12
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode13)) {
            <# String value #>
            $Body.UserCode13 = $UserCode13
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
