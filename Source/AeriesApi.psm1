$ModuleFiles = @( Get-ChildItem -Path "$PSScriptRoot\AeriesApi\*.ps1" -ErrorAction SilentlyContinue -Recurse -Exclude "*template*")

foreach ($File in $ModuleFiles) {
    try {
        . $File.FullName
    }
    catch {
        Write-Error -Message "Failed to import function $($File.FullName): $_"
    }
}

Export-ModuleMember -Function $ModuleFiles.Basename -Alias *
