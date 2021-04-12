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

### Grade Level
```powershell
[ValidateSet("-2","-1","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18")]
[Parameter(Mandatory=$false)]
[string]
$Grade
```
