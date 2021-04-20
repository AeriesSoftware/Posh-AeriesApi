Import-Module -Name AeriesApi

# Set some variables
$URL = ""
$Certificate = ""
$PictureSaveLocation = ".\temp\pictures"


Initialize-AeriesApi -URL $URL -Certificate $Certificate

if (!(Test-Path $PictureSaveLocation)) {
    New-Item -Path $PictureSaveLocation -ItemType Directory
}

# Exclude School 0 since it won't pull pictures
$Schools = (Get-AeriesSchool | Where-Object "SchoolCode" -ne 0 | Where-Object "InactiveStatusCode" -eq "") | Where-Object "SchoolCode" -eq 994

foreach ($School in $Schools) {
    # Loop through each School, then get all pictures for Students
    $Students = (Get-AeriesStudentPicture -SchoolCode $School.SchoolCode)

    # Loop through each Student
    foreach ($Student in $Students) {

        $FullStudent = (Get-AeriesStudent -SchoolCode $School.SchoolCode -StudentID $Student.StudentID | Where-Object "InactiveStatusCode" -eq "" | Select-Object -First 1)
        if (!$FullStudent) {
            # If the $FullStudent could not be retrieved (possibly not active)
            continue
        }

        # Loop through each Picture for each Student
        foreach ($Picture in $Student.Pictures) {

            # Set the filename and extension
            $FileName = "$($Student.StudentID)_$($FullStudent.FirstName)_$($Picture.SchoolYear).$($Picture.FileExtension)"

            # Set the full file save location as the $PictureSaveLocation and join the $FileName
            $FilePath = (Join-Path -path $PictureSaveLocation -ChildPath $FileName)

            # Decode the picture contents into a variable
            $DecodedPicture = [System.Convert]::FromBase64CharArray($Picture.RawBinary, 0, $Picture.RawBinary.Length)
    
            if (Test-Path $FilePath) {
                # Check if file already exists, if so delete it
                Remove-Item -Path $FilePath -Force
            }

            # Finally save the picture to disk
            Set-Content -Path $FilePath -Value $DecodedPicture -AsByteStream
        }
    }
}
