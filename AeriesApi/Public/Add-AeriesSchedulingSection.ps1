function Add-AeriesSchedulingSection
{
    <#
        .SYNOPSIS
        Add a Scheduling Section to Aeries

        .DESCRIPTION
        The Add-AeriesSchedulingSection cmdlet is used to create a Scheduling Section in Aeries for the given SchoolCode

        .EXAMPLE
        Add-AeriesSchedulingSection -SchoolCode 884 -IsSectionStaff
        This will create a Schedule Section in Aeries for SchoolCode 884
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $SchoolCode,

        [Parameter(Mandatory=$false)]
        [switch]
        $IsSectionStaff
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $ContentType = "application/json"
        $Body = @{}

        If ($IsSectionStaff) {
            $Endpoint = "v5/schools/$SchoolCode/scheduling/sections"
        }
        else
        {
            $Endpoint = "v4/schools/$SchoolCode/scheduling/sections"
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
