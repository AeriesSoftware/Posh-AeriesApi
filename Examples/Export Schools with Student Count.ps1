# Import the module
Import-Module -Name AeriesApi

# Set some variables
$URL = ""
$Certificate = ""

$ExportFile = ".\temp\schools.csv"
# Columns to export
$ExportColumns = "SchoolCode","Name","Address","AddressCity","AddressState","AddressZipCode","AddressZipExt","Student Count"
# Schools to exclude
$ExcludeSchools = 99,900,901,902,999

Initialize-AeriesApi -URL $URL -Certificate $Certificate

# Get all schools, is ACtive and that aren't in $ExcludeSchools
$Schools = (Get-AeriesSchool | Where-Object "InactiveStatusCode" -EQ "" | Where-Object "SchoolCode" -NotIn $ExcludeSchools)

# Loop through the resulting Schools
foreach ($School in $Schools) {
    if ($School.SchoolCode -eq 994) {
        # If the school is 994, change the name to something else
        $School.Name = "Aeries's Awesome School"
    }

    # Because the API will fail on SchoolCode 0 for getting Students
    if ($School.SchoolCode -gt 0) {
        # Retrieve all Students and filter to just Active
        $Students = (Get-AeriesStudent -SchoolCode $School.SchoolCode | Where-Object "InactiveStatusCode" -EQ "")
        # Add "Student Count" to the School Object with the value of the Students.Count
        $School | Add-Member -NotePropertyName "Student Count" -NotePropertyValue $Students.Count
    }
}

if (Test-Path -Path $ExportFile) {
    # Delete the $ExportFile if it exists
    Remove-Item $ExportFile -Force
}
# Select just the desired columns, then export as CSV
$Schools | Select-Object $ExportColumns | Export-Csv -Path $ExportFile -NoClobber -NoTypeInformation -Force
