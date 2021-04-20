function Get-AeriesCourseInformation
{
    <#  
        .SYNOPSIS
        Get Course Information from Aeries
        
        .DESCRIPTION
        The Get-AeriesCourseInformation cmdlet is used to retrieve a filtered set or all Course Information from Aeries

        .EXAMPLE
        Get-AeriesCourseInformation
        This will return all Course Information for School Code 994 from Aeries

        .EXAMPLE
        Get-AeriesCourseInformation -CourseID "100"
        This will return the Course Information for Student ID 99400001 from School Code 994 from Aeries
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)]
        [string]
        $CourseID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/courses/$CourseID"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
