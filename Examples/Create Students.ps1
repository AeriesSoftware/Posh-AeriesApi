# Import the module
Import-Module -Name AeriesApi

# Set some variables
$URL = ""
$Certificate = ""

Initialize-AeriesApi -URL $URL -Certificate $Certificate

# Get all schools, is ACtive and that aren't in $ExcludeSchools
$Students = (Import-Csv -Path "C:\tmp\student.csv")

# Loop through the resulting Schools
foreach ($Student in $Students) {
    $StudentObject = @{
        "FirstName" = $Student."First Name"
        "LastName" = $Student."Last Name"
        "Grade" = $Student."Grade Level"
    }
    
    try {
        $NewStudent = (Add-AeriesStudent -SchoolCode $Student."School" @StudentObject)
        Write-Host "Created Student ID $($NewStudent.StudentID) - $($NewStudent.FirstName) $($NewStudent.LastName)"
    }
    catch {
        Write-Warning "Error adding Student $($Student."First Name") $($Student."Last Name")"
        Write-Warning "$($Error[0])"
    }
    finally {
        $NewStudent = $null
    }
}
