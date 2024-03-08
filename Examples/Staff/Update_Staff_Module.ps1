try { Stop-Transcript } catch {}
Start-Transcript -Path (Join-Path -Path $PSScriptRoot -ChildPath "log.txt")

Import-Module -Name AeriesApi

$ConfigFile = (Join-Path -Path $PSScriptRoot -ChildPath "config.json")
$Config = (Get-Content -Path $ConfigFile | ConvertFrom-Json)

$DataDirectory = ($PSScriptRoot)
$DataFile = (Join-Path -Path $DataDirectory -ChildPath "staff.csv")
$StaffData = (Get-Content -Path $DataFile | ConvertFrom-Csv)

Initialize-AeriesApi -URL $Config.Url -Certificate $Config.Certificate
$AeriesStaff = (Get-AeriesStaff)
# $NewID, $AvailableIDs = (1..5000 | Where-Object { $_ -notin $AeriesStaff."ID" })

foreach ($Staff in $StaffData) {
    $AeriesRecord = ($AeriesStaff | Where-Object -Property "HumanResourcesSystemID" -EQ $Staff."id" | Select-Object -First 1)

    <#
        Map from File to Parameters
        Left: Parameter Name
        Right: File Value
    #>
    $StaffInformation = @{
        "HumanResourcesSystemID" = $Staff."id"
    }

    <#
        If no existing Staff record exists, create one
        otherwise update the existing one
    #>
    if ([string]::IsNullOrEmpty($AeriesRecord."ID")) {
        # $StaffInformation."StaffID" = $NewID
        $AeriesRecord = (Add-AeriesStaff @StaffInformation)

        # $NewID, $AvailableIds = $AvailableIds
    }
    else {
        $AeriesRecord = (Edit-AeriesStaff -StaffID $AeriesRecord."ID" @StaffInformation)
    }
}

Stop-Transcript
