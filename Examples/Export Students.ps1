# Import the module
Import-Module -Name AeriesApi

# Set some variables
$URL = $args[0]
$Certificate = $args[1]

$ExportFile = ".\temp\students.csv"
# Columns to export
$ExportColumns = "SchoolCode","SchoolName","FirstName","LastName","Grade","GradeLevelShortDescription","GradeLevelLongDescription"
# Schools to exclude
$ExcludeSchools = 0,99,900,901,902,999

Initialize-AeriesApi -URL $URL -Certificate $Certificate

# Get all schools, is ACtive and that aren't in $ExcludeSchools
$Schools = (Get-AeriesSchool | Where-Object "InactiveStatusCode" -EQ "" | Where-Object "SchoolCode" -NotIn $ExcludeSchools)
$AllStudents = $null

# Loop through the resulting Schools
foreach ($School in $Schools) {
    if ($School.SchoolCode -eq 994) {
        # If the school is 994, change the name to something else
        $School.Name += " (aka best school)"
    }

    # Get all Students, modify them as we desire then add to $AllStudents
    $Students = (Get-AeriesStudent -SchoolCode $School.SchoolCode | Where-Object "InactiveStatusCode" -EQ "")
    $Students | Add-Member -NotePropertyName "SchoolName" -NotePropertyValue $School.Name

    $AllStudents += $Students
}

if (Test-Path -Path $ExportFile) {
    # Delete the $ExportFile if it exists
    Remove-Item $ExportFile -Force
}
# Select just the desired columns, then export as CSV
$AllStudents | Select-Object $ExportColumns | Export-Csv -Path $ExportFile -NoClobber -NoTypeInformation -Force
