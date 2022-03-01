function Add-AeriesSchedulingSection
{
    <#
        .SYNOPSIS
        Add a Scheduling Section to Aeries

        .DESCRIPTION
        The Add-AeriesSchedulingSection cmdlet is used to create a Scheduling Section in Aeries for the given SchoolCode

        .EXAMPLE
        Add-AeriesSchedulingSection -SchoolCode 884
        This will create a Schedule Section in Aeries for SchoolCode 884
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $SectionNumber,

        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Period = -1,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $FlexPeriodSequenceNumber,

        [ValidateRange(1, 10)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $PeriodBlock,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$true)]
        [string]
        $Semester,

        [ValidateScript({
            if ([string]::IsNullOrEmpty($_))
            {
                <# If the value is blank, accept it. Might be section staff #>
                return $true
            }
            elseif ($_ -iin "A-DAYS","B-DAYS","FIRST","SECOND","DAILY")
            {
                <# If is in valid set, accept it #>
                return $true
            }
            elseif ($_.Length -le 6)
            {
                <# If value is 6 or less characters, accept it #>
                return $true
            }
            else
            {
                return $false
            }
        })]
        [Parameter(Mandatory=$false)]
        [string]
        $SplitTerm,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $ClassCalendarSequenceNumber,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$true)]
        [string]
        $CourseID,

        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber1,

        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber2 = -1,

        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber3 = -1,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $HighlyQualifiedStatusCode1,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $HighlyQualifiedStatusCode2,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $HighlyQualifiedStatusCode3,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $Room,

        [Parameter(Mandatory=$false)]
        [decimal]
        $Credit,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $GenderRestriction,

        [ValidateRange(-2, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $LowGrade = -99, <# -99 because technically -1 that I usually use is a valid grade #>

        [ValidateRange(-2, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $HighGrade = -99, <# -99 because technically -1 that I usually use is a valid grade #>

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $MaxStudents,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $InactiveStatusCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $ProgramCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $HourlyAttendanceProgramCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $ExclusionCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $CountsForADA,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $MultiTeacherCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $SchedulingGroup,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $TeamCourseGroup,

        [ValidateLength(1, [int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $TeamNumber,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $SemesterGroup,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $Track,

        [ValidateLength(1, [int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $ClassID,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $EducationServiceCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $LanguageOfInstructionCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $InstructionalStrategyCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $FundingSourceCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $CareerTechnicalEducationProviderCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $IndependentStudyIndicator,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $DistanceLearningIndicator,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $ItinerantTeacherIndicator,

        [Parameter(Mandatory=$false)]
        [switch]
        $UseSupplementalAttendance,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $PopulationServedCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $ClassTypeCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $MonthlyMinutes,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode1,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode2,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode3,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode4,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode5,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode6,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode7,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $UserCode8,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $ArticulatedCourseIndicator,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonCampusBasedInstructionCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $PreKSchoolTypeCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $PreKCurriculaCode,

        [Parameter(Mandatory=$false)]
        [switch]
        $IsHighQualityPreKProgram,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $InstructionTypeCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $ProgramEvaluationTypeCode,

        [ValidateLength(1, 2)]
        [Parameter(Mandatory=$false)]
        [string]
        $EducationalEnvironmentCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $CareerTechnicalEducationHours,

        [ValidateLength(1, 20)]
        [Parameter(Mandatory=$false)]
        [string]
        $ContentSubcategoryCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $CharterNonCoreIndicator,

        [ValidateLength(1, 4)]
        [Parameter(Mandatory=$false)]
        [string]
        $AdvancedCourseStateCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $OnlineInstructionTypeCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $MiddleSchoolCoreIndicator,

        [ValidateLength(1, 4)]
        [Parameter(Mandatory=$false)]
        [string]
        $NonCredentialedAuthorizationCode,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $HighQualityCareerTechnicalEducationIndicator,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
        [string]
        $ArenaSchedulingIndicator,

        [Parameter(Mandatory=$false)]
        [switch]
        $ExcludeFromScheduler,

        [Parameter(Mandatory=$false)]
        [SectionStaffMember[]]
        $SectionStaffMembers
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $ContentType = "application/json"
        $Body = @{}

        $School = (Get-AeriesSchool -SchoolCode $SchoolCode)
        $IsSectionStaff = $School.UsingSectionStaffInScheduling
        $IsFlexible = $false

        If ($School.ScheduleType -ieq "Flexible") {
            $IsFlexible = $true
        }

        If ($IsSectionStaff) {
            $Endpoint = "v5/schools/$SchoolCode/scheduling/sections"
        }
        else
        {
            $Endpoint = "v4/schools/$SchoolCode/scheduling/sections"
        }
    }

    Process {

        If (!$IsFlexible) {
            <# Quick little checks to make sure the required fields for NON Flex schools are there #>
            If ($PeriodBlock -eq 0) {
                Throw "PeriodBlock is required for Non-Flex Schools"
            }
            If ($Period -eq -1) {
                Throw "Period is required for Non-Flex Schools"
            }
        }

        $Body.SchoolCode = $SchoolCode
        $Body.CourseID = $CourseID
        $Body.Semester = $Semester

        If ($IsFlexible) {
            <# Process all the things that are needed for Flex #>
            If ($FlexPeriodSequenceNumber -gt 0) {
                <# Int Value #>
                $Body.FlexPeriodSequenceNumber = $FlexPeriodSequenceNumber
            }
        }
        else
        {
            <# Process all the things that are needed for NON Flex #>
            If ($Period -gt -1) {
                <# Int16 Value #>
                $Body.Period = $Period
            }

            If ($PeriodBlock -gt 0) {
                <# Int16 Value #>
                $Body.PeriodBlock = $PeriodBlock
            }
    
            If (![string]::IsNullOrWhiteSpace($SplitTerm)) {
                <# String Value #>
                $Body.SplitTerm = $SplitTerm
            }
        }

        If ($IsSectionStaff) {
            <# Process all the things needed for Section Staff #>
            If ($ClassCalendarSequenceNumber -gt 0) {
                <# Int Value #>
                $Body.ClassCalendarSequenceNumber = $ClassCalendarSequenceNumber
            }
            
            If ($SectionStaffMembers.Count -gt 0) {
                <# SectionStaffMember[] Value #>
                $Body.SectionStaffMembers = $SectionStaffMembers
            }
        }
        else
        {
            <# Process all the things needed for NON Section Staff #>
            If ($TeacherNumber1 -gt -1) {
                <# Int Value #>
                $Body.TeacherNumber1 = $TeacherNumber1
            }
    
            If ($TeacherNumber2 -gt -1) {
                <# Int Value #>
                $Body.TeacherNumber2 = $TeacherNumber2
            }
    
            If ($TeacherNumber3 -gt -1) {
                <# Int Value #>
                $Body.TeacherNumber3 = $TeacherNumber3
            }

            If (![string]::IsNullOrWhiteSpace($HighlyQualifiedStatusCode1)) {
                <# String Value #>
                $Body.HighlyQualifiedStatusCode1 = $HighlyQualifiedStatusCode1
            }
    
            If (![string]::IsNullOrWhiteSpace($HighlyQualifiedStatusCode2)) {
                <# String Value #>
                $Body.HighlyQualifiedStatusCode2 = $HighlyQualifiedStatusCode2
            }
    
            If (![string]::IsNullOrWhiteSpace($HighlyQualifiedStatusCode3)) {
                <# String Value #>
                $Body.HighlyQualifiedStatusCode3 = $HighlyQualifiedStatusCode3
            }
        }

        <# Everything else that doesn't rely on SectionStaff or Flex #>
        If ($SectionNumber -gt 0) {
            <# Int16 Value #>
            $Body.SectionNumber = $SectionNumber
        }

        If (![string]::IsNullOrWhiteSpace($Room)) {
            <# String Value #>
            $Body.Room = $Room
        }

        If ($Credit -gt 0) {
            <# Decimal Value #>
            $Body.Credit = $Credit
        }

        If (![string]::IsNullOrWhiteSpace($GenderRestriction)) {
            <# String Value #>
            $Body.GenderRestriction = $GenderRestriction
        }

        If ($LowGrade -gt -99) {
            <# Int16 Value #>
            $Body.LowGrade = $LowGrade
        }

        If ($HighGrade -gt -99) {
            <# Int16 Value #>
            $Body.HighGrade = $HighGrade
        }

        If ($MaxStudents -gt 0) {
            <# Int16 Value #>
            $Body.MaxStudents = $MaxStudents
        }

        If (![string]::IsNullOrWhiteSpace($InactiveStatusCode)) {
            <# String Value #>
            $Body.InactiveStatusCode = $InactiveStatusCode
        }

        If (![string]::IsNullOrWhiteSpace($ProgramCode)) {
            <# String Value #>
            $Body.ProgramCode = $ProgramCode
        }

        If (![string]::IsNullOrWhiteSpace($HourlyAttendanceProgramCode)) {
            <# String Value #>
            $Body.HourlyAttendanceProgramCode = $HourlyAttendanceProgramCode
        }

        If (![string]::IsNullOrWhiteSpace($ExclusionCode)) {
            <# String Value #>
            $Body.ExclusionCode = $ExclusionCode
        }

        If (![string]::IsNullOrWhiteSpace($CountsForADA)) {
            <# String Value #>
            $Body.CountsForADA = $CountsForADA
        }

        If (![string]::IsNullOrWhiteSpace($MultiTeacherCode)) {
            <# String Value #>
            $Body.MultiTeacherCode = $MultiTeacherCode
        }

        If (![string]::IsNullOrWhiteSpace($SchedulingGroup)) {
            <# String Value #>
            $Body.SchedulingGroup = $SchedulingGroup
        }

        If (![string]::IsNullOrWhiteSpace($TeamCourseGroup)) {
            <# String Value #>
            $Body.TeamCourseGroup = $TeamCourseGroup
        }

        If ($TeamNumber -gt 0) {
            <# Int Value #>
            $Body.TeamNumber = $TeamNumber
        }

        If (![string]::IsNullOrWhiteSpace($SemesterGroup)) {
            <# String Value #>
            $Body.SemesterGroup = $SemesterGroup
        }

        If (![string]::IsNullOrWhiteSpace($Track)) {
            <# String Value #>
            $Body.Track = $Track
        }

        If ($ClassID -gt 0) {
            <# Int Value #>
            $Body.ClassID = $ClassID
        }

        If (![string]::IsNullOrWhiteSpace($EducationServiceCode)) {
            <# String Value #>
            $Body.EducationServiceCode = $EducationServiceCode
        }

        If (![string]::IsNullOrWhiteSpace($LanguageOfInstructionCode)) {
            <# String Value #>
            $Body.LanguageOfInstructionCode = $LanguageOfInstructionCode
        }

        If (![string]::IsNullOrWhiteSpace($InstructionalStrategyCode)) {
            <# String Value #>
            $Body.InstructionalStrategyCode = $InstructionalStrategyCode
        }

        If (![string]::IsNullOrWhiteSpace($FundingSourceCode)) {
            <# String Value #>
            $Body.FundingSourceCode = $FundingSourceCode
        }

        If (![string]::IsNullOrWhiteSpace($CareerTechnicalEducationProviderCode)) {
            <# String Value #>
            $Body.CareerTechnicalEducationProviderCode = $CareerTechnicalEducationProviderCode
        }

        If (![string]::IsNullOrWhiteSpace($IndependentStudyIndicator)) {
            <# String Value #>
            $Body.IndependentStudyIndicator = $IndependentStudyIndicator
        }

        If (![string]::IsNullOrWhiteSpace($DistanceLearningIndicator)) {
            <# String Value #>
            $Body.DistanceLearningIndicator = $DistanceLearningIndicator
        }

        If (![string]::IsNullOrWhiteSpace($ItinerantTeacherIndicator)) {
            <# String Value #>
            $Body.ItinerantTeacherIndicator = $ItinerantTeacherIndicator
        }

        If ($UseSupplementalAttendance) {
            <# Switch Value #>
            $Body.UseSupplementalAttendance = $UseSupplementalAttendance
        }

        If (![string]::IsNullOrWhiteSpace($PopulationServedCode)) {
            <# String Value #>
            $Body.PopulationServedCode = $PopulationServedCode
        }

        If (![string]::IsNullOrWhiteSpace($ClassTypeCode)) {
            <# String Value #>
            $Body.ClassTypeCode = $ClassTypeCode
        }

        If ($MonthlyMinutes -gt 0) {
            <# Int16 Value #>
            $Body.MonthlyMinutes = $MonthlyMinutes
        }

        If (![string]::IsNullOrWhiteSpace($UserCode1)) {
            <# String Value #>
            $Body.UserCode1 = $UserCode1
        }

        If (![string]::IsNullOrWhiteSpace($UserCode2)) {
            <# String Value #>
            $Body.UserCode2 = $UserCode2
        }

        If (![string]::IsNullOrWhiteSpace($UserCode3)) {
            <# String Value #>
            $Body.UserCode3 = $UserCode3
        }

        If (![string]::IsNullOrWhiteSpace($UserCode4)) {
            <# String Value #>
            $Body.UserCode4 = $UserCode4
        }

        If (![string]::IsNullOrWhiteSpace($UserCode5)) {
            <# String Value #>
            $Body.UserCode5 = $UserCode5
        }

        If (![string]::IsNullOrWhiteSpace($UserCode6)) {
            <# String Value #>
            $Body.UserCode6 = $UserCode6
        }

        If (![string]::IsNullOrWhiteSpace($UserCode7)) {
            <# String Value #>
            $Body.UserCode7 = $UserCode7
        }

        If (![string]::IsNullOrWhiteSpace($UserCode8)) {
            <# String Value #>
            $Body.UserCode8 = $UserCode8
        }

        If (![string]::IsNullOrWhiteSpace($ArticulatedCourseIndicator)) {
            <# String Value #>
            $Body.ArticulatedCourseIndicator = $ArticulatedCourseIndicator
        }

        If (![string]::IsNullOrWhiteSpace($NonCampusBasedInstructionCode)) {
            <# String Value #>
            $Body.NonCampusBasedInstructionCode = $NonCampusBasedInstructionCode
        }

        If (![string]::IsNullOrWhiteSpace($PreKSchoolTypeCode)) {
            <# String Value #>
            $Body.PreKSchoolTypeCode = $PreKSchoolTypeCode
        }

        If (![string]::IsNullOrWhiteSpace($PreKCurriculaCode)) {
            <# String Value #>
            $Body.PreKCurriculaCode = $PreKCurriculaCode
        }

        If ($IsHighQualityPreKProgram) {
            <# Switch Value #>
            $Body.IsHighQualityPreKProgram = $IsHighQualityPreKProgram
        }

        If (![string]::IsNullOrWhiteSpace($InstructionTypeCode)) {
            <# String Value #>
            $Body.InstructionTypeCode = $InstructionTypeCode
        }

        If (![string]::IsNullOrWhiteSpace($ProgramEvaluationTypeCode)) {
            <# String Value #>
            $Body.ProgramEvaluationTypeCode = $ProgramEvaluationTypeCode
        }

        If (![string]::IsNullOrWhiteSpace($EducationalEnvironmentCode)) {
            <# String Value #>
            $Body.EducationalEnvironmentCode = $EducationalEnvironmentCode
        }

        If ($CareerTechnicalEducationHours -gt 0) {
            <# Int16 Value #>
            $Body.CareerTechnicalEducationHours = $CareerTechnicalEducationHours
        }

        If (![string]::IsNullOrWhiteSpace($ContentSubcategoryCode)) {
            <# String Value #>
            $Body.ContentSubcategoryCode = $ContentSubcategoryCode
        }

        If (![string]::IsNullOrWhiteSpace($CharterNonCoreIndicator)) {
            <# String Value #>
            $Body.CharterNonCoreIndicator = $CharterNonCoreIndicator
        }

        If (![string]::IsNullOrWhiteSpace($AdvancedCourseStateCode)) {
            <# String Value #>
            $Body.AdvancedCourseStateCode = $AdvancedCourseStateCode
        }

        If (![string]::IsNullOrWhiteSpace($OnlineInstructionTypeCode)) {
            <# String Value #>
            $Body.OnlineInstructionTypeCode = $OnlineInstructionTypeCode
        }

        If (![string]::IsNullOrWhiteSpace($MiddleSchoolCoreIndicator)) {
            <# String Value #>
            $Body.MiddleSchoolCoreIndicator = $MiddleSchoolCoreIndicator
        }

        If (![string]::IsNullOrWhiteSpace($NonCredentialedAuthorizationCode)) {
            <# String Value #>
            $Body.NonCredentialedAuthorizationCode = $NonCredentialedAuthorizationCode
        }

        If (![string]::IsNullOrWhiteSpace($HighQualityCareerTechnicalEducationIndicator)) {
            <# String Value #>
            $Body.HighQualityCareerTechnicalEducationIndicator = $HighQualityCareerTechnicalEducationIndicator
        }

        If (![string]::IsNullOrWhiteSpace($ArenaSchedulingIndicator)) {
            <# String Value #>
            $Body.ArenaSchedulingIndicator = $ArenaSchedulingIndicator
        }

        If ($ExcludeFromScheduler) {
            <# Switch Value #>
            $Body.ExcludeFromScheduler = $ExcludeFromScheduler
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
