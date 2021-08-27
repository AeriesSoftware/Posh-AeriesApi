function Add-AeriesStudent
{
    <#  
        .SYNOPSIS
        Add a new Student in Aeries
        
        .DESCRIPTION
        The Add-AeriesStudent cmdlet is used to add a Student for a specific School in Aeries

        .EXAMPLE
        Add-AeriesStudent -SchoolCode 994
        This will add a student to  for the specific Student ID from Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,
        [Parameter(Mandatory=$true)]
        [object]
        $StudentData
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/schools/$SchoolCode/InsertStudent"
        $ContentType = "application/json"
        $Body = ($StudentData | ConvertTo-Json -Compress)
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $Body -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
