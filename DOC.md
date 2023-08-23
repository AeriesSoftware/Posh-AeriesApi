# AeriesApi Module
## Add-AeriesActivity
### Synopsis
Add an Activity/Award to Aeries
### Syntax
```powershell

Add-AeriesActivity [-SchoolCode] <Int16> [-StudentID] <Int32> [[-DateEntered] <DateTime>] [[-TypeCode] <String>] [[-ActivityOrAwardCode] <String>] [[-Name] <String>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [[-Hours] <Decimal>] [[-ReasonCode] <String>] [[-SeasonCode] <String>] [[-StatusCode] <String>] [[-TransportationDate] <DateTime>] [[-TransportationStatusCode] <String>] [[-CareerPathwayCode] <String>] [[-Comment] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>DateEntered</nobr> |  |  | false | false |  |
| <nobr>TypeCode</nobr> |  |  | false | false |  |
| <nobr>ActivityOrAwardCode</nobr> |  |  | false | false |  |
| <nobr>Name</nobr> |  |  | false | false |  |
| <nobr>StartDate</nobr> |  |  | false | false |  |
| <nobr>EndDate</nobr> |  |  | false | false |  |
| <nobr>Hours</nobr> |  |  | false | false | -1 |
| <nobr>ReasonCode</nobr> |  |  | false | false |  |
| <nobr>SeasonCode</nobr> |  |  | false | false |  |
| <nobr>StatusCode</nobr> |  |  | false | false |  |
| <nobr>TransportationDate</nobr> |  |  | false | false |  |
| <nobr>TransportationStatusCode</nobr> |  |  | false | false |  |
| <nobr>CareerPathwayCode</nobr> |  |  | false | false |  |
| <nobr>Comment</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesActivity -SchoolCode 994 -StudentID 99400001 -TypeCode "1" -DateEntered "2021-10-26" -Comment "This was added via PowerShell!"
This will create an Activity in Aeries for StudentID 99400001 at SchoolCode 994
```


## Add-AeriesAlternateCourseRequest
### Synopsis
Add an Alternate Course Request to Aeries
### Syntax
```powershell

Add-AeriesAlternateCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [-CourseNumber] <String> [[-RelativePrioritySortOrder] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>CourseNumber</nobr> |  |  | true | false |  |
| <nobr>RelativePrioritySortOrder</nobr> |  |  | false | false | -1 |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -CourseNumber "123456"
This will create an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Course Number 123456
```


## Add-AeriesAuthorization
### Synopsis
Add a new Authorization in Aeries
### Syntax
```powershell

Add-AeriesAuthorization [-SchoolCode] <Int16> [-StudentID] <Int32> [[-DateEntered] <DateTime>] [[-TypeCode] <String>] [[-MiscCode] <String>] [[-StatusCode] <String>] [[-StatusDate] <DateTime>] [[-EffectiveEndDate] <DateTime>] [[-Comment] <String>] [[-TestAdministration] <String>] [[-Source] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>DateEntered</nobr> |  |  | false | false |  |
| <nobr>TypeCode</nobr> |  |  | false | false |  |
| <nobr>MiscCode</nobr> |  |  | false | false |  |
| <nobr>StatusCode</nobr> |  |  | false | false |  |
| <nobr>StatusDate</nobr> |  |  | false | false |  |
| <nobr>EffectiveEndDate</nobr> |  |  | false | false |  |
| <nobr>Comment</nobr> |  |  | false | false |  |
| <nobr>TestAdministration</nobr> |  |  | false | false |  |
| <nobr>Source</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Comment "This was added with PowerShell"
This will add an Authorization to Aeries
```


## Add-AeriesContact
### Synopsis
Add a Contact to Aeries
### Syntax
```powershell

Add-AeriesContact [-StudentID] <Int32> [[-MailingName] <String>] [[-NamePrefix] <String>] [[-FirstName] <String>] [[-LastName] <String>] [[-MiddleName] <String>] [[-NameSuffix] <String>] [[-Address] <String>] [[-AddressCity] <String>] [[-AddressState] <String>] [[-AddressZip] <String>] [[-AddressZipExt] <String>] [[-RelationshipToStudentCode] <String>] [[-HomePhone] <String>] [[-WorkPhone] <String>] [[-WorkPhoneExt] <String>] [[-CellPhone] <String>] [[-EmailAddress] <String>] [[-ContactOrder] <Int32>] [[-MiscCode] <String>] [[-PrimaryContact] <Boolean>] [[-MailTagCode] <String>] [[-AccessToPortal] <Boolean>] [[-LivesWithStudentIndicator] <Boolean>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>MailingName</nobr> |  |  | false | false |  |
| <nobr>NamePrefix</nobr> |  |  | false | false |  |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Address</nobr> |  |  | false | false |  |
| <nobr>AddressCity</nobr> |  |  | false | false |  |
| <nobr>AddressState</nobr> |  |  | false | false |  |
| <nobr>AddressZip</nobr> |  |  | false | false |  |
| <nobr>AddressZipExt</nobr> |  |  | false | false |  |
| <nobr>RelationshipToStudentCode</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>WorkPhone</nobr> |  |  | false | false |  |
| <nobr>WorkPhoneExt</nobr> |  |  | false | false |  |
| <nobr>CellPhone</nobr> |  |  | false | false |  |
| <nobr>EmailAddress</nobr> |  |  | false | false |  |
| <nobr>ContactOrder</nobr> |  |  | false | false | -1 |
| <nobr>MiscCode</nobr> |  |  | false | false |  |
| <nobr>PrimaryContact</nobr> |  |  | false | false | False |
| <nobr>MailTagCode</nobr> |  |  | false | false |  |
| <nobr>AccessToPortal</nobr> |  |  | false | false | False |
| <nobr>LivesWithStudentIndicator</nobr> |  |  | false | false | False |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesContact -StudentID 99400001 -FirstName "Aeries" -LastName "Software"
This will create a Contact in Aeries for StudentID 99400001
```


## Add-AeriesCourseRequest
### Synopsis
Add a Course Request to Aeries
### Syntax
```powershell

Add-AeriesCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [[-SectionNumber] <Int16>] [-CourseNumber] <String> [[-PreferredTeacherNumber] <Int16>] [[-PreferredStaffID] <Int32>] [[-RejectCode] <String>] [[-AlternateTag] <String>] [[-ActualPrimaryCourseID] <String>] [[-PermanentLockCode] <String>] [[-AlternateCourseRequestReferences] <Int16[]>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | -1 |
| <nobr>CourseNumber</nobr> |  |  | true | false |  |
| <nobr>PreferredTeacherNumber</nobr> |  |  | false | false | -1 |
| <nobr>PreferredStaffID</nobr> |  |  | false | false | -1 |
| <nobr>RejectCode</nobr> |  |  | false | false |  |
| <nobr>AlternateTag</nobr> |  |  | false | false |  |
| <nobr>ActualPrimaryCourseID</nobr> |  |  | false | false |  |
| <nobr>PermanentLockCode</nobr> |  |  | false | false |  |
| <nobr>AlternateCourseRequestReferences</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesCourseRequest -SchoolCode 994 -StudentID 99400001 -CourseNumber "123456"
This will create a Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Course Number 123456
```


## Add-AeriesGradebookAssignment
### Synopsis
Add a new Gradbook Assignment in Aeries
### Syntax
```powershell

Add-AeriesGradebookAssignment [-GradebookNumber] <Int32> [-Description] <String> [[-AssignmentCategoryCode] <String>] [[-DateAssigned] <DateTime>] [[-DateDue] <DateTime>] [[-NumberCorrectPossible] <Decimal>] [[-PointsPossible] <Decimal>] [[-Comment] <String>] [[-FormativeSummativeIndicator] <String>] [[-RubricAssignment] <Boolean>] [[-ExternalID] <String>] [[-CreateInLinkedGradebooksToo] <Boolean>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | true | false | 0 |
| <nobr>Description</nobr> |  |  | true | false |  |
| <nobr>AssignmentCategoryCode</nobr> |  |  | false | false |  |
| <nobr>DateAssigned</nobr> |  |  | false | false |  |
| <nobr>DateDue</nobr> |  |  | false | false |  |
| <nobr>NumberCorrectPossible</nobr> |  |  | false | false | -1 |
| <nobr>PointsPossible</nobr> |  |  | false | false | -1 |
| <nobr>Comment</nobr> |  |  | false | false |  |
| <nobr>FormativeSummativeIndicator</nobr> |  |  | false | false |  |
| <nobr>RubricAssignment</nobr> |  |  | false | false | False |
| <nobr>ExternalID</nobr> |  |  | false | false |  |
| <nobr>CreateInLinkedGradebooksToo</nobr> |  |  | false | false | True |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesGradebookAssignment -GradebookNumber 123456 -Description "Assignment created from PowerShell"
This will add a Gradebook Assignment to Aeries
```


## Add-AeriesSchedulingSection
### Synopsis
Add a Scheduling Section to Aeries
### Syntax
```powershell

Add-AeriesSchedulingSection [-SchoolCode] <Int16> [[-SectionNumber] <Int16>] [[-Period] <Int16>] [[-FlexPeriodSequenceNumber] <Int32>] [[-PeriodBlock] <Int16>] [-Semester] <String> [[-SplitTerm] <String>] [[-ClassCalendarSequenceNumber] <Int32>] [-CourseID] <String> [[-TeacherNumber1] <Int16>] [[-TeacherNumber2] <Int16>] [[-TeacherNumber3] <Int16>] [[-HighlyQualifiedStatusCode1] <String>] [[-HighlyQualifiedStatusCode2] <String>] [[-HighlyQualifiedStatusCode3] <String>] [[-Room] <String>] [[-Credit] <Decimal>] [[-GenderRestriction] <String>] [[-LowGrade] <Int16>] [[-HighGrade] <Int16>] [[-MaxStudents] <Int16>] [[-InactiveStatusCode] <String>] [[-ProgramCode] <String>] [[-HourlyAttendanceProgramCode] <String>] [[-ExclusionCode] <String>] [[-CountsForADA] <String>] [[-MultiTeacherCode] <String>] [[-SchedulingGroup] <String>] [[-TeamCourseGroup] <String>] [[-TeamNumber] <Int32>] [[-SemesterGroup] <String>] [[-Track] <String>] [[-ClassID] <Int32>] [[-EducationServiceCode] <String>] [[-LanguageOfInstructionCode] <String>] [[-InstructionalStrategyCode] <String>] [[-FundingSourceCode] <String>] [[-CareerTechnicalEducationProviderCode] <String>] [[-IndependentStudyIndicator] <String>] [[-DistanceLearningIndicator] <String>] [[-ItinerantTeacherIndicator] <String>] [-UseSupplementalAttendance] [[-PopulationServedCode] <String>] [[-ClassTypeCode] <String>] [[-MonthlyMinutes] <Int16>] [[-UserCode1] <String>] [[-UserCode2] <String>] [[-UserCode3] <String>] [[-UserCode4] <String>] [[-UserCode5] <String>] [[-UserCode6] <String>] [[-UserCode7] <String>] [[-UserCode8] <String>] [[-ArticulatedCourseIndicator] <String>] [[-NonCampusBasedInstructionCode] <String>] [[-PreKSchoolTypeCode] <String>] [[-PreKCurriculaCode] <String>] [-IsHighQualityPreKProgram] [[-InstructionTypeCode] <String>] [[-ProgramEvaluationTypeCode] <String>] [[-EducationalEnvironmentCode] <String>] [[-CareerTechnicalEducationHours] <Int16>] [[-ContentSubcategoryCode] <String>] [[-CharterNonCoreIndicator] <String>] [[-AdvancedCourseStateCode] <String>] [[-OnlineInstructionTypeCode] <String>] [[-MiddleSchoolCoreIndicator] <String>] [[-NonCredentialedAuthorizationCode] <String>] [[-HighQualityCareerTechnicalEducationIndicator] <String>] [[-ArenaSchedulingIndicator] <String>] [-ExcludeFromScheduler] [[-SectionStaffMembers] <SectionStaffMember[]>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | 0 |
| <nobr>Period</nobr> |  |  | false | false | -1 |
| <nobr>FlexPeriodSequenceNumber</nobr> |  |  | false | false | 0 |
| <nobr>PeriodBlock</nobr> |  |  | false | false | 0 |
| <nobr>Semester</nobr> |  |  | true | false |  |
| <nobr>SplitTerm</nobr> |  | If the value is blank, accept it. Might be section staff If is in valid set, accept it If value is 6 or less characters, accept it | false | false |  |
| <nobr>ClassCalendarSequenceNumber</nobr> |  |  | false | false | 0 |
| <nobr>CourseID</nobr> |  |  | true | false |  |
| <nobr>TeacherNumber1</nobr> |  |  | false | false | 0 |
| <nobr>TeacherNumber2</nobr> |  |  | false | false | -1 |
| <nobr>TeacherNumber3</nobr> |  |  | false | false | -1 |
| <nobr>HighlyQualifiedStatusCode1</nobr> |  |  | false | false |  |
| <nobr>HighlyQualifiedStatusCode2</nobr> |  |  | false | false |  |
| <nobr>HighlyQualifiedStatusCode3</nobr> |  |  | false | false |  |
| <nobr>Room</nobr> |  |  | false | false |  |
| <nobr>Credit</nobr> |  |  | false | false | 0 |
| <nobr>GenderRestriction</nobr> |  |  | false | false |  |
| <nobr>LowGrade</nobr> |  |  | false | false | -99 |
| <nobr>HighGrade</nobr> |  | -99 because technically -1 that I usually use is a valid grade | false | false | -99 |
| <nobr>MaxStudents</nobr> |  | -99 because technically -1 that I usually use is a valid grade | false | false | 0 |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>ProgramCode</nobr> |  |  | false | false |  |
| <nobr>HourlyAttendanceProgramCode</nobr> |  |  | false | false |  |
| <nobr>ExclusionCode</nobr> |  |  | false | false |  |
| <nobr>CountsForADA</nobr> |  |  | false | false |  |
| <nobr>MultiTeacherCode</nobr> |  |  | false | false |  |
| <nobr>SchedulingGroup</nobr> |  |  | false | false |  |
| <nobr>TeamCourseGroup</nobr> |  |  | false | false |  |
| <nobr>TeamNumber</nobr> |  |  | false | false | 0 |
| <nobr>SemesterGroup</nobr> |  |  | false | false |  |
| <nobr>Track</nobr> |  |  | false | false |  |
| <nobr>ClassID</nobr> |  |  | false | false | 0 |
| <nobr>EducationServiceCode</nobr> |  |  | false | false |  |
| <nobr>LanguageOfInstructionCode</nobr> |  |  | false | false |  |
| <nobr>InstructionalStrategyCode</nobr> |  |  | false | false |  |
| <nobr>FundingSourceCode</nobr> |  |  | false | false |  |
| <nobr>CareerTechnicalEducationProviderCode</nobr> |  |  | false | false |  |
| <nobr>IndependentStudyIndicator</nobr> |  |  | false | false |  |
| <nobr>DistanceLearningIndicator</nobr> |  |  | false | false |  |
| <nobr>ItinerantTeacherIndicator</nobr> |  |  | false | false |  |
| <nobr>UseSupplementalAttendance</nobr> |  |  | false | false | False |
| <nobr>PopulationServedCode</nobr> |  |  | false | false |  |
| <nobr>ClassTypeCode</nobr> |  |  | false | false |  |
| <nobr>MonthlyMinutes</nobr> |  |  | false | false | 0 |
| <nobr>UserCode1</nobr> |  |  | false | false |  |
| <nobr>UserCode2</nobr> |  |  | false | false |  |
| <nobr>UserCode3</nobr> |  |  | false | false |  |
| <nobr>UserCode4</nobr> |  |  | false | false |  |
| <nobr>UserCode5</nobr> |  |  | false | false |  |
| <nobr>UserCode6</nobr> |  |  | false | false |  |
| <nobr>UserCode7</nobr> |  |  | false | false |  |
| <nobr>UserCode8</nobr> |  |  | false | false |  |
| <nobr>ArticulatedCourseIndicator</nobr> |  |  | false | false |  |
| <nobr>NonCampusBasedInstructionCode</nobr> |  |  | false | false |  |
| <nobr>PreKSchoolTypeCode</nobr> |  |  | false | false |  |
| <nobr>PreKCurriculaCode</nobr> |  |  | false | false |  |
| <nobr>IsHighQualityPreKProgram</nobr> |  |  | false | false | False |
| <nobr>InstructionTypeCode</nobr> |  |  | false | false |  |
| <nobr>ProgramEvaluationTypeCode</nobr> |  |  | false | false |  |
| <nobr>EducationalEnvironmentCode</nobr> |  |  | false | false |  |
| <nobr>CareerTechnicalEducationHours</nobr> |  |  | false | false | 0 |
| <nobr>ContentSubcategoryCode</nobr> |  |  | false | false |  |
| <nobr>CharterNonCoreIndicator</nobr> |  |  | false | false |  |
| <nobr>AdvancedCourseStateCode</nobr> |  |  | false | false |  |
| <nobr>OnlineInstructionTypeCode</nobr> |  |  | false | false |  |
| <nobr>MiddleSchoolCoreIndicator</nobr> |  |  | false | false |  |
| <nobr>NonCredentialedAuthorizationCode</nobr> |  |  | false | false |  |
| <nobr>HighQualityCareerTechnicalEducationIndicator</nobr> |  |  | false | false |  |
| <nobr>ArenaSchedulingIndicator</nobr> |  |  | false | false |  |
| <nobr>ExcludeFromScheduler</nobr> |  |  | false | false | False |
| <nobr>SectionStaffMembers</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesSchedulingSection -SchoolCode 884
This will create a Schedule Section in Aeries for SchoolCode 884
```


