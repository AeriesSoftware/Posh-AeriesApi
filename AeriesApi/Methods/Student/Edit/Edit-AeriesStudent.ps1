function Edit-AeriesStudent
{
    <#  
        .SYNOPSIS
        Edit a Student in Aeries
        
        .DESCRIPTION
        The Edit-AeriesStudent cmdlet is used to edit a Student in Aeries
        No fields are technically required other than StudentID, but you can update as many as you'd like in one call

        .EXAMPLE
        Edit-AeriesStudent -StudentID 99400001 -FirstName "Aeries" -LastName "Software"
        This will update Student ID 99400001 to have the First Name of "Aeries" and the Last Name of "Software"
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

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
        $NextSchool,

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
        $LastSchool,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $ResidenceSchool,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $NextResidenceSchool,

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
        $UserCode13,

        [Parameter(Mandatory=$false)]
        [datetime]
        $WellbeingDate,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $WellbeingScore,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $WellbeingAttentionCode
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/UpdateStudent/$StudentID"
        $ContentType = "application/json"
        $StudentData = @{}
    }

    Process {
        If (![string]::IsNullOrWhiteSpace($LastName)) {
            <# String value #>
            $StudentData.LastName = $LastName
        }
        
        If (![string]::IsNullOrWhiteSpace($FirstName)) {
            <# String value #>
            $StudentData.FirstName = $FirstName
        }
        
        If (![string]::IsNullOrWhiteSpace($MiddleName)) {
            <# String value #>
            $StudentData.MiddleName = $MiddleName
        }
        
        If (![string]::IsNullOrWhiteSpace($NameSuffix)) {
            <# String value #>
            $StudentData.NameSuffix = $NameSuffix
        }
        
        If (![string]::IsNullOrWhiteSpace($Gender)) {
            <# String value #>
            $StudentData.Gender = $Gender
        }
        
        If (![string]::IsNullOrWhiteSpace($Grade)) {
            <# String value #>
            $StudentData.Grade = $Grade
        }
        
        If (![string]::IsNullOrWhiteSpace($NextGrade)) {
            <# String value #>
            $StudentData.NextGrade = $NextGrade
        }
        
        If (![string]::IsNullOrWhiteSpace($NextSchool) -and ($NextSchool -gt 0)) {
            <# String value #>
            $StudentData.NextSchool = $NextSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthDate)) {
            <# Datetime value #>
            $StudentData.BirthDate = $BirthDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($InactiveStatusCode)) {
            <# String value #>
            $StudentData.InactiveStatusCode = $InactiveStatusCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomePhone)) {
            <# String value #>
            $StudentData.HomePhone = $HomePhone
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageCode)) {
            <# String value #>
            $StudentData.HomeLanguageCode = $HomeLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($CorrespondanceLanguageCode)) {
            <# String value #>
            $StudentData.CorrespondanceLanguageCode = $CorrespondanceLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($LanguageFluencyCode)) {
            <# String value #>
            $StudentData.LanguageFluencyCode = $LanguageFluencyCode
        }
        
        If (![string]::IsNullOrWhiteSpace($EthnicityCode)) {
            <# String value #>
            $StudentData.EthnicityCode = $EthnicityCode
        }
        
        If (![string]::IsNullOrWhiteSpace($Race1Code)) {
            <# String value #>
            $StudentData.Race1Code = $Race1Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race2Code)) {
            <# String value #>
            $StudentData.Race2Code = $Race2Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race3Code)) {
            <# String value #>
            $StudentData.Race3Code = $Race3Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race4Code)) {
            <# String value #>
            $StudentData.Race4Code = $Race4Code
        }
        
        If (![string]::IsNullOrWhiteSpace($Race5Code)) {
            <# String value #>
            $StudentData.Race5Code = $Race5Code
        }
        
        If (![string]::IsNullOrWhiteSpace($LastSchool) -and ($LastSchool -gt 0)) {
            <# String value #>
            $StudentData.LastSchool = $LastSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceSchool) -and ($ResidenceSchool -gt 0)) {
            <# String value #>
            $StudentData.ResidenceSchool = $ResidenceSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($NextResidenceSchool) -and ($NextResidenceSchool -gt 0)) {
            <# String value #>
            $StudentData.NextResidenceSchool = $NextResidenceSchool
        }
        
        If (![string]::IsNullOrWhiteSpace($SchoolEnterDate)) {
            <# String value #>
            $StudentData.SchoolEnterDate = $SchoolEnterDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($DistrictEnterDate)) {
            <# String value #>
            $StudentData.DistrictEnterDate = $DistrictEnterDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthCity)) {
            <# String value #>
            $StudentData.BirthCity = $BirthCity
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthStateCode)) {
            <# String value #>
            $StudentData.BirthStateCode = $BirthStateCode
        }
        
        If (![string]::IsNullOrWhiteSpace($BirthCountryCode)) {
            <# String value #>
            $StudentData.BirthCountryCode = $BirthCountryCode
        }
        
        If (![string]::IsNullOrWhiteSpace($ParentEdLevelCode)) {
            <# String value #>
            $StudentData.ParentEdLevelCode = $ParentEdLevelCode
        }
        
        If (![string]::IsNullOrWhiteSpace($ParentGuardianName)) {
            <# String value #>
            $StudentData.ParentGuardianName = $ParentGuardianName
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddress)) {
            <# String value #>
            $StudentData.MailingAddress = $MailingAddress
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressCity)) {
            <# String value #>
            $StudentData.MailingAddressCity = $MailingAddressCity
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressState)) {
            <# String value #>
            $StudentData.MailingAddressState = $MailingAddressState
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressZipCode)) {
            <# String value #>
            $StudentData.MailingAddressZipCode = $MailingAddressZipCode
        }
        
        If (![string]::IsNullOrWhiteSpace($MailingAddressZipExt)) {
            <# String value #>
            $StudentData.MailingAddressZipExt = $MailingAddressZipExt
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddress)) {
            <# String value #>
            $StudentData.ResidenceAddress = $ResidenceAddress
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressCity)) {
            <# String value #>
            $StudentData.ResidenceAddressCity = $ResidenceAddressCity
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressState)) {
            <# String value #>
            $StudentData.ResidenceAddressState = $ResidenceAddressState
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressZipCode)) {
            <# String value #>
            $StudentData.ResidenceAddressZipCode = $ResidenceAddressZipCode
        }
        
        If (![string]::IsNullOrWhiteSpace($ResidenceAddressZipExt)) {
            <# String value #>
            $StudentData.ResidenceAddressZipExt = $ResidenceAddressZipExt
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyFirstLanguageCode)) {
            <# String value #>
            $StudentData.HomeLanguageSurveyFirstLanguageCode = $HomeLanguageSurveyFirstLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyPrimaryLanguageCode)) {
            <# String value #>
            $StudentData.HomeLanguageSurveyPrimaryLanguageCode = $HomeLanguageSurveyPrimaryLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyHomeLanguageCode)) {
            <# String value #>
            $StudentData.HomeLanguageSurveyHomeLanguageCode = $HomeLanguageSurveyHomeLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($HomeLanguageSurveyAdultLanguageCode)) {
            <# String value #>
            $StudentData.HomeLanguageSurveyAdultLanguageCode = $HomeLanguageSurveyAdultLanguageCode
        }
        
        If (![string]::IsNullOrWhiteSpace($USEnterDate)) {
            <# Datetime value #>
            $StudentData.USEnterDate = $USEnterDate.ToString("yyyy-MM-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($USSchoolEnterDate)) {
            <# Datetime value #>
            $StudentData.USSchoolEnterDate = $USSchoolEnterDate.ToString("yyyy-mm-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode1)) {
            <# String value #>
            $StudentData.UserCode1 = $UserCode1
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode2)) {
            <# String value #>
            $StudentData.UserCode2 = $UserCode2
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode3)) {
            <# String value #>
            $StudentData.UserCode3 = $UserCode3
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode4)) {
            <# String value #>
            $StudentData.UserCode4 = $UserCode4
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode5)) {
            <# String value #>
            $StudentData.UserCode5 = $UserCode5
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode6)) {
            <# String value #>
            $StudentData.UserCode6 = $UserCode6
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode7)) {
            <# String value #>
            $StudentData.UserCode7 = $UserCode7
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode8)) {
            <# String value #>
            $StudentData.UserCode8 = $UserCode8
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode9)) {
            <# String value #>
            $StudentData.UserCode9 = $UserCode9
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode10)) {
            <# String value #>
            $StudentData.UserCode10 = $UserCode10
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode11)) {
            <# String value #>
            $StudentData.UserCode11 = $UserCode11
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode12)) {
            <# String value #>
            $StudentData.UserCode12 = $UserCode12
        }
        
        If (![string]::IsNullOrWhiteSpace($UserCode13)) {
            <# String value #>
            $StudentData.UserCode13 = $UserCode13
        }
        
        If (![string]::IsNullOrWhiteSpace($WellbeingDate)) {
            <# Datetime value #>
            $StudentData.WellbeingDate = $WellbeingDate.ToString("yyyy-mm-dd")
        }
        
        If (![string]::IsNullOrWhiteSpace($WellbeingScore)) {
            <# String value #>
            $StudentData.WellbeingScore = $WellbeingScore
        }
        
        If (![string]::IsNullOrWhiteSpace($WellbeingAttentionCode)) {
            <# String value #>
            $StudentData.WellbeingAttentionCode = $WellbeingAttentionCode
        }

        <# Turn the $StudentData variable into a JSON string for sending to the server #>
        $Body = ($StudentData | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $Body -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
