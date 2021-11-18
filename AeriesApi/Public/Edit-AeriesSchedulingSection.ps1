function Edit-AeriesSchedulingSection
{
    <#
        .SYNOPSIS
        Edit a Scheduling Section to Aeries

        .DESCRIPTION
        The Edit-AeriesSchedulingSection cmdlet is used to edit a Scheduling Section in Aeries for the given SchoolCode and SectionNumber

        .EXAMPLE
        Edit-AeriesSchedulingSection -SchoolCode 884 -SectionNumber 1 -IsSectionStaff
        This will edit a Schedule Section in Aeries for SchoolCode 884, Section 1
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
        $SectionNumber,

        [Parameter(Mandatory=$false)]
        [switch]
        $IsSectionStaff
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Put"
        $SuccessStatusCode = 200,201
        $ContentType = "application/json"
        $Body = @{}

        If ($IsSectionStaff) {
            $Endpoint = "v5/schools/$SchoolCode/scheduling/sections/$SectionNumber"
        }
        else
        {
            $Endpoint = "v4/schools/$SchoolCode/scheduling/sections/$SectionNumber"
        }
    }

    Process {

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