## Add-AeriesStaff
### Synopsis
Add a new Staff in Aeries
### Syntax
```powershell

Add-AeriesStaff [[-StaffID] <Int32>] [[-FirstName] <String>] [[-LastName] <String>] [[-MiddleName] <String>] [[-BirthYear] <Int16>] [[-BirthDate] <DateTime>] [[-FullTimePercentage] <Int16>] [[-HireDate] <DateTime>] [[-LeaveDate] <DateTime>] [[-InactiveStatusCode] <String>] [[-StateEducatorID] <String>] [[-EmailAddress] <String>] [[-PrimaryAeriesSchool] <Int16>] [[-NetworkLoginID] <String>] [[-AlternateEmailAddress] <String>] [[-HumanResourcesSystemID] <String>] [[-CellPhone] <String>] [[-Title] <String>] [[-Gender] <String>] [[-EducationLevelCode] <String>] [[-EthnicityCode] <String>] [[-RaceCode1] <String>] [[-RaceCode2] <String>] [[-RaceCode3] <String>] [[-RaceCode4] <String>] [[-RaceCode5] <String>] [[-PositionStatusCode] <String>] [[-TotalYearsOfEduService] <Int16>] [[-TotalYearsInThisDistrict] <Int16>] [[-PreviousLastName] <String>] [[-PreviousFirstName] <String>] [[-PreviousMiddleName] <String>] [[-NameSuffix] <String>] [[-Address] <String>] [[-AddressCity] <String>] [[-AddressState] <String>] [[-AddressZipCode] <String>] [[-AddressZipExt] <String>] [[-HomePhone] <String>] [[-EmergencyContactName] <String>] [[-EmergencyContactPhone] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | false | false | -1 |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>BirthYear</nobr> |  |  | false | false | -1 |
| <nobr>BirthDate</nobr> |  |  | false | false |  |
| <nobr>FullTimePercentage</nobr> |  |  | false | false | -1 |
| <nobr>HireDate</nobr> |  |  | false | false |  |
| <nobr>LeaveDate</nobr> |  |  | false | false |  |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>StateEducatorID</nobr> |  |  | false | false |  |
| <nobr>EmailAddress</nobr> |  |  | false | false |  |
| <nobr>PrimaryAeriesSchool</nobr> |  |  | false | false | -1 |
| <nobr>NetworkLoginID</nobr> |  |  | false | false |  |
| <nobr>AlternateEmailAddress</nobr> |  |  | false | false |  |
| <nobr>HumanResourcesSystemID</nobr> |  |  | false | false |  |
| <nobr>CellPhone</nobr> |  |  | false | false |  |
| <nobr>Title</nobr> |  |  | false | false |  |
| <nobr>Gender</nobr> |  |  | false | false |  |
| <nobr>EducationLevelCode</nobr> |  |  | false | false |  |
| <nobr>EthnicityCode</nobr> |  |  | false | false |  |
| <nobr>RaceCode1</nobr> |  |  | false | false |  |
| <nobr>RaceCode2</nobr> |  |  | false | false |  |
| <nobr>RaceCode3</nobr> |  |  | false | false |  |
| <nobr>RaceCode4</nobr> |  |  | false | false |  |
| <nobr>RaceCode5</nobr> |  |  | false | false |  |
| <nobr>PositionStatusCode</nobr> |  |  | false | false |  |
| <nobr>TotalYearsOfEduService</nobr> |  |  | false | false | -1 |
| <nobr>TotalYearsInThisDistrict</nobr> |  |  | false | false | -1 |
| <nobr>PreviousLastName</nobr> |  |  | false | false |  |
| <nobr>PreviousFirstName</nobr> |  |  | false | false |  |
| <nobr>PreviousMiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Address</nobr> |  |  | false | false |  |
| <nobr>AddressCity</nobr> |  |  | false | false |  |
| <nobr>AddressState</nobr> |  |  | false | false |  |
| <nobr>AddressZipCode</nobr> |  |  | false | false |  |
| <nobr>AddressZipExt</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>EmergencyContactName</nobr> |  |  | false | false |  |
| <nobr>EmergencyContactPhone</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesStaff -StaffID 1 -FirstName "Aeries" -LastName "Software"
This will add a Staff to Aeries
```


## Add-AeriesStaffAssignment
### Synopsis
Add a Staff Assignment in Aeries
### Syntax
```powershell

Add-AeriesStaffAssignment [-StaffID] <Int32> [-AssignmentType] <String> [[-JobClassification] <String>] [[-FullTimePercentage] <Double>] [[-NonClassroomBasedJobAssignment1] <String>] [[-NonClassroomBasedJobAssignment2] <String>] [[-NonClassroomBasedJobAssignment3] <String>] [[-NonClassroomBasedJobAssignment4] <String>] [[-NonClassroomBasedJobAssignment5] <String>] [[-NonClassroomBasedJobAssignment6] <String>] [[-NonClassroomBasedJobAssignment7] <String>] [[-SchoolCode] <Int16>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentType</nobr> |  |  | true | false |  |
| <nobr>JobClassification</nobr> |  | If the passed in value is blank or null, accept it Classified can have up to 3 character codes Certificated can have up to 2 character codes | false | false |  |
| <nobr>FullTimePercentage</nobr> |  |  | false | false | -1 |
| <nobr>NonClassroomBasedJobAssignment1</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment2</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment3</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment4</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment5</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment6</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment7</nobr> |  |  | false | false |  |
| <nobr>SchoolCode</nobr> |  |  | false | false | -1 |
| <nobr>StartDate</nobr> |  |  | false | false |  |
| <nobr>EndDate</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified"
This will create a Staff Assignment for Staff ID 1 with an Assignment Type of "classified" in Aeries
```


## Add-AeriesStudent
### Synopsis
Add a new Student in Aeries
### Syntax
```powershell

Add-AeriesStudent [-SchoolCode] <Int16> [[-LastName] <String>] [[-FirstName] <String>] [[-MiddleName] <String>] [[-NameSuffix] <String>] [[-Gender] <String>] [[-Grade] <String>] [[-NextGrade] <String>] [[-NextSchool] <Int16>] [[-BirthDate] <DateTime>] [[-InactiveStatusCode] <String>] [[-HomePhone] <String>] [[-HomeLanguageCode] <String>] [[-CorrespondanceLanguageCode] <String>] [[-LanguageFluencyCode] <String>] [[-EthnicityCode] <String>] [[-Race1Code] <String>] [[-Race2Code] <String>] [[-Race3Code] <String>] [[-Race4Code] <String>] [[-Race5Code] <String>] [[-LastSchool] <Int16>] [[-ResidenceSchool] <Int16>] [[-NextResidenceSchool] <Int16>] [[-SchoolEnterDate] <DateTime>] [[-DistrictEnterDate] <DateTime>] [[-BirthCity] <String>] [[-BirthStateCode] <String>] [[-BirthCountryCode] <String>] [[-ParentEdLevelCode] <String>] [[-ParentGuardianName] <String>] [[-MailingAddress] <String>] [[-MailingAddressCity] <String>] [[-MailingAddressState] <String>] [[-MailingAddressZipCode] <String>] [[-MailingAddressZipExt] <String>] [[-ResidenceAddress] <String>] [[-ResidenceAddressCity] <String>] [[-ResidenceAddressState] <String>] [[-ResidenceAddressZipCode] <String>] [[-ResidenceAddressZipExt] <String>] [[-HomeLanguageSurveyFirstLanguageCode] <String>] [[-HomeLanguageSurveyPrimaryLanguageCode] <String>] [[-HomeLanguageSurveyHomeLanguageCode] <String>] [[-HomeLanguageSurveyAdultLanguageCode] <String>] [[-USEnterDate] <DateTime>] [[-USSchoolEnterDate] <DateTime>] [[-UserCode1] <String>] [[-UserCode2] <String>] [[-UserCode3] <String>] [[-UserCode4] <String>] [[-UserCode5] <String>] [[-UserCode6] <String>] [[-UserCode7] <String>] [[-UserCode8] <String>] [[-UserCode9] <String>] [[-UserCode10] <String>] [[-UserCode11] <String>] [[-UserCode12] <String>] [[-UserCode13] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Gender</nobr> |  |  | false | false |  |
| <nobr>Grade</nobr> |  |  | false | false |  |
| <nobr>NextGrade</nobr> |  |  | false | false |  |
| <nobr>NextSchool</nobr> |  |  | false | false | -1 |
| <nobr>BirthDate</nobr> |  |  | false | false |  |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageCode</nobr> |  |  | false | false |  |
| <nobr>CorrespondanceLanguageCode</nobr> |  |  | false | false |  |
| <nobr>LanguageFluencyCode</nobr> |  |  | false | false |  |
| <nobr>EthnicityCode</nobr> |  |  | false | false |  |
| <nobr>Race1Code</nobr> |  |  | false | false |  |
| <nobr>Race2Code</nobr> |  |  | false | false |  |
| <nobr>Race3Code</nobr> |  |  | false | false |  |
| <nobr>Race4Code</nobr> |  |  | false | false |  |
| <nobr>Race5Code</nobr> |  |  | false | false |  |
| <nobr>LastSchool</nobr> |  |  | false | false | -1 |
| <nobr>ResidenceSchool</nobr> |  |  | false | false | -1 |
| <nobr>NextResidenceSchool</nobr> |  |  | false | false | -1 |
| <nobr>SchoolEnterDate</nobr> |  |  | false | false |  |
| <nobr>DistrictEnterDate</nobr> |  |  | false | false |  |
| <nobr>BirthCity</nobr> |  |  | false | false |  |
| <nobr>BirthStateCode</nobr> |  |  | false | false |  |
| <nobr>BirthCountryCode</nobr> |  |  | false | false |  |
| <nobr>ParentEdLevelCode</nobr> |  |  | false | false |  |
| <nobr>ParentGuardianName</nobr> |  |  | false | false |  |
| <nobr>MailingAddress</nobr> |  |  | false | false |  |
| <nobr>MailingAddressCity</nobr> |  |  | false | false |  |
| <nobr>MailingAddressState</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddress</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressCity</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressState</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyFirstLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyPrimaryLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyHomeLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyAdultLanguageCode</nobr> |  |  | false | false |  |
| <nobr>USEnterDate</nobr> |  |  | false | false |  |
| <nobr>USSchoolEnterDate</nobr> |  |  | false | false |  |
| <nobr>UserCode1</nobr> |  |  | false | false |  |
| <nobr>UserCode2</nobr> |  |  | false | false |  |
| <nobr>UserCode3</nobr> |  |  | false | false |  |
| <nobr>UserCode4</nobr> |  |  | false | false |  |
| <nobr>UserCode5</nobr> |  |  | false | false |  |
| <nobr>UserCode6</nobr> |  |  | false | false |  |
| <nobr>UserCode7</nobr> |  |  | false | false |  |
| <nobr>UserCode8</nobr> |  |  | false | false |  |
| <nobr>UserCode9</nobr> |  |  | false | false |  |
| <nobr>UserCode10</nobr> |  |  | false | false |  |
| <nobr>UserCode11</nobr> |  |  | false | false |  |
| <nobr>UserCode12</nobr> |  |  | false | false |  |
| <nobr>UserCode13</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Add-AeriesStudent -SchoolCode 994 -FirstName "Aeries" -LastName "Software"
This will add a student to the specific School Code in Aeries
```


## Edit-AeriesActivity
### Synopsis
Edit an Activity/Award to Aeries
### Syntax
```powershell

Edit-AeriesActivity [-SchoolCode] <Int16> [-StudentID] <Int32> [[-Sequence] <Int16>] [[-DateEntered] <DateTime>] [[-TypeCode] <String>] [[-ActivityOrAwardCode] <String>] [[-Name] <String>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [[-Hours] <Decimal>] [[-ReasonCode] <String>] [[-SeasonCode] <String>] [[-StatusCode] <String>] [[-TransportationDate] <DateTime>] [[-TransportationStatusCode] <String>] [[-CareerPathwayCode] <String>] [[-Comment] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>DateEntered</nobr> |  |  | false | false |  |
| <nobr>TypeCode</nobr> |  |  | false | false |  |
| <nobr>ActivityOrAwardCode</nobr> |  |  | false | false |  |
| <nobr>Name</nobr> |  |  | false | false |  |
| <nobr>StartDate</nobr> |  |  | false | false |  |
| <nobr>EndDate</nobr> |  |  | false | false |  |
| <nobr>Hours</nobr> |  |  | false | false | -1 |
| <nobr>ReasonCode</nobr> |  |  | false | false |  |
| <nobr>SeasonCode</nobr> |  |  | false | false |  |
| <nobr>StatusCode</nobr> |  |  | false | false |  |
| <nobr>TransportationDate</nobr> |  |  | false | false |  |
| <nobr>TransportationStatusCode</nobr> |  |  | false | false |  |
| <nobr>CareerPathwayCode</nobr> |  |  | false | false |  |
| <nobr>Comment</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesActivity -SchoolCode 994 -StudentID 99400001 -Sequence 1 -TypeCode "1" -DateEntered "2021-10-26" -Comment "This was added via PowerShell!"
This will edit or create an Activity in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
```


## Edit-AeriesAddress
### Synopsis
Edit a Students Address in Aeries
### Syntax
```powershell

Edit-AeriesAddress [-StudentID] <Int32> [-UpdateType] <String> [[-EffectiveStartDate] <DateTime>] [[-MailingAddress] <String>] [[-MailingAddressCity] <String>] [[-MailingAddressState] <String>] [[-MailingAddressZipCode] <String>] [[-MailingAddressZipExt] <String>] [[-ResidenceAddress] <String>] [[-ResidenceAddressCity] <String>] [[-ResidenceAddressState] <String>] [[-ResidenceAddressZipCode] <String>] [[-ResidenceAddressZipExt] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>UpdateType</nobr> |  |  | true | false |  |
| <nobr>EffectiveStartDate</nobr> |  |  | false | false | \(Get-Date\) |
| <nobr>MailingAddress</nobr> |  |  | false | false |  |
| <nobr>MailingAddressCity</nobr> |  |  | false | false |  |
| <nobr>MailingAddressState</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddress</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressCity</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressState</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipExt</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesAddress -StudentID 99400001 -UpdateType "Change" -MailingAddress "770 The City Dr S #6500" -MailingAddressCity "Orange" -MailingAddressState "CA" -MailingAddressZipCode "92868"
This will update Student ID 99400001 to have the Address of "770 The City Dr S #6500, Orange, CA 92868"
```


## Edit-AeriesAlternateCourseRequest
### Synopsis
Edit an Alternate Course Request to Aeries
### Syntax
```powershell

Edit-AeriesAlternateCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [-Sequence] <Int16> [[-CourseNumber] <String>] [[-RelativePrioritySortOrder] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>CourseNumber</nobr> |  |  | false | false |  |
| <nobr>RelativePrioritySortOrder</nobr> |  |  | false | false | -1 |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1 -CourseNumber "123456"
This will edit an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
```


## Edit-AeriesAuthorization
### Synopsis
Edit an Authorization in Aeries
### Syntax
```powershell

Edit-AeriesAuthorization [-SchoolCode] <Int16> [-StudentID] <Int32> [[-Sequence] <Int16>] [[-DateEntered] <DateTime>] [[-TypeCode] <String>] [[-MiscCode] <String>] [[-StatusCode] <String>] [[-StatusDate] <DateTime>] [[-EffectiveEndDate] <DateTime>] [[-Comment] <String>] [[-TestAdministration] <String>] [[-Source] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>DateEntered</nobr> |  |  | false | false |  |
| <nobr>TypeCode</nobr> |  |  | false | false |  |
| <nobr>MiscCode</nobr> |  |  | false | false |  |
| <nobr>StatusCode</nobr> |  |  | false | false |  |
| <nobr>StatusDate</nobr> |  |  | false | false |  |
| <nobr>EffectiveEndDate</nobr> |  |  | false | false |  |
| <nobr>Comment</nobr> |  |  | false | false |  |
| <nobr>TestAdministration</nobr> |  |  | false | false |  |
| <nobr>Source</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Sequence 1 -Comment "This was edited with PowerShell"
This will edit an Authorization in Aeries
```


