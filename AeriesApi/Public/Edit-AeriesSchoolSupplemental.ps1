function Edit-AeriesSchoolSupplemental
{
    <#
        .SYNOPSIS
        Edit a School Supplemental record for a Student in Aeries

        .DESCRIPTION
        The Edit-AeriesSchoolSupplemental cmdlet is used to edit School Supplemental Information in Aeries for a given StudentNumber at the SchoolCode

        .EXAMPLE
        Edit-AeriesSchoolSupplemental -SchoolCode 994 -StudentNumber 1 -ColumnCode "PI" -NewValue "XZ"
        This will create an Activity in Aeries for StudentID 99400001 at SchoolCode 994
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $StudentNumber,

        [Parameter(Mandatory=$false)]
        [string]
        $ColumnCode,

        [Parameter(Mandatory=$false)]
        [string]
        $NewValue
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/UpdateSchoolSupplemental/$SchoolCode/$StudentNumber"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {

        $Columns = @()

        <# This is done purely to match formatting required for Aeries #>
        $Columns += @{
            "ColumnCode" = $ColumnCode
            "NewValue" = $NewValue
        }

        $Body.Columns = $Columns

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
