# Import the module
Import-Module -Name AeriesApi

# Set some variables
$URL = ""
$Certificate = ""

Initialize-AeriesApi -URL $URL -Certificate $Certificate

# Get all Students to Add
$Students = (Import-Csv -Path "C:\tmp\student.csv")

# Loop through the Students
foreach ($Student in $Students) {
    # The values on the left are the command parameters
    # The values on the right can be whatever you want, in this case mapping to CSV content
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
        Write-Error "Error adding Student $($Student."First Name") $($Student."Last Name")`n$($Error[0])"
    }
    finally {
        $NewStudent = $null
    }
}