## Edit-AeriesContact
### Synopsis
Edit a Contact in Aeries
### Syntax
```powershell

Edit-AeriesContact [-StudentID] <Int32> [-Sequence] <Int16> [[-MailingName] <String>] [[-NamePrefix] <String>] [[-FirstName] <String>] [[-LastName] <String>] [[-MiddleName] <String>] [[-NameSuffix] <String>] [[-Address] <String>] [[-AddressCity] <String>] [[-AddressState] <String>] [[-AddressZip] <String>] [[-AddressZipExt] <String>] [[-RelationshipToStudentCode] <String>] [[-HomePhone] <String>] [[-WorkPhone] <String>] [[-WorkPhoneExt] <String>] [[-CellPhone] <String>] [[-EmailAddress] <String>] [[-ContactOrder] <Int32>] [[-MiscCode] <String>] [[-PrimaryContact] <Boolean>] [[-MailTagCode] <String>] [[-AccessToPortal] <Boolean>] [[-LivesWithStudentIndicator] <Boolean>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>MailingName</nobr> |  |  | false | false |  |
| <nobr>NamePrefix</nobr> |  |  | false | false |  |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Address</nobr> |  |  | false | false |  |
| <nobr>AddressCity</nobr> |  |  | false | false |  |
| <nobr>AddressState</nobr> |  |  | false | false |  |
| <nobr>AddressZip</nobr> |  |  | false | false |  |
| <nobr>AddressZipExt</nobr> |  |  | false | false |  |
| <nobr>RelationshipToStudentCode</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>WorkPhone</nobr> |  |  | false | false |  |
| <nobr>WorkPhoneExt</nobr> |  |  | false | false |  |
| <nobr>CellPhone</nobr> |  |  | false | false |  |
| <nobr>EmailAddress</nobr> |  |  | false | false |  |
| <nobr>ContactOrder</nobr> |  |  | false | false | -1 |
| <nobr>MiscCode</nobr> |  |  | false | false |  |
| <nobr>PrimaryContact</nobr> |  |  | false | false | False |
| <nobr>MailTagCode</nobr> |  |  | false | false |  |
| <nobr>AccessToPortal</nobr> |  |  | false | false | False |
| <nobr>LivesWithStudentIndicator</nobr> |  |  | false | false | False |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesContact -StudentID 99400001 -Sequence 1 -FirstName "Aeries" -LastName "Software"
This will edit a Contact in Aeries for StudentID 99400001
```


## Edit-AeriesCourseRequest
### Synopsis
Edit a Course Request to Aeries
### Syntax
```powershell

Edit-AeriesCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [-Sequence] <Int16> [[-SectionNumber] <Int16>] [-CourseNumber] <String> [[-PreferredTeacherNumber] <Int16>] [[-PreferredStaffID] <Int32>] [[-RejectCode] <String>] [[-AlternateTag] <String>] [[-ActualPrimaryCourseID] <String>] [[-PermanentLockCode] <String>] [[-AlternateCourseRequestReferences] <Int16[]>] [[-AlternateCourseRequestUpdateOptions] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | -1 |
| <nobr>CourseNumber</nobr> |  |  | true | false |  |
| <nobr>PreferredTeacherNumber</nobr> |  |  | false | false | -1 |
| <nobr>PreferredStaffID</nobr> |  |  | false | false | -1 |
| <nobr>RejectCode</nobr> |  |  | false | false |  |
| <nobr>AlternateTag</nobr> |  |  | false | false |  |
| <nobr>ActualPrimaryCourseID</nobr> |  |  | false | false |  |
| <nobr>PermanentLockCode</nobr> |  |  | false | false |  |
| <nobr>AlternateCourseRequestReferences</nobr> |  |  | false | false |  |
| <nobr>AlternateCourseRequestUpdateOptions</nobr> |  | Must provide either append or replace if providing AlternateCourseRequestReferences | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1 -CourseNumber "123456"
This will edit a Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
```


## Edit-AeriesGradebookAssignment
### Synopsis
Edit a Gradbook Assignment in Aeries
### Syntax
```powershell

Edit-AeriesGradebookAssignment -GradebookNumber <Int32> -AssignmentNumber <Int32> [-Description <String>] [-AssignmentCategoryCode <String>] [-DateAssigned <DateTime>] [-DateDue <DateTime>] [-NumberCorrectPossible <Decimal>] [-PointsPossible <Decimal>] [-GradingCompleted <Boolean>] [-Comment <String>] [-FormativeSummativeIndicator <String>] [-RubricAssignment <Boolean>] [-ExternalID <String>] [-UpdateLinkedGradebooksToo <Boolean>] [<CommonParameters>]

Edit-AeriesGradebookAssignment -UniqueID <String> [-Description <String>] [-AssignmentCategoryCode <String>] [-DateAssigned <DateTime>] [-DateDue <DateTime>] [-NumberCorrectPossible <Decimal>] [-PointsPossible <Decimal>] [-GradingCompleted <Boolean>] [-Comment <String>] [-FormativeSummativeIndicator <String>] [-RubricAssignment <Boolean>] [-ExternalID <String>] [-UpdateLinkedGradebooksToo <Boolean>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentNumber</nobr> |  |  | true | false | 0 |
| <nobr>UniqueID</nobr> |  |  | true | false |  |
| <nobr>Description</nobr> |  |  | false | false |  |
| <nobr>AssignmentCategoryCode</nobr> |  |  | false | false |  |
| <nobr>DateAssigned</nobr> |  |  | false | false |  |
| <nobr>DateDue</nobr> |  |  | false | false |  |
| <nobr>NumberCorrectPossible</nobr> |  |  | false | false | -1 |
| <nobr>PointsPossible</nobr> |  |  | false | false | -1 |
| <nobr>GradingCompleted</nobr> |  |  | false | false | -1 |
| <nobr>Comment</nobr> |  |  | false | false |  |
| <nobr>FormativeSummativeIndicator</nobr> |  |  | false | false |  |
| <nobr>RubricAssignment</nobr> |  |  | false | false | False |
| <nobr>ExternalID</nobr> |  |  | false | false |  |
| <nobr>UpdateLinkedGradebooksToo</nobr> |  |  | false | false | True |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesGradebookAssignment -GradebookNumber 123456 -AssignmentNumber 1 -Description "Assignment edited from PowerShell"
This will edit a Gradebook Assignment in Aeries
```


## Edit-AeriesGradebookAssignmentScore
### Synopsis
Edit a Gradbook Assignment in Aeries
### Syntax
```powershell

Edit-AeriesGradebookAssignmentScore -GradebookNumber <Int32> -AssignmentNumber <Int32> -StudentID <Int32> [-NumberCorrect <Decimal>] [-DateCompleted <DateTime>] [-AeriesStandardID <String>] [-AcademicBenchmarkID <String>] [<CommonParameters>]

Edit-AeriesGradebookAssignmentScore -UniqueID <String> -StudentID <Int32> [-NumberCorrect <Decimal>] [-DateCompleted <DateTime>] [-AeriesStandardID <String>] [-AcademicBenchmarkID <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentNumber</nobr> |  |  | true | false | 0 |
| <nobr>UniqueID</nobr> |  |  | true | false |  |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>NumberCorrect</nobr> |  |  | false | false | -1 |
| <nobr>DateCompleted</nobr> |  |  | false | false |  |
| <nobr>AeriesStandardID</nobr> |  |  | false | false |  |
| <nobr>AcademicBenchmarkID</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesGradebookAssignmentScore -GradebookNumber 4366926 -AssignmentNumber 122 -StudentID 99400156 -NumberCorrect 5
This will edit a Gradebook Assignment Score for Student ID 99400156 in Gradebook 4366926 on Assignment 122 in Aeries
```


## Edit-AeriesSchedulingSection
### Synopsis
Edit a Scheduling Section in Aeries
### Syntax
```powershell

Edit-AeriesSchedulingSection [-SchoolCode] <Int16> [-SectionNumber] <Int16> [[-Period] <Int16>] [[-FlexPeriodSequenceNumber] <Int32>] [[-PeriodBlock] <Int16>] [[-Semester] <String>] [[-SplitTerm] <String>] [[-ClassCalendarSequenceNumber] <Int32>] [[-CourseID] <String>] [[-TeacherNumber1] <Int16>] [[-TeacherNumber2] <Int16>] [[-TeacherNumber3] <Int16>] [[-HighlyQualifiedStatusCode1] <String>] [[-HighlyQualifiedStatusCode2] <String>] [[-HighlyQualifiedStatusCode3] <String>] [[-Room] <String>] [[-Credit] <Decimal>] [[-GenderRestriction] <String>] [[-LowGrade] <Int16>] [[-HighGrade] <Int16>] [[-MaxStudents] <Int16>] [[-InactiveStatusCode] <String>] [[-ProgramCode] <String>] [[-HourlyAttendanceProgramCode] <String>] [[-ExclusionCode] <String>] [[-CountsForADA] <String>] [[-MultiTeacherCode] <String>] [[-SchedulingGroup] <String>] [[-TeamCourseGroup] <String>] [[-TeamNumber] <Int32>] [[-SemesterGroup] <String>] [[-Track] <String>] [[-ClassID] <Int32>] [[-EducationServiceCode] <String>] [[-LanguageOfInstructionCode] <String>] [[-InstructionalStrategyCode] <String>] [[-FundingSourceCode] <String>] [[-CareerTechnicalEducationProviderCode] <String>] [[-IndependentStudyIndicator] <String>] [[-DistanceLearningIndicator] <String>] [[-ItinerantTeacherIndicator] <String>] [-UseSupplementalAttendance] [[-PopulationServedCode] <String>] [[-ClassTypeCode] <String>] [[-MonthlyMinutes] <Int16>] [[-UserCode1] <String>] [[-UserCode2] <String>] [[-UserCode3] <String>] [[-UserCode4] <String>] [[-UserCode5] <String>] [[-UserCode6] <String>] [[-UserCode7] <String>] [[-UserCode8] <String>] [[-ArticulatedCourseIndicator] <String>] [[-NonCampusBasedInstructionCode] <String>] [[-PreKSchoolTypeCode] <String>] [[-PreKCurriculaCode] <String>] [-IsHighQualityPreKProgram] [[-InstructionTypeCode] <String>] [[-ProgramEvaluationTypeCode] <String>] [[-EducationalEnvironmentCode] <String>] [[-CareerTechnicalEducationHours] <Int16>] [[-ContentSubcategoryCode] <String>] [[-CharterNonCoreIndicator] <String>] [[-AdvancedCourseStateCode] <String>] [[-OnlineInstructionTypeCode] <String>] [[-MiddleSchoolCoreIndicator] <String>] [[-NonCredentialedAuthorizationCode] <String>] [[-HighQualityCareerTechnicalEducationIndicator] <String>] [[-ArenaSchedulingIndicator] <String>] [-ExcludeFromScheduler] [[-SectionStaffMembers] <SectionStaffMember[]>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | true | false | 0 |
| <nobr>Period</nobr> |  |  | false | false | -1 |
| <nobr>FlexPeriodSequenceNumber</nobr> |  |  | false | false | 0 |
| <nobr>PeriodBlock</nobr> |  |  | false | false | 0 |
| <nobr>Semester</nobr> |  |  | false | false |  |
| <nobr>SplitTerm</nobr> |  | If the value is blank, accept it. Might be section staff If is in valid set, accept it If value is 6 or less characters, accept it | false | false |  |
| <nobr>ClassCalendarSequenceNumber</nobr> |  |  | false | false | 0 |
| <nobr>CourseID</nobr> |  |  | false | false |  |
| <nobr>TeacherNumber1</nobr> |  |  | false | false | -1 |
| <nobr>TeacherNumber2</nobr> |  |  | false | false | -1 |
| <nobr>TeacherNumber3</nobr> |  |  | false | false | -1 |
| <nobr>HighlyQualifiedStatusCode1</nobr> |  |  | false | false |  |
| <nobr>HighlyQualifiedStatusCode2</nobr> |  |  | false | false |  |
| <nobr>HighlyQualifiedStatusCode3</nobr> |  |  | false | false |  |
| <nobr>Room</nobr> |  |  | false | false |  |
| <nobr>Credit</nobr> |  |  | false | false | 0 |
| <nobr>GenderRestriction</nobr> |  |  | false | false |  |
| <nobr>LowGrade</nobr> |  |  | false | false | -99 |
| <nobr>HighGrade</nobr> |  | -99 because technically -1 that I usually use is a valid grade | false | false | -99 |
| <nobr>MaxStudents</nobr> |  | -99 because technically -1 that I usually use is a valid grade | false | false | 0 |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>ProgramCode</nobr> |  |  | false | false |  |
| <nobr>HourlyAttendanceProgramCode</nobr> |  |  | false | false |  |
| <nobr>ExclusionCode</nobr> |  |  | false | false |  |
| <nobr>CountsForADA</nobr> |  |  | false | false |  |
| <nobr>MultiTeacherCode</nobr> |  |  | false | false |  |
| <nobr>SchedulingGroup</nobr> |  |  | false | false |  |
| <nobr>TeamCourseGroup</nobr> |  |  | false | false |  |
| <nobr>TeamNumber</nobr> |  |  | false | false | 0 |
| <nobr>SemesterGroup</nobr> |  |  | false | false |  |
| <nobr>Track</nobr> |  |  | false | false |  |
| <nobr>ClassID</nobr> |  |  | false | false | 0 |
| <nobr>EducationServiceCode</nobr> |  |  | false | false |  |
| <nobr>LanguageOfInstructionCode</nobr> |  |  | false | false |  |
| <nobr>InstructionalStrategyCode</nobr> |  |  | false | false |  |
| <nobr>FundingSourceCode</nobr> |  |  | false | false |  |
| <nobr>CareerTechnicalEducationProviderCode</nobr> |  |  | false | false |  |
| <nobr>IndependentStudyIndicator</nobr> |  |  | false | false |  |
| <nobr>DistanceLearningIndicator</nobr> |  |  | false | false |  |
| <nobr>ItinerantTeacherIndicator</nobr> |  |  | false | false |  |
| <nobr>UseSupplementalAttendance</nobr> |  |  | false | false | False |
| <nobr>PopulationServedCode</nobr> |  |  | false | false |  |
| <nobr>ClassTypeCode</nobr> |  |  | false | false |  |
| <nobr>MonthlyMinutes</nobr> |  |  | false | false | 0 |
| <nobr>UserCode1</nobr> |  |  | false | false |  |
| <nobr>UserCode2</nobr> |  |  | false | false |  |
| <nobr>UserCode3</nobr> |  |  | false | false |  |
| <nobr>UserCode4</nobr> |  |  | false | false |  |
| <nobr>UserCode5</nobr> |  |  | false | false |  |
| <nobr>UserCode6</nobr> |  |  | false | false |  |
| <nobr>UserCode7</nobr> |  |  | false | false |  |
| <nobr>UserCode8</nobr> |  |  | false | false |  |
| <nobr>ArticulatedCourseIndicator</nobr> |  |  | false | false |  |
| <nobr>NonCampusBasedInstructionCode</nobr> |  |  | false | false |  |
| <nobr>PreKSchoolTypeCode</nobr> |  |  | false | false |  |
| <nobr>PreKCurriculaCode</nobr> |  |  | false | false |  |
| <nobr>IsHighQualityPreKProgram</nobr> |  |  | false | false | False |
| <nobr>InstructionTypeCode</nobr> |  |  | false | false |  |
| <nobr>ProgramEvaluationTypeCode</nobr> |  |  | false | false |  |
| <nobr>EducationalEnvironmentCode</nobr> |  |  | false | false |  |
| <nobr>CareerTechnicalEducationHours</nobr> |  |  | false | false | 0 |
| <nobr>ContentSubcategoryCode</nobr> |  |  | false | false |  |
| <nobr>CharterNonCoreIndicator</nobr> |  |  | false | false |  |
| <nobr>AdvancedCourseStateCode</nobr> |  |  | false | false |  |
| <nobr>OnlineInstructionTypeCode</nobr> |  |  | false | false |  |
| <nobr>MiddleSchoolCoreIndicator</nobr> |  |  | false | false |  |
| <nobr>NonCredentialedAuthorizationCode</nobr> |  |  | false | false |  |
| <nobr>HighQualityCareerTechnicalEducationIndicator</nobr> |  |  | false | false |  |
| <nobr>ArenaSchedulingIndicator</nobr> |  |  | false | false |  |
| <nobr>ExcludeFromScheduler</nobr> |  |  | false | false | False |
| <nobr>SectionStaffMembers</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesSchedulingSection -SchoolCode 884 -SectionNumber 1
This will edit a Schedule Section in Aeries for SchoolCode 884
```


