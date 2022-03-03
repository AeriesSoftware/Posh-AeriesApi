function Add-AeriesAlternateCourseRequest
{
    <#
        .SYNOPSIS
        Add an Alternate Course Request to Aeries

        .DESCRIPTION
        The Add-AeriesAlternateCourseRequest cmdlet is used to add an Alternate Course Request in Aeries for a given StudentID and SchoolCode 

        .EXAMPLE
        Add-AeriesAlternateCourseRequest -SchoolCode 994 -StudentID 99400001 -CourseNumber "123456"
        This will create an Alternate Course Request in Aeries for StudentID 99400001 at SchoolCode 994 with Course Number 123456
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

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$true)]
        [string]
        $CourseNumber,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int]
        $RelativePrioritySortOrder = -1
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $Endpoint = "v5/schools/$SchoolCode/students/$StudentID/alternatecourserequests"
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
