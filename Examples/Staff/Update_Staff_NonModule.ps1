$Url = "https://demo.aeries.net/aeries"
$Cert = "477abe9e7d27439681d62f4e0de1f5e1"

$Headers = @{
    "AERIES-CERT" = $Cert
}

$ExistingStaff = (Invoke-WebRequest -Uri "$($Url)/api/v5/staff" -Headers $Headers).Content | ConvertFrom-Json

$StaffData = (Get-Content -Path "./staff.csv" | ConvertFrom-Csv)

foreach ($StaffCSV in $StaffData) {
    $ExistingStaffRecord = ($ExistingStaff | Where-Object -Property "HumanResourcesSystemID" -EQ $StaffCSV."id")

    $StaffPayload = @{
        "HumanResourcesSystemID" = $StaffCSV."id"
        "FirstName" = $StaffCSV."first_name"
        "LastName" = $StaffCSV."last_name"
        "EmailAddress" = $StaffCSV."email"
        "Address" = $StaffCSV."address"
        "AddressState" = $StaffCSV."state"
        "AddressCity" = $StaffCSV."city"
        "AddressZipCode" = $StaffCSV."postal_code"
    }

    if ($ExistingStaffRecord) {
        # Update
        $RequestUrl = "$($Url)/api/v5/staff/$($ExistingStaffRecord."ID")"
        $Method = "PUT"
    }
    else {
        # Create
        $RequestUrl = "$($Url)/api/v5/staff"
        $Method = "POST"
    }

    try {
        Invoke-WebRequest -Method $Method -Uri $RequestUrl -Headers $Headers -Body $StaffPayload
    }
    catch {
        Write-Error $_
    }
}