## Edit-AeriesSchoolSupplemental
### Synopsis
Edit a School Supplemental record for a Student in Aeries
### Syntax
```powershell

Edit-AeriesSchoolSupplemental [-SchoolCode] <Int16> [-StudentNumber] <Int16> [[-ColumnCode] <String>] [[-NewValue] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentNumber</nobr> |  |  | true | false | 0 |
| <nobr>ColumnCode</nobr> |  |  | false | false |  |
| <nobr>NewValue</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesSchoolSupplemental -SchoolCode 994 -StudentNumber 1 -ColumnCode "PI" -NewValue "XZ"
This will create an Activity in Aeries for StudentID 99400001 at SchoolCode 994
```


## Edit-AeriesStaff
### Synopsis
Edit a Staff in Aeries
### Syntax
```powershell

Edit-AeriesStaff [-StaffID] <Int32> [[-FirstName] <String>] [[-LastName] <String>] [[-MiddleName] <String>] [[-BirthYear] <Int16>] [[-BirthDate] <DateTime>] [[-FullTimePercentage] <Int16>] [[-HireDate] <DateTime>] [[-LeaveDate] <DateTime>] [[-InactiveStatusCode] <String>] [[-StateEducatorID] <String>] [[-EmailAddress] <String>] [[-PrimaryAeriesSchool] <Int16>] [[-NetworkLoginID] <String>] [[-AlternateEmailAddress] <String>] [[-HumanResourcesSystemID] <String>] [[-CellPhone] <String>] [[-Title] <String>] [[-Gender] <String>] [[-EducationLevelCode] <String>] [[-EthnicityCode] <String>] [[-RaceCode1] <String>] [[-RaceCode2] <String>] [[-RaceCode3] <String>] [[-RaceCode4] <String>] [[-RaceCode5] <String>] [[-PositionStatusCode] <String>] [[-TotalYearsOfEduService] <Int16>] [[-TotalYearsInThisDistrict] <Int16>] [[-PreviousLastName] <String>] [[-PreviousFirstName] <String>] [[-PreviousMiddleName] <String>] [[-NameSuffix] <String>] [[-Address] <String>] [[-AddressCity] <String>] [[-AddressState] <String>] [[-AddressZipCode] <String>] [[-AddressZipExt] <String>] [[-HomePhone] <String>] [[-EmergencyContactName] <String>] [[-EmergencyContactPhone] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>BirthYear</nobr> |  |  | false | false | -1 |
| <nobr>BirthDate</nobr> |  |  | false | false |  |
| <nobr>FullTimePercentage</nobr> |  |  | false | false | -1 |
| <nobr>HireDate</nobr> |  |  | false | false |  |
| <nobr>LeaveDate</nobr> |  |  | false | false |  |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>StateEducatorID</nobr> |  |  | false | false |  |
| <nobr>EmailAddress</nobr> |  |  | false | false |  |
| <nobr>PrimaryAeriesSchool</nobr> |  |  | false | false | -1 |
| <nobr>NetworkLoginID</nobr> |  |  | false | false |  |
| <nobr>AlternateEmailAddress</nobr> |  |  | false | false |  |
| <nobr>HumanResourcesSystemID</nobr> |  |  | false | false |  |
| <nobr>CellPhone</nobr> |  |  | false | false |  |
| <nobr>Title</nobr> |  |  | false | false |  |
| <nobr>Gender</nobr> |  |  | false | false |  |
| <nobr>EducationLevelCode</nobr> |  |  | false | false |  |
| <nobr>EthnicityCode</nobr> |  |  | false | false |  |
| <nobr>RaceCode1</nobr> |  |  | false | false |  |
| <nobr>RaceCode2</nobr> |  |  | false | false |  |
| <nobr>RaceCode3</nobr> |  |  | false | false |  |
| <nobr>RaceCode4</nobr> |  |  | false | false |  |
| <nobr>RaceCode5</nobr> |  |  | false | false |  |
| <nobr>PositionStatusCode</nobr> |  |  | false | false |  |
| <nobr>TotalYearsOfEduService</nobr> |  |  | false | false | -1 |
| <nobr>TotalYearsInThisDistrict</nobr> |  |  | false | false | -1 |
| <nobr>PreviousLastName</nobr> |  |  | false | false |  |
| <nobr>PreviousFirstName</nobr> |  |  | false | false |  |
| <nobr>PreviousMiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Address</nobr> |  |  | false | false |  |
| <nobr>AddressCity</nobr> |  |  | false | false |  |
| <nobr>AddressState</nobr> |  |  | false | false |  |
| <nobr>AddressZipCode</nobr> |  |  | false | false |  |
| <nobr>AddressZipExt</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>EmergencyContactName</nobr> |  |  | false | false |  |
| <nobr>EmergencyContactPhone</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesStaff -StaffID 1 -FirstName "Aeries" -LastName "Software"
This will edit a Staff in Aeries
```


## Edit-AeriesStaffAssignment
### Synopsis
Edit a Staff Assignment in Aeries
### Syntax
```powershell

Edit-AeriesStaffAssignment [-StaffID] <Int32> [-AssignmentType] <String> [-Sequence] <Int16> [[-JobClassification] <String>] [[-FullTimePercentage] <Double>] [[-NonClassroomBasedJobAssignment1] <String>] [[-NonClassroomBasedJobAssignment2] <String>] [[-NonClassroomBasedJobAssignment3] <String>] [[-NonClassroomBasedJobAssignment4] <String>] [[-NonClassroomBasedJobAssignment5] <String>] [[-NonClassroomBasedJobAssignment6] <String>] [[-NonClassroomBasedJobAssignment7] <String>] [[-SchoolCode] <Int16>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentType</nobr> |  |  | true | false |  |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>JobClassification</nobr> |  | If the passed in value is blank or null, accept it Classified can have up to 3 character codes Certificated can have up to 2 character codes | false | false |  |
| <nobr>FullTimePercentage</nobr> |  |  | false | false | -1 |
| <nobr>NonClassroomBasedJobAssignment1</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment2</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment3</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment4</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment5</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment6</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment7</nobr> |  |  | false | false |  |
| <nobr>SchoolCode</nobr> |  |  | false | false | -1 |
| <nobr>StartDate</nobr> |  |  | false | false |  |
| <nobr>EndDate</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified" -Sequence 1
This will edit a Staff Assignment for Staff ID 1 with an Assignment Type of "classified" and Sequence of 1 in Aeries
```


## Edit-AeriesStudent
### Synopsis
Edit a Student in Aeries
### Syntax
```powershell

Edit-AeriesStudent [-StudentID] <Int32> [[-LastName] <String>] [[-FirstName] <String>] [[-MiddleName] <String>] [[-NameSuffix] <String>] [[-Gender] <String>] [[-Grade] <String>] [[-NextGrade] <String>] [[-NextSchool] <Int16>] [[-BirthDate] <DateTime>] [[-InactiveStatusCode] <String>] [[-HomePhone] <String>] [[-HomeLanguageCode] <String>] [[-CorrespondanceLanguageCode] <String>] [[-LanguageFluencyCode] <String>] [[-EthnicityCode] <String>] [[-Race1Code] <String>] [[-Race2Code] <String>] [[-Race3Code] <String>] [[-Race4Code] <String>] [[-Race5Code] <String>] [[-LastSchool] <Int16>] [[-ResidenceSchool] <Int16>] [[-NextResidenceSchool] <Int16>] [[-SchoolEnterDate] <DateTime>] [[-DistrictEnterDate] <DateTime>] [[-BirthCity] <String>] [[-BirthStateCode] <String>] [[-BirthCountryCode] <String>] [[-ParentEdLevelCode] <String>] [[-ParentGuardianName] <String>] [[-MailingAddress] <String>] [[-MailingAddressCity] <String>] [[-MailingAddressState] <String>] [[-MailingAddressZipCode] <String>] [[-MailingAddressZipExt] <String>] [[-ResidenceAddress] <String>] [[-ResidenceAddressCity] <String>] [[-ResidenceAddressState] <String>] [[-ResidenceAddressZipCode] <String>] [[-ResidenceAddressZipExt] <String>] [[-HomeLanguageSurveyFirstLanguageCode] <String>] [[-HomeLanguageSurveyPrimaryLanguageCode] <String>] [[-HomeLanguageSurveyHomeLanguageCode] <String>] [[-HomeLanguageSurveyAdultLanguageCode] <String>] [[-USEnterDate] <DateTime>] [[-USSchoolEnterDate] <DateTime>] [[-UserCode1] <String>] [[-UserCode2] <String>] [[-UserCode3] <String>] [[-UserCode4] <String>] [[-UserCode5] <String>] [[-UserCode6] <String>] [[-UserCode7] <String>] [[-UserCode8] <String>] [[-UserCode9] <String>] [[-UserCode10] <String>] [[-UserCode11] <String>] [[-UserCode12] <String>] [[-UserCode13] <String>] [[-WellbeingDate] <DateTime>] [[-WellbeingScore] <String>] [[-WellbeingAttentionCode] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Gender</nobr> |  |  | false | false |  |
| <nobr>Grade</nobr> |  |  | false | false |  |
| <nobr>NextGrade</nobr> |  |  | false | false |  |
| <nobr>NextSchool</nobr> |  |  | false | false | -1 |
| <nobr>BirthDate</nobr> |  |  | false | false |  |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageCode</nobr> |  |  | false | false |  |
| <nobr>CorrespondanceLanguageCode</nobr> |  |  | false | false |  |
| <nobr>LanguageFluencyCode</nobr> |  |  | false | false |  |
| <nobr>EthnicityCode</nobr> |  |  | false | false |  |
| <nobr>Race1Code</nobr> |  |  | false | false |  |
| <nobr>Race2Code</nobr> |  |  | false | false |  |
| <nobr>Race3Code</nobr> |  |  | false | false |  |
| <nobr>Race4Code</nobr> |  |  | false | false |  |
| <nobr>Race5Code</nobr> |  |  | false | false |  |
| <nobr>LastSchool</nobr> |  |  | false | false | -1 |
| <nobr>ResidenceSchool</nobr> |  |  | false | false | -1 |
| <nobr>NextResidenceSchool</nobr> |  |  | false | false | -1 |
| <nobr>SchoolEnterDate</nobr> |  |  | false | false |  |
| <nobr>DistrictEnterDate</nobr> |  |  | false | false |  |
| <nobr>BirthCity</nobr> |  |  | false | false |  |
| <nobr>BirthStateCode</nobr> |  |  | false | false |  |
| <nobr>BirthCountryCode</nobr> |  |  | false | false |  |
| <nobr>ParentEdLevelCode</nobr> |  |  | false | false |  |
| <nobr>ParentGuardianName</nobr> |  |  | false | false |  |
| <nobr>MailingAddress</nobr> |  |  | false | false |  |
| <nobr>MailingAddressCity</nobr> |  |  | false | false |  |
| <nobr>MailingAddressState</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddress</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressCity</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressState</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyFirstLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyPrimaryLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyHomeLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyAdultLanguageCode</nobr> |  |  | false | false |  |
| <nobr>USEnterDate</nobr> |  |  | false | false |  |
| <nobr>USSchoolEnterDate</nobr> |  |  | false | false |  |
| <nobr>UserCode1</nobr> |  |  | false | false |  |
| <nobr>UserCode2</nobr> |  |  | false | false |  |
| <nobr>UserCode3</nobr> |  |  | false | false |  |
| <nobr>UserCode4</nobr> |  |  | false | false |  |
| <nobr>UserCode5</nobr> |  |  | false | false |  |
| <nobr>UserCode6</nobr> |  |  | false | false |  |
| <nobr>UserCode7</nobr> |  |  | false | false |  |
| <nobr>UserCode8</nobr> |  |  | false | false |  |
| <nobr>UserCode9</nobr> |  |  | false | false |  |
| <nobr>UserCode10</nobr> |  |  | false | false |  |
| <nobr>UserCode11</nobr> |  |  | false | false |  |
| <nobr>UserCode12</nobr> |  |  | false | false |  |
| <nobr>UserCode13</nobr> |  |  | false | false |  |
| <nobr>WellbeingDate</nobr> |  |  | false | false |  |
| <nobr>WellbeingScore</nobr> |  |  | false | false |  |
| <nobr>WellbeingAttentionCode</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesStudent -StudentID 99400001 -FirstName "Aeries" -LastName "Software"
This will update Student ID 99400001 to have the First Name of "Aeries" and the Last Name of "Software"
```


## Edit-AeriesStudentTest
### Synopsis
Update Test Score in Aeries
### Syntax
```powershell

Edit-AeriesStudentTest [-StudentID] <Int32> [-TestID] <String> [-TestPart] <Int16> [[-TestingAdministration] <String>] [-TestDate] <DateTime> [[-RawScore] <Int16>] [[-PercentCorrect] <Decimal>] [[-PerformanceLevel] <Int32>] [[-TestTypeCode] <String>] [[-TestSourceCode] <String>] [[-ScaleScore] <Int16>] [[-Other] <Int16>] [[-GradeEquivalency] <Int16>] [[-Percentile] <Int16>] [[-Stanine] <Int16>] [[-CurveEquivalent] <Int16>] [[-Rubric] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>TestID</nobr> |  |  | true | false |  |
| <nobr>TestPart</nobr> |  |  | true | false | 0 |
| <nobr>TestingAdministration</nobr> |  |  | false | false |  |
| <nobr>TestDate</nobr> |  |  | true | false |  |
| <nobr>RawScore</nobr> |  |  | false | false | -1 |
| <nobr>PercentCorrect</nobr> |  |  | false | false | -1 |
| <nobr>PerformanceLevel</nobr> |  |  | false | false | -1 |
| <nobr>TestTypeCode</nobr> |  |  | false | false |  |
| <nobr>TestSourceCode</nobr> |  |  | false | false |  |
| <nobr>ScaleScore</nobr> |  |  | false | false | -1 |
| <nobr>Other</nobr> |  |  | false | false | -1 |
| <nobr>GradeEquivalency</nobr> |  |  | false | false | -1 |
| <nobr>Percentile</nobr> |  |  | false | false | -1 |
| <nobr>Stanine</nobr> |  |  | false | false | -1 |
| <nobr>CurveEquivalent</nobr> |  |  | false | false | -1 |
| <nobr>Rubric</nobr> |  |  | false | false | -1 |
### Examples
**EXAMPLE 1**
```powershell
Edit-AeriesStudentTest -StudentID 99400001 -TestID "ELPAC" -TestPart 0 -TestingAdministration "0322" -TestDate "2022-03-12" -Other 5
This will edit the Test for the specific Student ID in Aeries with the given TestID, TestPart, TestingAdministration and TestDate
```


## Get-AeriesAbsenceCode
### Synopsis
Get one or all Absence Codes from Aeries for a specific School
### Syntax
```powershell

