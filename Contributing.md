## Parameters

### School Code Parameter
```powershell
[ValidateRange(1, [Int16]::MaxValue)]
[Parameter(Mandatory=$true)]
[Int16]
$SchoolCode
```

### Student ID Parameter
```powershell
[ValidateRange(1, [Int]::MaxValue)]
[Parameter(Mandatory=$true)]
[int]
$StudentID
```

### Sequence Parameter
```powershell
[ValidateRange(1, [Int16]::MaxValue)]
[Parameter(Mandatory=$false)]
[Int16]
$Sequence
```
