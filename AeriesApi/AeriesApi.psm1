$Public = @( Get-ChildItem -Path "$PSScriptRoot\Public\*.ps1" -ErrorAction SilentlyContinue -Exclude "*template*")
$Private = @( Get-ChildItem -Path "$PSScriptRoot\Private\*.ps1" -ErrorAction SilentlyContinue -Exclude "*template*")

foreach ($File in @($Public + $Private)) {
    try {
        . $File.FullName
    }
    catch {
        Write-Error -Message "Failed to import function $($File.FullName): $_"
    }
}

Export-ModuleMember -Function $Public.Basename -Alias *