Get-AeriesAbsenceCode [-SchoolCode] <Int16> [[-AbsenceCode] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>AbsenceCode</nobr> |  | Specific Absence Code to pull | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAbsenceCode -SchoolCode 994
This will return all Absence Codes for School 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesAbsenceCode -SchoolCode 994 -AbsenceCode "A"
This will return the Absence Code "A" for School 994 from Aeries
```


## Get-AeriesActivity
### Synopsis
Get Activities and Awards from Aeries
### Syntax
```powershell

Get-AeriesActivity [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-Code] <String>] [[-Sequence] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>Code</nobr> |  | Used to get Activity with a specific code | false | false |  |
| <nobr>Sequence</nobr> |  | Used to get a specific Activity | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesActivity -SchoolCode 994
This will return all Activities and Awards for all Students at the given School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesActivity -SchoolCode 994 -Code "600"
This will return all Activities and Awards for all Students at the given School Code from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesActivity -SchoolCode 994 -StudentID 99400001
This will return all Activities and Awards for the given Student ID at the given School Code from Aeries
```


**EXAMPLE 4**
```powershell
Get-AeriesActivity -SchoolCode 994 -StudentID 99400001 -Code "600"
This will return all Activities and Awards for the given Student ID at the given School Code from Aeries
```


**EXAMPLE 5**
```powershell
Get-AeriesActivity -SchoolCode 994 -StudentID 99400001 -Sequence 7
This will return an Activity or Award for the given Sequence Number, Student ID and School Code from Aeries
```


## Get-AeriesAlternateCourseRequest
### Synopsis
Get Alternate Course Requests from Aeries
### Syntax
```powershell

Get-AeriesAlternateCourseRequest [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-Sequence] <Int16>] [[-StudentNumber] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>StudentNumber</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAlternateCourseRequest -SchoolCode 994
This will return all Alternate Course Requests for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400002
This will return the Alternate Course Requests for Student ID 99400002 from School Code 994 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400002 -Sequence 2
This will return the Alternate Course Request Sequence 2 for Student ID 99400002 from School Code 994 from Aeries
```


**EXAMPLE 4**
```powershell
Get-AeriesAlternateCourseRequest -SchoolCode 994 -StudentNumber 2
This will return the Alternate Course Requests for Student Number 2 from School Code 994 from Aeries
```


**EXAMPLE 5**
```powershell
Get-AeriesAlternateCourseRequest -SchoolCode 994 -StudentNumber 2 -Sequence 2
This will return the Alternate Course Request Sequence 2 for Student Number 2 from School Code 994 from Aeries
```


## Get-AeriesAssertiveDiscipline
### Synopsis
Get Assertive Discipline from Aeries
### Syntax
```powershell

Get-AeriesAssertiveDiscipline [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAssertiveDiscipline -SchoolCode 994
This will return all Assertive Disciplines for all Students at the specified School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesAssertiveDiscipline -SchoolCode 994 -StudentID 99400001
This will return all Assertive Disciplines for the specific Student ID at the specified School Code from Aeries
```


## Get-AeriesAttendanceHistoryCodes
### Synopsis
Get Attendace History Codes from Aeries
### Syntax
```powershell

Get-AeriesAttendanceHistoryCodes [-SchoolCode] <Int16> [[-StartYear] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StartYear</nobr> |  | Start Year \(Will format to be Academic Year of YYYY-YYYY\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAttendanceHistoryCodes -SchoolCode 994
This will return all Attendace History Codes from Aeries for School Code 994
```


**EXAMPLE 2**
```powershell
Get-AeriesAttendanceHistoryCodes -SchoolCode 994 -StartYear 2020
This will return all Attendace History Codes from Aeries for Academic Year 2020-2021 at School Code 994
```


## Get-AeriesAttendanceHistoryDetail
### Synopsis
Get Attendace History Detail from Aeries
### Syntax
```powershell

Get-AeriesAttendanceHistoryDetail [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StartYear] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StartYear</nobr> |  | Start Year \(Will format to be Academic Year of YYYY-YYYY\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAttendanceHistoryDetail -SchoolCode 994
This will return all Attendace History Details from Aeries for School Code 994
```


**EXAMPLE 2**
```powershell
Get-AeriesAttendanceHistoryDetail -SchoolCode 994 -StudentID 99400001
This will return all Attendace History Details from Aeries for Student ID 99400001
```


**EXAMPLE 3**
```powershell
Get-AeriesAttendanceHistoryDetail -SchoolCode 994 -StartYear 2020
This will return all Attendace History Details from Aeries for Academic Year 2020-2021 at School Code 994
```


## Get-AeriesAttendanceHistorySummary
### Synopsis
Get Attendace History Summary from Aeries
### Syntax
```powershell

Get-AeriesAttendanceHistorySummary [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StartYear] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StartYear</nobr> |  | Start Year \(Will format to be Academic Year of YYYY-YYYY\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAttendanceHistorySummary -SchoolCode 994
This will return all Attendace History Summaries from Aeries for School Code 994
```


**EXAMPLE 2**
```powershell
Get-AeriesAttendanceHistorySummary -SchoolCode 994 -StudentID 99400001
This will return all Attendance History Summaries from Aeries for Student ID 99400001
```


**EXAMPLE 3**
```powershell
Get-AeriesAttendanceHistorySummary -SchoolCode 994 -StartYear 2020
This will return all Attendance History Summaries from Aeries for Academic Year 2020-2021 at School Code 994
```


## Get-AeriesAuthorization
### Synopsis
Get Authorizations from Aeries
### Syntax
```powershell

Get-AeriesAuthorization [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-Sequence] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesAuthorization -SchoolCode 994
This will return all Authorizations for all Students at the given School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesAuthorization -SchoolCode 994 -StudentID 99400001
This will return all Authorizations for the given Student ID at the given School Code from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Sequence 5
This will return specific Authorization for the given Student ID at the given School Code from Aeries
```


## Get-AeriesBellSchedule
### Synopsis
Get Bell Schedules from Aeries for a specific School
### Syntax
```powershell

Get-AeriesBellSchedule [-SchoolCode] <Int16> [[-Date] <DateTime>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>Date</nobr> |  | Specific date to pull Bell Schedule for | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesBellSchedule -SchoolCode 994
This will return Bell Schedules for School 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesBellSchedule -SchoolCode 994 -Date (Get-Date "2021-04-08")
This will return Bell Schedules for School 994 from Aeries on the specified Date
```


## Get-AeriesClassCalendar
### Synopsis
Get Class Calendars from Aeries
### Syntax
```powershell

Get-AeriesClassCalendar [-SchoolCode] <Int16> [[-Sequence] <Int16>] [-GetDates] [[-StartYear] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>GetDates</nobr> |  | Switch for pulling Dates for a Class Calendar | false | false | False |
| <nobr>StartYear</nobr> |  | Start Year \(Will format to be Academic Year of YYYY-YYYY\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesClassCalendar -SchoolCode 894
This will return all Class Calendars for School Code 894 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesClassCalendar -SchoolCode 894 -StartYear 2020
This will return all Class Calendars for School Code 894 that apply to Academic Year 2020-2021 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesClassCalendar -SchoolCode 894 -Sequence 14
This will return the Class Calendar with Sequence 14 from School Code 894 from Aeries
```


**EXAMPLE 4**
```powershell
Get-AeriesClassCalendar -SchoolCode 894 -Sequence 14 -GetDates
This will return the Dates for Class Calendar with Sequence 14 from School Code 894 from Aeries
```


## Get-AeriesCodeSet
### Synopsis
Get a Code Set from Aeries
### Syntax
```powershell

Get-AeriesCodeSet [-Table] <String> [-Field] <String> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>Table</nobr> |  | Table Code | true | false |  |
| <nobr>Field</nobr> |  | Field Code | true | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesCodeSet -Table "STU" -Field "TG"
This will return the Code Set from Aeries for STU.TG (Student Tag)
```


## Get-AeriesContact
### Synopsis
Get Contacts from Aeries
### Syntax
```powershell

Get-AeriesContact [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesContact -SchoolCode 994
This will return all Contacts for all Students at the given School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesContact -SchoolCode 994 -StudentID 99400001
This will return all Contacts for the given Student ID at the given School Code from Aeries
```


## Get-AeriesCourseDataChanges
### Synopsis
Get Course Data Changes from Aeries
### Syntax
```powershell

Get-AeriesCourseDataChanges [-DateTime] <DateTime> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>DateTime</nobr> |  | Date Object to use for filters | true | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesCourseDataChanges -DateTime (Get-Date "2021-04-09 9:00AM")
This will return the requested Course Data Changes from Aeries
```


## Get-AeriesCourseInformation
### Synopsis
Get Course Information from Aeries
### Syntax
```powershell

Get-AeriesCourseInformation [[-CourseID] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>CourseID</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesCourseInformation
This will return all Course Information for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesCourseInformation -CourseID "100"
This will return the Course Information for Student ID 99400001 from School Code 994 from Aeries
```


## Get-AeriesCourseRequest
### Synopsis
Get Course Requests from Aeries
### Syntax
```powershell

Get-AeriesCourseRequest [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-Sequence] <Int16>] [[-StudentNumber] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>StudentNumber</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesCourseRequest -SchoolCode 994
This will return all Course Requests for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesCourseRequest -SchoolCode 994 -StudentID 99400002
This will return the Course Requests for Student ID 99400002 from School Code 994 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesCourseRequest -SchoolCode 994 -StudentID 99400002 -Sequence 5
This will return the Course Request Sequence 5 for Student ID 99400002 from School Code 994 from Aeries
```


**EXAMPLE 4**
```powershell
Get-AeriesCourseRequest -SchoolCode 994 -StudentNumber 2
This will return the Course Requests for Student Number 2 from School Code 994 from Aeries
```


**EXAMPLE 5**
```powershell
Get-AeriesCourseRequest -SchoolCode 994 -StudentNumber 2 -Sequence 5
This will return the Course Request Sequence 5 for Student Number 2 from School Code 994 from Aeries
```


## Get-AeriesDistrictSupplemental
### Synopsis
Get District Supplemental from Aeries
### Syntax
```powershell

Get-AeriesDistrictSupplemental [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesDistrictSupplemental -SchoolCode 994
This will return all District Supplemental for all Students at the specified School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesDistrictSupplemental -SchoolCode 994 -StudentID 99400001
This will return all District Supplemental for the specific Student ID at the specified School Code from Aeries
```


## Get-AeriesFee
### Synopsis
Get Fees and Fines from Aeries
### Syntax
```powershell

Get-AeriesFee [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesFee -SchoolCode 994
This will return all Fees and Fines for all Students at the specified School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesFee -SchoolCode 994 -StudentID 99400001
This will return all Fees and Fines for the specific Student ID at the specified School Code from Aeries
```


## Get-AeriesFlexPeriod
### Synopsis
Get Flex Periods from Aeries
### Syntax
```powershell

Get-AeriesFlexPeriod [-SchoolCode] <Int16> [[-Sequence] <Int16>] [[-StartYear] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>StartYear</nobr> |  | Start Year \(Will format to be Academic Year of YYYY-YYYY\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesFlexPeriod -SchoolCode 894
This will return all Flex Periods for School Code 894 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesFlexPeriod -SchoolCode 894 -StartYear 2020
This will return all Flex Periods for School Code 894 that apply to Academic Year 2020-2021 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesFlexPeriod -SchoolCode 894 -Sequence 2
This will return the Flex Period with Sequence 2 from School Code 894 from Aeries
```


## Get-AeriesGradebook
### Synopsis
Get Gradebook from Aeries
### Syntax
```powershell

Get-AeriesGradebook [[-GradebookNumber] <Int32>] [[-StaffID] <Int32>] [[-SchoolCode] <Int16>] [[-SectionNumber] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | false | false | 0 |
| <nobr>StaffID</nobr> |  |  | false | false | 0 |
| <nobr>SchoolCode</nobr> |  |  | false | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesGradebook -GradebookNumber 4487750
This will return the Gradebook with Number 4487750 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesGradebook -StaffID 994605
This will return all Gradebooks associated to Staff ID 994605 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesGradebook -SchoolCode 994 -SectionNumber 43
This will return the Gradebooks associated to School Code 994 and Section Number 43 from Aeries
```


## Get-AeriesGradebookAssignment
### Synopsis
Get Gradebook Assignments from Aeries
### Syntax
```powershell

Get-AeriesGradebookAssignment [[-GradebookNumber] <Int32>] [[-AssignmentNumber] <Int32>] [[-AssignmentUniqueID] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | false | false | 0 |
| <nobr>AssignmentNumber</nobr> |  |  | false | false | 0 |
| <nobr>AssignmentUniqueID</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesGradebookAssignment -GradebookNumber 4487750
This will return the Gradebook Assignments for Gradebook Number 4487750 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesGradebookAssignment -GradebookNumber 4487750 -AssignmentNumber 1
This will return all Gradebooks associated to Staff ID 994605 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesGradebookAssignment -AssignmentUniqueID "059FE76C-05C1-40DD-8B95-1FFA961DE488"
This will return the Gradebooks associated to School Code 994 and Section Number 43 from Aeries
```


## Get-AeriesGradebookAssignmentScore
### Synopsis
Get Gradebook Assignment Scores from Aeries
### Syntax
```powershell

Get-AeriesGradebookAssignmentScore [[-GradebookNumber] <Int32>] [[-AssignmentNumber] <Int32>] [[-AssignmentUniqueID] <String>] [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | false | false | 0 |
| <nobr>AssignmentNumber</nobr> |  |  | false | false | 0 |
| <nobr>AssignmentUniqueID</nobr> |  |  | false | false |  |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesGradebookAssignmentScore -GradebookNumber 4487750 -AssignmentNumber 1
This will return the Gradebook Assignment Scores for Gradebook Number 4487750 and Assignment 1 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesGradebookAssignmentScore -GradebookNumber 4487750 -AssignmentNumber 1 -StudentID 99400015
This will return all Gradebook Assignemtn Scores for Student ID 99400015 on Assignment 1 in Gradebook Number 4487750 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesGradebookAssignmentScore -AssignmentUniqueID "059FE76C-05C1-40DD-8B95-1FFA961DE488"
This will return the Gradebook Assignment Scores for Gradebook Assignment "059FE76C-05C1-40DD-8B95-1FFA961DE488" from Aeries
```


**EXAMPLE 4**
```powershell
Get-AeriesGradebookAssignmentScore -AssignmentUniqueID "059FE76C-05C1-40DD-8B95-1FFA961DE488" -StudentID 99400015
This will return the Gradebook Assignment Scores for Gradebook Assignment "059FE76C-05C1-40DD-8B95-1FFA961DE488" and Student ID 99400015 from Aeries
```


## Get-AeriesGradebookFinalMarks
### Synopsis
Get Gradebook Final Marks from Aeries
### Syntax
```powershell

Get-AeriesGradebookFinalMarks [-GradebookNumber] <Int32> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesGradebookFinalMarks -GradebookNumber 4487750
This will return the Final Marks for Gradebook Number 4487750 from Aeries
```


## Get-AeriesGradebookStudent
### Synopsis
Get Gradebook Students from Aeries
### Syntax
```powershell

Get-AeriesGradebookStudent [-GradebookNumber] <Int32> [-Term] <String> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | true | false | 0 |
| <nobr>Term</nobr> |  |  | true | false |  |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesGradebookStudent -GradebookNumber 4487750 -Term "Y"
This will return the Gradebook Students for Gradebook Number 4487750 and Term "Y" from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesGradebookStudent -GradebookNumber 4487750 -Term "Y" -StudentID 99400015
This will return the Gradebook Student for Gradebook Number 4487750, Term "Y" and Student ID 99400015 from Aeries
```


## Get-AeriesGraduationRequirement
### Synopsis
Get Graduation Requirements from Aeries
### Syntax
```powershell

Get-AeriesGraduationRequirement [-SchoolCode] <Int16> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesGraduationRequirement -SchoolCode 994
This will return Graduation Requirements from Aeries at School 994
```


## Get-AeriesReportCardMarkingPeriod
### Synopsis
Get Report Card Marking Periods from Aeries
### Syntax
```powershell

Get-AeriesReportCardMarkingPeriod [-SchoolCode] <Int16> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesReportCardMarkingPeriod -SchoolCode 994
This will return all Report Card Marking Periods from Aeries at School 994
```


## Get-AeriesSchedulingSection
### Synopsis
Get Scheduling Sections from Aeries
### Syntax
```powershell

Get-AeriesSchedulingSection [-SchoolCode] <Int16> [[-SectionNumber] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSchedulingSection -SchoolCode 994
This will return all Scheduling Sections for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesSchedulingSection -SchoolCode 994 -SectionNumber 43
This will return the Scheduling Sections for Section 43 from School Code 994 from Aeries
```


## Get-AeriesSchool
### Synopsis
Get a specific school or all schools from Aeries
### Syntax
```powershell

Get-AeriesSchool [[-SchoolCode] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSchoolInformation
This will return all schools from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesSchoolInformation -SchoolCode 994
This will return the requested school from Aeries
```


## Get-AeriesSchoolCalendar
### Synopsis
Get Terms from Aeries for a specific School
### Syntax
```powershell

Get-AeriesSchoolCalendar [[-SchoolCode] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSchoolCalendar -SchoolCode 994
This will return Terms for School 994 from Aeries
```


## Get-AeriesSchoolSupplemental
### Synopsis
Get School Supplemental from Aeries
### Syntax
```powershell

Get-AeriesSchoolSupplemental [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSchoolSupplemental -SchoolCode 994
This will return all School Supplemental for all Students at the specified School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesSchoolSupplemental -SchoolCode 994 -StudentID 99400001
This will return all School Supplemental for the specific Student ID at the specified School Code from Aeries
```


## Get-AeriesSchoolTerms
### Synopsis
Get Terms from Aeries for a specific School
### Syntax
```powershell

Get-AeriesSchoolTerms [-SchoolCode] <Int16> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSchoolTerms -SchoolCode 994
This will return Terms for School 994 from Aeries
```


## Get-AeriesSection
### Synopsis
Get Sections from Aeries
### Syntax
```powershell

Get-AeriesSection [-SchoolCode] <Int16> [[-SectionNumber] <Int16>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSection -SchoolCode 994
This will return all Sections for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesSection -SchoolCode 994 -SectionNumber 43
This will return the Sections for Section 43 from School Code 994 from Aeries
```


## Get-AeriesSectionDataChanges
### Synopsis
Get Course Data Changes from Aeries
### Syntax
```powershell

Get-AeriesSectionDataChanges [-DateTime] <DateTime> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>DateTime</nobr> |  | Date Object to use for filters | true | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSectionDataChanges -DateTime (Get-Date "2021-04-09 9:00AM")
This will return the requested Section Data Changes from Aeries
```


## Get-AeriesSectionRoster
### Synopsis
Get Section Class Roster from Aeries
### Syntax
```powershell

Get-AeriesSectionRoster [-SchoolCode] <Int16> [-SectionNumber] <Int16> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSectionRoster -SchoolCode 994 -SectionNumber 43
This will return the Section Class Roster for Section 43 from School Code 994 from Aeries
```


## Get-AeriesSectionRosterDataChanges
### Synopsis
Get Section Roster Data Changes from Aeries
### Syntax
```powershell

Get-AeriesSectionRosterDataChanges [-DateTime] <DateTime> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>DateTime</nobr> |  | Date Object to use for filters | true | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSectionRosterDataChanges -DateTime (Get-Date "2021-04-09 9:00AM")
This will return the requested Section Roster Data Changes from Aeries
```


## Get-AeriesStaff
### Synopsis
Get Staff records from Aeries
### Syntax
```powershell

Get-AeriesStaff [[-StaffID] <Int32>] [[-HRID] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | false | false | 0 |
| <nobr>HRID</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStaff
This will return all Staff records from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStaff -StaffID 994605
This will return the Staff record for Staff ID 994605 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesStaff -HRID "SomeOtherID"
This will return the Staff record for HR ID "SomeOtherID" from Aeries
```


## Get-AeriesStaffAssignment
### Synopsis
Get Staff Assignments from Aeries
### Syntax
```powershell

Get-AeriesStaffAssignment [-StaffID] <Int32> [[-AssignmentType] <Object>] [[-Sequence] <Int16>] [[-Date] <DateTime>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentType</nobr> |  |  | false | false |  |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>Date</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStaffAssignment -StaffID 1
This will return all Staff Assignments for Staff ID 1 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified"
This will return all Staff Assignments for Staff ID 1 that match Assignment Type of "classified" from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified" -Sequence 1
This will return all Staff Assignments for Staff ID 1 that match Assignment Type of "classified" and Sequence Number 1 from Aeries
```


**EXAMPLE 4**
```powershell
Get-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified" -Date (Get-Date "2021-04-13")
This will return all Staff Assignments for Staff ID 1 that match Assignment Type of "classified" and were effective on 04/13/2021 from Aeries
```


## Get-AeriesStaffClass
### Synopsis
Get Staff Classes/Sections from Aeries
### Syntax
```powershell

Get-AeriesStaffClass [-StaffID] <Int32> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStaffClass -StaffID 994605
This will return all Classes/Sections for Staff ID 994605 from Aeries
```


## Get-AeriesStaffDataChanges
### Synopsis
Get Staff Data Changes from Aeries
### Syntax
```powershell

Get-AeriesStaffDataChanges [-DateTime] <DateTime> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>DateTime</nobr> |  | Date Object to use for filters | true | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStaffDataChanges -DateTime (Get-Date "2021-04-09 9:00AM")
This will return Staff Data Changes as of the given Date Time from Aeries
```


## Get-AeriesStudent
### Synopsis
Get one or more Students from Aeries
### Syntax
```powershell

Get-AeriesStudent [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StudentNumber] <Int32>] [[-Grade] <String>] [[-StartingRecord] <Int32>] [[-EndingRecord] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StudentNumber</nobr> |  |  | false | false | 0 |
| <nobr>Grade</nobr> |  |  | false | false |  |
| <nobr>StartingRecord</nobr> |  | The Record-Count value of the first record to return \(inclusive\) | false | false | 0 |
| <nobr>EndingRecord</nobr> |  | The Record-Count value of the last record to return \(inclusive\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudent -SchoolCode 994
This will return all Students from Aeries at School 994
```


**EXAMPLE 2**
```powershell
Get-AeriesStudent -SchoolCode 994 -Grade 9
This will return all Stduents from Aeries at School 994 and Grade 9
```


## Get-AeriesStudentAttendance
### Synopsis
Get Attendace from Aeries
### Syntax
```powershell

Get-AeriesStudentAttendance [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StartDate</nobr> |  | The earliest date of attendance to include \(inclusive\) | false | false |  |
| <nobr>EndDate</nobr> |  | The latest date of attendance to include \(inclusive\) | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentAttendance
This will return all Student Attendace from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentAttendance -SchoolCode 994
This will return the requested Attendace from Aeries for School Code 994
```


**EXAMPLE 3**
```powershell
Get-AeriesStudentAttendance -SchoolCode 994 -StudentID 99400001 -StartDate (Get-Date "2020-08-01") -EndDate (Get-Date "2021-07-31")
This will return the requested Attendance from Aeries for Student ID 99400001, School Code 994, Start Date of 08/01/2020 and End Date 07/31/2021
```


## Get-AeriesStudentClassSchedule
### Synopsis
Get Student Class Schedules from Aeries
### Syntax
```powershell

Get-AeriesStudentClassSchedule [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentClassSchedule -SchoolCode 994
This will return all Student Class Schedules for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentClassSchedule -SchoolCode 994 -StudentID 99400001
This will return the Student Class Schedules for Student ID 99400001 from School Code 994 from Aeries
```


## Get-AeriesStudentCollegeTest
### Synopsis
Get College Tests from Aeries
### Syntax
```powershell

Get-AeriesStudentCollegeTest [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentCollegeTest -SchoolCode 994 -StudentID 99400001
This will return all College Tests for the specific Student ID at the specified School Code from Aeries
```


## Get-AeriesStudentDataChanges
### Synopsis
Get Student Data Changes from Aeries
### Syntax
```powershell

Get-AeriesStudentDataChanges [-DataArea] <String> [-DateTime] <DateTime> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>DataArea</nobr> |  |  | true | false |  |
| <nobr>DateTime</nobr> |  | Date Object to use for filters | true | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentDataChanges -DataArea "student" -DateTime (Get-Date "2021-04-09 9:00AM")
This will return the requested something from Aeries
```


## Get-AeriesStudentEnrollmentHistory
### Synopsis
Get Enrollment History from Aeries
### Syntax
```powershell

Get-AeriesStudentEnrollmentHistory [[-SchoolCode] <Int16>] [[-StudentID] <Int32>] [[-AcademicYear] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | false | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>AcademicYear</nobr> |  | Academic year \(2017 for 2017-2018\) | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentEnrollmentHistory
This will return all Student Enrollment Histories from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentEnrollmentHistory -StudentID 99400001
This will return all Enrollment Histories from Aeries for Student ID 99400001
```


**EXAMPLE 3**
```powershell
Get-AeriesStudentEnrollmentHistory -StudentID 99400001 -AcademicYear 2020
This will return all Enrollment Histories from Aeries for Student ID 99400001 and Academic Year 2020-2021
```


**EXAMPLE 4**
```powershell
Get-AeriesStudentEnrollmentHistory -SchoolCode 994
This will return all Enrollment Histories from Aeries for School Code 994
```


**EXAMPLE 5**
```powershell
Get-AeriesStudentEnrollmentHistory -SchoolCode 994 -AcademicYear 2020
This will return all Enrollment Histories from Aeries for School Code 994 and Academic Year 2020-2021
```


**EXAMPLE 6**
```powershell
Get-AeriesStudentEnrollmentHistory -SchoolCode 994 -StudentID 99400001 -AcademicYear 2020
This will return all Enrollment Histories from Aeries for Student ID 99400001 at School Code 994 for Academic Year 2020
```


## Get-AeriesStudentExtended
### Synopsis
Get one or more Students Extended Information from Aeries
### Syntax
```powershell

Get-AeriesStudentExtended [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StudentNumber] <Int32>] [[-Grade] <String>] [[-StartingRecord] <Int32>] [[-EndingRecord] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StudentNumber</nobr> |  |  | false | false | 0 |
| <nobr>Grade</nobr> |  |  | false | false |  |
| <nobr>StartingRecord</nobr> |  | The Record-Count value of the first record to return \(inclusive\) | false | false | 0 |
| <nobr>EndingRecord</nobr> |  | The Record-Count value of the last record to return \(inclusive\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentExtended -SchoolCode 994
This will return all Students Extended Information from Aeries at School 994
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentExtended -SchoolCode 994 -Grade 9
This will return all Stduents Extended Information from Aeries at School 994 and Grade 9
```


## Get-AeriesStudentGPA
### Synopsis
Get one or more Students GPAs from Aeries
### Syntax
```powershell

Get-AeriesStudentGPA [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StartingRecord] <Int32>] [[-EndingRecord] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StartingRecord</nobr> |  | The Record-Count value of the first record to return \(inclusive\) | false | false | 0 |
| <nobr>EndingRecord</nobr> |  | The Record-Count value of the last record to return \(inclusive\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentGPA -SchoolCode 994
This will return all Student GPAs from Aeries at School 994
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentGPA -SchoolCode 994 -StudentID 99400001
This will return the GPAs for School 994 and Student ID 99400001
```


## Get-AeriesStudentGraduationStatus
### Synopsis
Get one or more Students Graduation Status from Aeries
### Syntax
```powershell

Get-AeriesStudentGraduationStatus [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-Grade] <String>] [[-StartingRecord] <Int32>] [[-EndingRecord] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>Grade</nobr> |  |  | false | false |  |
| <nobr>StartingRecord</nobr> |  | The Record-Count value of the first record to return \(inclusive\) | false | false | 0 |
| <nobr>EndingRecord</nobr> |  | The Record-Count value of the last record to return \(inclusive\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentGraduationStatus -SchoolCode 994
This will return all Student Graduation Status from Aeries at School 994
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentGraduationStatus -SchoolCode 994 -StudentID 99400001
This will return the Graduation Status for School 994 and Student ID 99400001
```


## Get-AeriesStudentGroup
### Synopsis
Get Student Groups from Aeries
### Syntax
```powershell

Get-AeriesStudentGroup [-SchoolCode] <Int16> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentGroup -SchoolCode 994
This will return all Student Groups for all Students at the specified School Code from Aeries
```


## Get-AeriesStudentPicture
### Synopsis
Get Student Picture from Aeries
### Syntax
```powershell

Get-AeriesStudentPicture [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StartingRecord] <Int32>] [[-EndingRecord] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StartingRecord</nobr> |  | The Record-Count value of the first record to return \(inclusive\) | false | false | 0 |
| <nobr>EndingRecord</nobr> |  | The Record-Count value of the last record to return \(inclusive\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentPicture -SchoolCode 994
This will return all Student Picture for all Students at the specified School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentPicture -SchoolCode 994 -StudentID 99400001
This will return all Student Picture for the specific Student ID at the specified School Code from Aeries
```


## Get-AeriesStudentProgram
### Synopsis
Get Programs from Aeries
### Syntax
```powershell

Get-AeriesStudentProgram [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-Code] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>Code</nobr> |  | Program to limit results to | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentProgram -SchoolCode 994
This will return all Programs for all Students at the given School Code from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentProgram -SchoolCode 994 -StudentID 99400001
This will return all Programs for the given Student ID at the given School Code from Aeries
```


## Get-AeriesStudentReportCard
### Synopsis
Get one or more Students Report Cards from Aeries
### Syntax
```powershell

Get-AeriesStudentReportCard [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentReportCard -SchoolCode 994
This will return all Student Report Cards from Aeries at School 994
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentReportCard -SchoolCode 994 -StudentID 99400001
This will return the Report Cards for School 994 and Student ID 99400001
```


## Get-AeriesStudentTest
### Synopsis
Get Tests from Aeries
### Syntax
```powershell

Get-AeriesStudentTest [-StudentID] <Int32> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentTest -StudentID 99400001
This will return all Tests for the specific Student ID from Aeries
```


## Get-AeriesStudentTranscript
### Synopsis
Get one or more Students Transcript from Aeries
### Syntax
```powershell

Get-AeriesStudentTranscript [-SchoolCode] <Int16> [[-StudentID] <Int32>] [[-StartingRecord] <Int32>] [[-EndingRecord] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
| <nobr>StartingRecord</nobr> |  | The Record-Count value of the first record to return \(inclusive\) | false | false | 0 |
| <nobr>EndingRecord</nobr> |  | The Record-Count value of the last record to return \(inclusive\) | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesStudentTranscript -SchoolCode 994
This will return all Student Transcript from Aeries at School 994
```


**EXAMPLE 2**
```powershell
Get-AeriesStudentTranscript -SchoolCode 994 -StudentID 99400001
This will return the Transcript for School 994 and Student ID 99400001
```


## Get-AeriesSystemInfo
### Synopsis
Get the System Info for Aeries
### Syntax
```powershell

Get-AeriesSystemInfo [<CommonParameters>]




```
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesSystemInfo
This will return the System Info for Aeries
```


## Get-AeriesTeacher
### Synopsis
Get Teacher record from Aeries
### Syntax
```powershell

Get-AeriesTeacher [[-SchoolCode] <Int16>] [[-TeacherNumber] <Int16>] [[-StaffID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | false | false | 0 |
| <nobr>TeacherNumber</nobr> |  |  | false | false | -1 |
| <nobr>StaffID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Get-AeriesTeacher -SchoolCode 994
This will return all Teacher records for School Code 994 from Aeries
```


**EXAMPLE 2**
```powershell
Get-AeriesTeacher -SchoolCode 994 -TeacherNumber 605
This will return the Teacher record for School Code 994 and Teacher Number 605 from Aeries
```


**EXAMPLE 3**
```powershell
Get-AeriesTeacher -StaffID 994605
This will return the Teacher records for Staff ID 994605 from Aeries
```


## Initialize-AeriesApi
### Synopsis
Initialize and prepare for Aeries API calls
### Syntax
```powershell

Initialize-AeriesApi [-URL] <String> [-Certificate] <String> [[-DatabaseYear] <String>] [[-UserAgent] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>URL</nobr> |  | Base URL for Aeries API | true | false |  |
| <nobr>Certificate</nobr> |  | The certificate to perform the requests | true | true \(ByValue\) |  |
| <nobr>DatabaseYear</nobr> |  | The DatabaseYear to utilize If provided, must be 4 characters | false | false |  |
| <nobr>UserAgent</nobr> |  | User Agent to use for Requests | false | false | PowerShell AeriesApi Module |
### Examples
**EXAMPLE 1**
```powershell
Initialize-AeriesApi -URL "https://demo.aeries.net/aeries" -Certificate "abcdefghijklmnopqrstuvwxyz0123456789"
This will initialize the link to an Aeries Instance for API calls
```


## Initialize-AeriesPreEnrollActive
### Synopsis
Initialize a Pre-Enrollment for an Active Student
### Syntax
```powershell

Initialize-AeriesPreEnrollActive [-StudentID] <Int32> [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Initialize-AeriesPreEnrollActive -StudentID 99400001
This will initialize a Pre Enrollment for the given Student ID in Aeries
```


## Initialize-AeriesPreEnrollInactive
### Synopsis
Initialize a Pre-Enrollment for an Inactive Student
### Syntax
```powershell

Initialize-AeriesPreEnrollInactive [-SchoolCode] <Int16> [[-StudentID] <Int32>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | false | false | 0 |
### Examples
**EXAMPLE 1**
```powershell
Initialize-AeriesPreEnrollInactive -SchoolCode 994 -StudentID 99400001
This will initialize a Pre Enrollment for the given Student ID in Aeries
```


## New-AeriesActivity
### Synopsis
Add an Activity/Award to Aeries
### Syntax
```powershell

New-AeriesActivity [-SchoolCode] <Int16> [-StudentID] <Int32> [[-DateEntered] <DateTime>] [[-TypeCode] <String>] [[-ActivityOrAwardCode] <String>] [[-Name] <String>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [[-Hours] <Decimal>] [[-ReasonCode] <String>] [[-SeasonCode] <String>] [[-StatusCode] <String>] [[-TransportationDate] <DateTime>] [[-TransportationStatusCode] <String>] [[-CareerPathwayCode] <String>] [[-Comment] <String>] [<CommonParameters>]




```
### New-AeriesActivity Aliases
 - Add-AeriesActivity

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>DateEntered</nobr> |  |  | false | false |  |
| <nobr>TypeCode</nobr> |  |  | false | false |  |
| <nobr>ActivityOrAwardCode</nobr> |  |  | false | false |  |
| <nobr>Name</nobr> |  |  | false | false |  |
| <nobr>StartDate</nobr> |  |  | false | false |  |
| <nobr>EndDate</nobr> |  |  | false | false |  |
| <nobr>Hours</nobr> |  |  | false | false | -1 |
| <nobr>ReasonCode</nobr> |  |  | false | false |  |
| <nobr>SeasonCode</nobr> |  |  | false | false |  |
| <nobr>StatusCode</nobr> |  |  | false | false |  |
| <nobr>TransportationDate</nobr> |  |  | false | false |  |
| <nobr>TransportationStatusCode</nobr> |  |  | false | false |  |
| <nobr>CareerPathwayCode</nobr> |  |  | false | false |  |
| <nobr>Comment</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesActivity -SchoolCode 994 -StudentID 99400001 -TypeCode "1" -DateEntered "2021-10-26" -Comment "This was added via PowerShell!"
This will create an Activity in Aeries for StudentID 99400001 at SchoolCode 994
```


## New-AeriesAlternateCourseRequest
### Synopsis
Add an Alternate Course Request to Aeries
### Syntax
```powershell

New-AeriesAlternateCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [-CourseNumber] <String> [[-RelativePrioritySortOrder] <Int32>] [<CommonParameters>]




```
### New-AeriesAlternateCourseRequest Aliases
 - Add-AeriesAlternateCourseRequest

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>CourseNumber</nobr> |  |  | true | false |  |
| <nobr>RelativePrioritySortOrder</nobr> |  |  | false | false | -1 |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -CourseNumber "123456"
This will create an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Course Number 123456
```


## New-AeriesAuthorization
### Synopsis
Add a new Authorization in Aeries
### Syntax
```powershell

New-AeriesAuthorization [-SchoolCode] <Int16> [-StudentID] <Int32> [[-DateEntered] <DateTime>] [[-TypeCode] <String>] [[-MiscCode] <String>] [[-StatusCode] <String>] [[-StatusDate] <DateTime>] [[-EffectiveEndDate] <DateTime>] [[-Comment] <String>] [[-TestAdministration] <String>] [[-Source] <String>] [<CommonParameters>]




```
### New-AeriesAuthorization Aliases
 - Add-AeriesAuthorization

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>DateEntered</nobr> |  |  | false | false |  |
| <nobr>TypeCode</nobr> |  |  | false | false |  |
| <nobr>MiscCode</nobr> |  |  | false | false |  |
| <nobr>StatusCode</nobr> |  |  | false | false |  |
| <nobr>StatusDate</nobr> |  |  | false | false |  |
| <nobr>EffectiveEndDate</nobr> |  |  | false | false |  |
| <nobr>Comment</nobr> |  |  | false | false |  |
| <nobr>TestAdministration</nobr> |  |  | false | false |  |
| <nobr>Source</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Comment "This was added with PowerShell"
This will add an Authorization to Aeries
```


## New-AeriesContact
### Synopsis
Add a Contact to Aeries
### Syntax
```powershell

New-AeriesContact [-StudentID] <Int32> [[-MailingName] <String>] [[-NamePrefix] <String>] [[-FirstName] <String>] [[-LastName] <String>] [[-MiddleName] <String>] [[-NameSuffix] <String>] [[-Address] <String>] [[-AddressCity] <String>] [[-AddressState] <String>] [[-AddressZip] <String>] [[-AddressZipExt] <String>] [[-RelationshipToStudentCode] <String>] [[-HomePhone] <String>] [[-WorkPhone] <String>] [[-WorkPhoneExt] <String>] [[-CellPhone] <String>] [[-EmailAddress] <String>] [[-ContactOrder] <Int32>] [[-MiscCode] <String>] [[-PrimaryContact] <Boolean>] [[-MailTagCode] <String>] [[-AccessToPortal] <Boolean>] [[-LivesWithStudentIndicator] <Boolean>] [<CommonParameters>]




```
### New-AeriesContact Aliases
 - Add-AeriesContact

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>MailingName</nobr> |  |  | false | false |  |
| <nobr>NamePrefix</nobr> |  |  | false | false |  |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Address</nobr> |  |  | false | false |  |
| <nobr>AddressCity</nobr> |  |  | false | false |  |
| <nobr>AddressState</nobr> |  |  | false | false |  |
| <nobr>AddressZip</nobr> |  |  | false | false |  |
| <nobr>AddressZipExt</nobr> |  |  | false | false |  |
| <nobr>RelationshipToStudentCode</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>WorkPhone</nobr> |  |  | false | false |  |
| <nobr>WorkPhoneExt</nobr> |  |  | false | false |  |
| <nobr>CellPhone</nobr> |  |  | false | false |  |
| <nobr>EmailAddress</nobr> |  |  | false | false |  |
| <nobr>ContactOrder</nobr> |  |  | false | false | -1 |
| <nobr>MiscCode</nobr> |  |  | false | false |  |
| <nobr>PrimaryContact</nobr> |  |  | false | false | False |
| <nobr>MailTagCode</nobr> |  |  | false | false |  |
| <nobr>AccessToPortal</nobr> |  |  | false | false | False |
| <nobr>LivesWithStudentIndicator</nobr> |  |  | false | false | False |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesContact -StudentID 99400001 -FirstName "Aeries" -LastName "Software"
This will create a Contact in Aeries for StudentID 99400001
```


## New-AeriesCourseRequest
### Synopsis
Add a Course Request to Aeries
### Syntax
```powershell

New-AeriesCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [[-SectionNumber] <Int16>] [-CourseNumber] <String> [[-PreferredTeacherNumber] <Int16>] [[-PreferredStaffID] <Int32>] [[-RejectCode] <String>] [[-AlternateTag] <String>] [[-ActualPrimaryCourseID] <String>] [[-PermanentLockCode] <String>] [[-AlternateCourseRequestReferences] <Int16[]>] [<CommonParameters>]




```
### New-AeriesCourseRequest Aliases
 - Add-AeriesCourseRequest

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | -1 |
| <nobr>CourseNumber</nobr> |  |  | true | false |  |
| <nobr>PreferredTeacherNumber</nobr> |  |  | false | false | -1 |
| <nobr>PreferredStaffID</nobr> |  |  | false | false | -1 |
| <nobr>RejectCode</nobr> |  |  | false | false |  |
| <nobr>AlternateTag</nobr> |  |  | false | false |  |
| <nobr>ActualPrimaryCourseID</nobr> |  |  | false | false |  |
| <nobr>PermanentLockCode</nobr> |  |  | false | false |  |
| <nobr>AlternateCourseRequestReferences</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesCourseRequest -SchoolCode 994 -StudentID 99400001 -CourseNumber "123456"
This will create a Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Course Number 123456
```


## New-AeriesGradebookAssignment
### Synopsis
Add a new Gradbook Assignment in Aeries
### Syntax
```powershell

New-AeriesGradebookAssignment [-GradebookNumber] <Int32> [-Description] <String> [[-AssignmentCategoryCode] <String>] [[-DateAssigned] <DateTime>] [[-DateDue] <DateTime>] [[-NumberCorrectPossible] <Decimal>] [[-PointsPossible] <Decimal>] [[-Comment] <String>] [[-FormativeSummativeIndicator] <String>] [[-RubricAssignment] <Boolean>] [[-ExternalID] <String>] [[-CreateInLinkedGradebooksToo] <Boolean>] [<CommonParameters>]




```
### New-AeriesGradebookAssignment Aliases
 - Add-AeriesGradebookAssignment

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>GradebookNumber</nobr> |  |  | true | false | 0 |
| <nobr>Description</nobr> |  |  | true | false |  |
| <nobr>AssignmentCategoryCode</nobr> |  |  | false | false |  |
| <nobr>DateAssigned</nobr> |  |  | false | false |  |
| <nobr>DateDue</nobr> |  |  | false | false |  |
| <nobr>NumberCorrectPossible</nobr> |  |  | false | false | -1 |
| <nobr>PointsPossible</nobr> |  |  | false | false | -1 |
| <nobr>Comment</nobr> |  |  | false | false |  |
| <nobr>FormativeSummativeIndicator</nobr> |  |  | false | false |  |
| <nobr>RubricAssignment</nobr> |  |  | false | false | False |
| <nobr>ExternalID</nobr> |  |  | false | false |  |
| <nobr>CreateInLinkedGradebooksToo</nobr> |  |  | false | false | True |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesGradebookAssignment -GradebookNumber 123456 -Description "Assignment created from PowerShell"
This will add a Gradebook Assignment to Aeries
```


## New-AeriesSchedulingSection
### Synopsis
Add a Scheduling Section to Aeries
### Syntax
```powershell

New-AeriesSchedulingSection [-SchoolCode] <Int16> [[-SectionNumber] <Int16>] [[-Period] <Int16>] [[-FlexPeriodSequenceNumber] <Int32>] [[-PeriodBlock] <Int16>] [-Semester] <String> [[-SplitTerm] <String>] [[-ClassCalendarSequenceNumber] <Int32>] [-CourseID] <String> [[-TeacherNumber1] <Int16>] [[-TeacherNumber2] <Int16>] [[-TeacherNumber3] <Int16>] [[-HighlyQualifiedStatusCode1] <String>] [[-HighlyQualifiedStatusCode2] <String>] [[-HighlyQualifiedStatusCode3] <String>] [[-Room] <String>] [[-Credit] <Decimal>] [[-GenderRestriction] <String>] [[-LowGrade] <Int16>] [[-HighGrade] <Int16>] [[-MaxStudents] <Int16>] [[-InactiveStatusCode] <String>] [[-ProgramCode] <String>] [[-HourlyAttendanceProgramCode] <String>] [[-ExclusionCode] <String>] [[-CountsForADA] <String>] [[-MultiTeacherCode] <String>] [[-SchedulingGroup] <String>] [[-TeamCourseGroup] <String>] [[-TeamNumber] <Int32>] [[-SemesterGroup] <String>] [[-Track] <String>] [[-ClassID] <Int32>] [[-EducationServiceCode] <String>] [[-LanguageOfInstructionCode] <String>] [[-InstructionalStrategyCode] <String>] [[-FundingSourceCode] <String>] [[-CareerTechnicalEducationProviderCode] <String>] [[-IndependentStudyIndicator] <String>] [[-DistanceLearningIndicator] <String>] [[-ItinerantTeacherIndicator] <String>] [-UseSupplementalAttendance] [[-PopulationServedCode] <String>] [[-ClassTypeCode] <String>] [[-MonthlyMinutes] <Int16>] [[-UserCode1] <String>] [[-UserCode2] <String>] [[-UserCode3] <String>] [[-UserCode4] <String>] [[-UserCode5] <String>] [[-UserCode6] <String>] [[-UserCode7] <String>] [[-UserCode8] <String>] [[-ArticulatedCourseIndicator] <String>] [[-NonCampusBasedInstructionCode] <String>] [[-PreKSchoolTypeCode] <String>] [[-PreKCurriculaCode] <String>] [-IsHighQualityPreKProgram] [[-InstructionTypeCode] <String>] [[-ProgramEvaluationTypeCode] <String>] [[-EducationalEnvironmentCode] <String>] [[-CareerTechnicalEducationHours] <Int16>] [[-ContentSubcategoryCode] <String>] [[-CharterNonCoreIndicator] <String>] [[-AdvancedCourseStateCode] <String>] [[-OnlineInstructionTypeCode] <String>] [[-MiddleSchoolCoreIndicator] <String>] [[-NonCredentialedAuthorizationCode] <String>] [[-HighQualityCareerTechnicalEducationIndicator] <String>] [[-ArenaSchedulingIndicator] <String>] [-ExcludeFromScheduler] [[-SectionStaffMembers] <SectionStaffMember[]>] [<CommonParameters>]




```
### New-AeriesSchedulingSection Aliases
 - Add-AeriesSchedulingSection

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | false | false | 0 |
| <nobr>Period</nobr> |  |  | false | false | -1 |
| <nobr>FlexPeriodSequenceNumber</nobr> |  |  | false | false | 0 |
| <nobr>PeriodBlock</nobr> |  |  | false | false | 0 |
| <nobr>Semester</nobr> |  |  | true | false |  |
| <nobr>SplitTerm</nobr> |  | If the value is blank, accept it. Might be section staff If is in valid set, accept it If value is 6 or less characters, accept it | false | false |  |
| <nobr>ClassCalendarSequenceNumber</nobr> |  |  | false | false | 0 |
| <nobr>CourseID</nobr> |  |  | true | false |  |
| <nobr>TeacherNumber1</nobr> |  |  | false | false | 0 |
| <nobr>TeacherNumber2</nobr> |  |  | false | false | -1 |
| <nobr>TeacherNumber3</nobr> |  |  | false | false | -1 |
| <nobr>HighlyQualifiedStatusCode1</nobr> |  |  | false | false |  |
| <nobr>HighlyQualifiedStatusCode2</nobr> |  |  | false | false |  |
| <nobr>HighlyQualifiedStatusCode3</nobr> |  |  | false | false |  |
| <nobr>Room</nobr> |  |  | false | false |  |
| <nobr>Credit</nobr> |  |  | false | false | 0 |
| <nobr>GenderRestriction</nobr> |  |  | false | false |  |
| <nobr>LowGrade</nobr> |  |  | false | false | -99 |
| <nobr>HighGrade</nobr> |  | -99 because technically -1 that I usually use is a valid grade | false | false | -99 |
| <nobr>MaxStudents</nobr> |  | -99 because technically -1 that I usually use is a valid grade | false | false | 0 |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>ProgramCode</nobr> |  |  | false | false |  |
| <nobr>HourlyAttendanceProgramCode</nobr> |  |  | false | false |  |
| <nobr>ExclusionCode</nobr> |  |  | false | false |  |
| <nobr>CountsForADA</nobr> |  |  | false | false |  |
| <nobr>MultiTeacherCode</nobr> |  |  | false | false |  |
| <nobr>SchedulingGroup</nobr> |  |  | false | false |  |
| <nobr>TeamCourseGroup</nobr> |  |  | false | false |  |
| <nobr>TeamNumber</nobr> |  |  | false | false | 0 |
| <nobr>SemesterGroup</nobr> |  |  | false | false |  |
| <nobr>Track</nobr> |  |  | false | false |  |
| <nobr>ClassID</nobr> |  |  | false | false | 0 |
| <nobr>EducationServiceCode</nobr> |  |  | false | false |  |
| <nobr>LanguageOfInstructionCode</nobr> |  |  | false | false |  |
| <nobr>InstructionalStrategyCode</nobr> |  |  | false | false |  |
| <nobr>FundingSourceCode</nobr> |  |  | false | false |  |
| <nobr>CareerTechnicalEducationProviderCode</nobr> |  |  | false | false |  |
| <nobr>IndependentStudyIndicator</nobr> |  |  | false | false |  |
| <nobr>DistanceLearningIndicator</nobr> |  |  | false | false |  |
| <nobr>ItinerantTeacherIndicator</nobr> |  |  | false | false |  |
| <nobr>UseSupplementalAttendance</nobr> |  |  | false | false | False |
| <nobr>PopulationServedCode</nobr> |  |  | false | false |  |
| <nobr>ClassTypeCode</nobr> |  |  | false | false |  |
| <nobr>MonthlyMinutes</nobr> |  |  | false | false | 0 |
| <nobr>UserCode1</nobr> |  |  | false | false |  |
| <nobr>UserCode2</nobr> |  |  | false | false |  |
| <nobr>UserCode3</nobr> |  |  | false | false |  |
| <nobr>UserCode4</nobr> |  |  | false | false |  |
| <nobr>UserCode5</nobr> |  |  | false | false |  |
| <nobr>UserCode6</nobr> |  |  | false | false |  |
| <nobr>UserCode7</nobr> |  |  | false | false |  |
| <nobr>UserCode8</nobr> |  |  | false | false |  |
| <nobr>ArticulatedCourseIndicator</nobr> |  |  | false | false |  |
| <nobr>NonCampusBasedInstructionCode</nobr> |  |  | false | false |  |
| <nobr>PreKSchoolTypeCode</nobr> |  |  | false | false |  |
| <nobr>PreKCurriculaCode</nobr> |  |  | false | false |  |
| <nobr>IsHighQualityPreKProgram</nobr> |  |  | false | false | False |
| <nobr>InstructionTypeCode</nobr> |  |  | false | false |  |
| <nobr>ProgramEvaluationTypeCode</nobr> |  |  | false | false |  |
| <nobr>EducationalEnvironmentCode</nobr> |  |  | false | false |  |
| <nobr>CareerTechnicalEducationHours</nobr> |  |  | false | false | 0 |
| <nobr>ContentSubcategoryCode</nobr> |  |  | false | false |  |
| <nobr>CharterNonCoreIndicator</nobr> |  |  | false | false |  |
| <nobr>AdvancedCourseStateCode</nobr> |  |  | false | false |  |
| <nobr>OnlineInstructionTypeCode</nobr> |  |  | false | false |  |
| <nobr>MiddleSchoolCoreIndicator</nobr> |  |  | false | false |  |
| <nobr>NonCredentialedAuthorizationCode</nobr> |  |  | false | false |  |
| <nobr>HighQualityCareerTechnicalEducationIndicator</nobr> |  |  | false | false |  |
| <nobr>ArenaSchedulingIndicator</nobr> |  |  | false | false |  |
| <nobr>ExcludeFromScheduler</nobr> |  |  | false | false | False |
| <nobr>SectionStaffMembers</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesSchedulingSection -SchoolCode 884 -Semester "F"
This will create a Schedule Section in Aeries for SchoolCode 884
```


## New-AeriesStaff
### Synopsis
Add a new Staff in Aeries
### Syntax
```powershell

New-AeriesStaff [[-StaffID] <Int32>] [[-FirstName] <String>] [[-LastName] <String>] [[-MiddleName] <String>] [[-BirthYear] <Int16>] [[-BirthDate] <DateTime>] [[-FullTimePercentage] <Int16>] [[-HireDate] <DateTime>] [[-LeaveDate] <DateTime>] [[-InactiveStatusCode] <String>] [[-StateEducatorID] <String>] [[-EmailAddress] <String>] [[-PrimaryAeriesSchool] <Int16>] [[-NetworkLoginID] <String>] [[-AlternateEmailAddress] <String>] [[-HumanResourcesSystemID] <String>] [[-CellPhone] <String>] [[-Title] <String>] [[-Gender] <String>] [[-EducationLevelCode] <String>] [[-EthnicityCode] <String>] [[-RaceCode1] <String>] [[-RaceCode2] <String>] [[-RaceCode3] <String>] [[-RaceCode4] <String>] [[-RaceCode5] <String>] [[-PositionStatusCode] <String>] [[-TotalYearsOfEduService] <Int16>] [[-TotalYearsInThisDistrict] <Int16>] [[-PreviousLastName] <String>] [[-PreviousFirstName] <String>] [[-PreviousMiddleName] <String>] [[-NameSuffix] <String>] [[-Address] <String>] [[-AddressCity] <String>] [[-AddressState] <String>] [[-AddressZipCode] <String>] [[-AddressZipExt] <String>] [[-HomePhone] <String>] [[-EmergencyContactName] <String>] [[-EmergencyContactPhone] <String>] [<CommonParameters>]




```
### New-AeriesStaff Aliases
 - Add-AeriesStaff

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | false | false | -1 |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>BirthYear</nobr> |  |  | false | false | -1 |
| <nobr>BirthDate</nobr> |  |  | false | false |  |
| <nobr>FullTimePercentage</nobr> |  |  | false | false | -1 |
| <nobr>HireDate</nobr> |  |  | false | false |  |
| <nobr>LeaveDate</nobr> |  |  | false | false |  |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>StateEducatorID</nobr> |  |  | false | false |  |
| <nobr>EmailAddress</nobr> |  |  | false | false |  |
| <nobr>PrimaryAeriesSchool</nobr> |  |  | false | false | -1 |
| <nobr>NetworkLoginID</nobr> |  |  | false | false |  |
| <nobr>AlternateEmailAddress</nobr> |  |  | false | false |  |
| <nobr>HumanResourcesSystemID</nobr> |  |  | false | false |  |
| <nobr>CellPhone</nobr> |  |  | false | false |  |
| <nobr>Title</nobr> |  |  | false | false |  |
| <nobr>Gender</nobr> |  |  | false | false |  |
| <nobr>EducationLevelCode</nobr> |  |  | false | false |  |
| <nobr>EthnicityCode</nobr> |  |  | false | false |  |
| <nobr>RaceCode1</nobr> |  |  | false | false |  |
| <nobr>RaceCode2</nobr> |  |  | false | false |  |
| <nobr>RaceCode3</nobr> |  |  | false | false |  |
| <nobr>RaceCode4</nobr> |  |  | false | false |  |
| <nobr>RaceCode5</nobr> |  |  | false | false |  |
| <nobr>PositionStatusCode</nobr> |  |  | false | false |  |
| <nobr>TotalYearsOfEduService</nobr> |  |  | false | false | -1 |
| <nobr>TotalYearsInThisDistrict</nobr> |  |  | false | false | -1 |
| <nobr>PreviousLastName</nobr> |  |  | false | false |  |
| <nobr>PreviousFirstName</nobr> |  |  | false | false |  |
| <nobr>PreviousMiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Address</nobr> |  |  | false | false |  |
| <nobr>AddressCity</nobr> |  |  | false | false |  |
| <nobr>AddressState</nobr> |  |  | false | false |  |
| <nobr>AddressZipCode</nobr> |  |  | false | false |  |
| <nobr>AddressZipExt</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>EmergencyContactName</nobr> |  |  | false | false |  |
| <nobr>EmergencyContactPhone</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesStaff -StaffID 1 -FirstName "Aeries" -LastName "Software"
This will add a Staff to Aeries
```


## New-AeriesStaffAssignment
### Synopsis
Add a Staff Assignment in Aeries
### Syntax
```powershell

New-AeriesStaffAssignment [-StaffID] <Int32> [-AssignmentType] <String> [[-JobClassification] <String>] [[-FullTimePercentage] <Double>] [[-NonClassroomBasedJobAssignment1] <String>] [[-NonClassroomBasedJobAssignment2] <String>] [[-NonClassroomBasedJobAssignment3] <String>] [[-NonClassroomBasedJobAssignment4] <String>] [[-NonClassroomBasedJobAssignment5] <String>] [[-NonClassroomBasedJobAssignment6] <String>] [[-NonClassroomBasedJobAssignment7] <String>] [[-SchoolCode] <Int16>] [[-StartDate] <DateTime>] [[-EndDate] <DateTime>] [<CommonParameters>]




```
### New-AeriesStaffAssignment Aliases
 - Add-AeriesStaffAssignment

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentType</nobr> |  |  | true | false |  |
| <nobr>JobClassification</nobr> |  | If the passed in value is blank or null, accept it Classified can have up to 3 character codes Certificated can have up to 2 character codes | false | false |  |
| <nobr>FullTimePercentage</nobr> |  |  | false | false | -1 |
| <nobr>NonClassroomBasedJobAssignment1</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment2</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment3</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment4</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment5</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment6</nobr> |  |  | false | false |  |
| <nobr>NonClassroomBasedJobAssignment7</nobr> |  |  | false | false |  |
| <nobr>SchoolCode</nobr> |  |  | false | false | -1 |
| <nobr>StartDate</nobr> |  |  | false | false |  |
| <nobr>EndDate</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesStaffAssignment -StaffID 1 -AssignmentType "classified"
This will create a Staff Assignment for Staff ID 1 with an Assignment Type of "classified" in Aeries
```


## New-AeriesStudent
### Synopsis
Add a new Student in Aeries
### Syntax
```powershell

New-AeriesStudent [-SchoolCode] <Int16> [[-LastName] <String>] [[-FirstName] <String>] [[-MiddleName] <String>] [[-NameSuffix] <String>] [[-Gender] <String>] [[-Grade] <String>] [[-NextGrade] <String>] [[-NextSchool] <Int16>] [[-BirthDate] <DateTime>] [[-InactiveStatusCode] <String>] [[-HomePhone] <String>] [[-HomeLanguageCode] <String>] [[-CorrespondanceLanguageCode] <String>] [[-LanguageFluencyCode] <String>] [[-EthnicityCode] <String>] [[-Race1Code] <String>] [[-Race2Code] <String>] [[-Race3Code] <String>] [[-Race4Code] <String>] [[-Race5Code] <String>] [[-LastSchool] <Int16>] [[-ResidenceSchool] <Int16>] [[-NextResidenceSchool] <Int16>] [[-SchoolEnterDate] <DateTime>] [[-DistrictEnterDate] <DateTime>] [[-BirthCity] <String>] [[-BirthStateCode] <String>] [[-BirthCountryCode] <String>] [[-ParentEdLevelCode] <String>] [[-ParentGuardianName] <String>] [[-MailingAddress] <String>] [[-MailingAddressCity] <String>] [[-MailingAddressState] <String>] [[-MailingAddressZipCode] <String>] [[-MailingAddressZipExt] <String>] [[-ResidenceAddress] <String>] [[-ResidenceAddressCity] <String>] [[-ResidenceAddressState] <String>] [[-ResidenceAddressZipCode] <String>] [[-ResidenceAddressZipExt] <String>] [[-HomeLanguageSurveyFirstLanguageCode] <String>] [[-HomeLanguageSurveyPrimaryLanguageCode] <String>] [[-HomeLanguageSurveyHomeLanguageCode] <String>] [[-HomeLanguageSurveyAdultLanguageCode] <String>] [[-USEnterDate] <DateTime>] [[-USSchoolEnterDate] <DateTime>] [[-UserCode1] <String>] [[-UserCode2] <String>] [[-UserCode3] <String>] [[-UserCode4] <String>] [[-UserCode5] <String>] [[-UserCode6] <String>] [[-UserCode7] <String>] [[-UserCode8] <String>] [[-UserCode9] <String>] [[-UserCode10] <String>] [[-UserCode11] <String>] [[-UserCode12] <String>] [[-UserCode13] <String>] [<CommonParameters>]




```
### New-AeriesStudent Aliases
 - Add-AeriesStudent

### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>LastName</nobr> |  |  | false | false |  |
| <nobr>FirstName</nobr> |  |  | false | false |  |
| <nobr>MiddleName</nobr> |  |  | false | false |  |
| <nobr>NameSuffix</nobr> |  |  | false | false |  |
| <nobr>Gender</nobr> |  |  | false | false |  |
| <nobr>Grade</nobr> |  |  | false | false |  |
| <nobr>NextGrade</nobr> |  |  | false | false |  |
| <nobr>NextSchool</nobr> |  |  | false | false | -1 |
| <nobr>BirthDate</nobr> |  |  | false | false |  |
| <nobr>InactiveStatusCode</nobr> |  |  | false | false |  |
| <nobr>HomePhone</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageCode</nobr> |  |  | false | false |  |
| <nobr>CorrespondanceLanguageCode</nobr> |  |  | false | false |  |
| <nobr>LanguageFluencyCode</nobr> |  |  | false | false |  |
| <nobr>EthnicityCode</nobr> |  |  | false | false |  |
| <nobr>Race1Code</nobr> |  |  | false | false |  |
| <nobr>Race2Code</nobr> |  |  | false | false |  |
| <nobr>Race3Code</nobr> |  |  | false | false |  |
| <nobr>Race4Code</nobr> |  |  | false | false |  |
| <nobr>Race5Code</nobr> |  |  | false | false |  |
| <nobr>LastSchool</nobr> |  |  | false | false | -1 |
| <nobr>ResidenceSchool</nobr> |  |  | false | false | -1 |
| <nobr>NextResidenceSchool</nobr> |  |  | false | false | -1 |
| <nobr>SchoolEnterDate</nobr> |  |  | false | false |  |
| <nobr>DistrictEnterDate</nobr> |  |  | false | false |  |
| <nobr>BirthCity</nobr> |  |  | false | false |  |
| <nobr>BirthStateCode</nobr> |  |  | false | false |  |
| <nobr>BirthCountryCode</nobr> |  |  | false | false |  |
| <nobr>ParentEdLevelCode</nobr> |  |  | false | false |  |
| <nobr>ParentGuardianName</nobr> |  |  | false | false |  |
| <nobr>MailingAddress</nobr> |  |  | false | false |  |
| <nobr>MailingAddressCity</nobr> |  |  | false | false |  |
| <nobr>MailingAddressState</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>MailingAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddress</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressCity</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressState</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipCode</nobr> |  |  | false | false |  |
| <nobr>ResidenceAddressZipExt</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyFirstLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyPrimaryLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyHomeLanguageCode</nobr> |  |  | false | false |  |
| <nobr>HomeLanguageSurveyAdultLanguageCode</nobr> |  |  | false | false |  |
| <nobr>USEnterDate</nobr> |  |  | false | false |  |
| <nobr>USSchoolEnterDate</nobr> |  |  | false | false |  |
| <nobr>UserCode1</nobr> |  |  | false | false |  |
| <nobr>UserCode2</nobr> |  |  | false | false |  |
| <nobr>UserCode3</nobr> |  |  | false | false |  |
| <nobr>UserCode4</nobr> |  |  | false | false |  |
| <nobr>UserCode5</nobr> |  |  | false | false |  |
| <nobr>UserCode6</nobr> |  |  | false | false |  |
| <nobr>UserCode7</nobr> |  |  | false | false |  |
| <nobr>UserCode8</nobr> |  |  | false | false |  |
| <nobr>UserCode9</nobr> |  |  | false | false |  |
| <nobr>UserCode10</nobr> |  |  | false | false |  |
| <nobr>UserCode11</nobr> |  |  | false | false |  |
| <nobr>UserCode12</nobr> |  |  | false | false |  |
| <nobr>UserCode13</nobr> |  |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
New-AeriesStudent -SchoolCode 994 -FirstName "Aeries" -LastName "Software"
This will add a student to the specific School Code in Aeries
```


## Remove-AeriesActivity
### Synopsis
Remove an Activity/Award to Aeries
### Syntax
```powershell

Remove-AeriesActivity [-SchoolCode] <Int16> [-StudentID] <Int32> [[-Sequence] <Int16>] [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesActivity -SchoolCode 994 -StudentID 99400001 -Sequence 1
This will delete an Activity/Award in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
```


## Remove-AeriesAlternateCourseRequest
### Synopsis
Remove an Alternate Course Request from Aeries
### Syntax
```powershell

Remove-AeriesAlternateCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [-Sequence] <Int16> [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1
This will delete an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
```


## Remove-AeriesAuthorization
### Synopsis
Remove an Authorization in Aeries
### Syntax
```powershell

Remove-AeriesAuthorization [-SchoolCode] <Int16> [-StudentID] <Int32> [[-Sequence] <Int16>] [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | false | false | 0 |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesAuthorization -SchoolCode 994 -StudentID 99400001 -Sequence 1
This will remove an Authorization in Aeries
```


## Remove-AeriesContact
### Synopsis
Removes a Contact in Aeries
### Syntax
```powershell

Remove-AeriesContact [-StudentID] <Int32> [-Sequence] <Int16> [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesContact -StudentID 99400001 -Sequence 1
This will remove a Contact in Aeries for StudentID 99400001 with a Sequence Number of 1
```


## Remove-AeriesCourseRequest
### Synopsis
Remove a Course Request from Aeries
### Syntax
```powershell

Remove-AeriesCourseRequest [-SchoolCode] <Int16> [-StudentID] <Int32> [-Sequence] <Int16> [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>StudentID</nobr> |  |  | true | false | 0 |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1
This will delete a Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
```


## Remove-AeriesSchedulingSection
### Synopsis
Removes a Scheduling Section in Aeries
### Syntax
```powershell

Remove-AeriesSchedulingSection [-SchoolCode] <Int16> [-SectionNumber] <Int16> [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>SectionNumber</nobr> |  |  | true | false | 0 |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesSchedulingSection -SchoolCode 884 -SectionNumber 1
This will remove a Scheduling Section in Aeries for SchoolCode 884 with a SectionNumber 1
```


## Remove-AeriesStaffAssignment
### Synopsis
Removes a Staff Assignment in Aeries
### Syntax
```powershell

Remove-AeriesStaffAssignment -StaffID <Int32> -AssignmentType <String> -StartDate <DateTime> [-WhatIf] [-Confirm] [<CommonParameters>]

Remove-AeriesStaffAssignment -StaffID <Int32> -AssignmentType <String> -Sequence <Int16> [-WhatIf] [-Confirm] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>StaffID</nobr> |  |  | true | false | 0 |
| <nobr>AssignmentType</nobr> |  |  | true | false |  |
| <nobr>Sequence</nobr> |  |  | true | false | 0 |
| <nobr>StartDate</nobr> |  |  | true | false |  |
| <nobr>WhatIf</nobr> | wi |  | false | false |  |
| <nobr>Confirm</nobr> | cf |  | false | false |  |
### Examples
**EXAMPLE 1**
```powershell
Remove-AeriesStaffAssignment -StaffID 1 AssignmentType "classified" -Sequence 1
This will remove a classified Staff Assignment in Aeries for StaffID 1 with a Sequence Number of 1
```


## Send-AeriesAlert
### Synopsis
Send an alert to a User/Teacher/Parent/Student in Aeries
### Syntax
```powershell

Send-AeriesAlert [-SchoolCode] <Int16> [-RecipientID] <Int32> [-RecipientType] <String> [-Comment] <String> [[-StudentNumber] <Int32>] [[-StudentID] <Int32>] [[-OtherID] <String>] [[-PageID] <String>] [[-AlertType] <String>] [<CommonParameters>]




```
### Parameters
| Name  | Alias  | Description | Required? | Pipeline Input | Default Value |
| - | - | - | - | - | - |
| <nobr>SchoolCode</nobr> |  |  | true | false | 0 |
| <nobr>RecipientID</nobr> |  |  | true | false | 0 |
| <nobr>RecipientType</nobr> |  |  | true | false |  |
| <nobr>Comment</nobr> |  |  | true | false |  |
| <nobr>StudentNumber</nobr> |  |  | false | false | -1 |
| <nobr>StudentID</nobr> |  |  | false | false | -1 |
| <nobr>OtherID</nobr> |  |  | false | false |  |
| <nobr>PageID</nobr> |  |  | false | false | 0 |
| <nobr>AlertType</nobr> |  |  | false | false | Alert |
### Examples
**EXAMPLE 1**
```powershell
Send-AeriesAlert -SchoolCode 994 -RecipientID 1 -RecipientType "User" -Comment "This is an amazing Alert!"
This will send an Alert to the User with UID 1 to Aeries
```


## Test-AeriesApiConnection
### Synopsis
Test the connection for Aeries API calls
### Syntax
```powershell

Test-AeriesApiConnection [<CommonParameters>]




```
### Outputs
 - System.Boolean

### Examples
**EXAMPLE 1**
```powershell
Test-AeriesApiConnection
This will perform a web request against the configured Aeries Instance
```


