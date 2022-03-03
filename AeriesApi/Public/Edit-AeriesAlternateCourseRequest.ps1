function Edit-AeriesAlternateCourseRequest
{
    <#
        .SYNOPSIS
        Edit an Alternate Course Request to Aeries

        .DESCRIPTION
        The Edit-AeriesAlternateCourseRequest cmdlet is used to edit an Alternate Course Request in Aeries for a given StudentID, SchoolCode and Sequence

        .EXAMPLE
        Edit-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -Sequence 1 -CourseNumber "123456"
        This will edit an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Sequence 1
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $Sequence,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $CourseNumber,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int]
        $RelativePrioritySortOrder = -1
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Put"
        $SuccessStatusCode = 200,201
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/alternatecourserequests/$Sequence"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        $Body.CourseID = $CourseNumber

        If ($RelativePrioritySortOrder -gt -1) {
            <# Int Value #>
            $Body.RelativePrioritySortOrder = $RelativePrioritySortOrder
        }

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
