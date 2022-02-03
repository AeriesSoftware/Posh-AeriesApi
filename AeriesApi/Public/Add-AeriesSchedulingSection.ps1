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

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Period,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $FlexPeriodSequenceNumber,

        [ValidateRange(1, 10)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $PeriodBlock,

        [ValidateLength(1, 1)]
        [Parameter(Mandatory=$false)]
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

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber2,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $TeacherNumber3,

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

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $LowGrade,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $HighGrade,

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
        [object[]]
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

        If ($IsSectionStaff) {
            $Endpoint = "v5/schools/$SchoolCode/scheduling/sections"
        }
        else
        {
            $Endpoint = "v4/schools/$SchoolCode/scheduling/sections"
        }
    }

    Process {

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
