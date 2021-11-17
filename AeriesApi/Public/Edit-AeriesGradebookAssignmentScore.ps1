function Edit-AeriesGradebookAssignmentScore
{
    <#
        .SYNOPSIS
        Edit a Gradbook Assignment in Aeries

        .DESCRIPTION
        The Edit-AeriesGradebookAssignmentScore cmdlet is used to edit a Gradebook Assignment Score for a particular Student ID in Aeries

        .EXAMPLE
        Edit-AeriesGradebookAssignmentScore -GradebookNumber 4366926 -AssignmentNumber 122 -StudentID 99400156 -NumberCorrect 5 
        This will edit a Gradebook Assignment Score for Student ID 99400156 in Gradebook 4366926 on Assignment 122 in Aeries
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true, ParameterSetName="AssignmentNumber")]
        [Int]
        $GradebookNumber,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true, ParameterSetName="AssignmentNumber")]
        [Int]
        $AssignmentNumber,

        [Parameter(Mandatory=$true, ParameterSetName="UniqueID")]
        [string]
        $UniqueID,

        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$true, ParameterSetName="UniqueID")]
        [int]
        $StudentID,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [decimal]
        $NumberCorrect = -1,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [DateTime]
        $DateCompleted,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $AeriesStandardID,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $AcademicBenchmarkID
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $ContentType = "application/json"
        $Body = @{}

        If ($PSCmdlet.ParameterSetName -eq "AssignmentNumber")
        {
            $Endpoint = "v5/gradebooks/$GradebookNumber/assignments/$AssignmentNumber/Scores"
        }
        elseif ($PSCmdlet.ParameterSetName -eq "UniqueID")
        {
            $Endpoint = "v5/gradebooks/Assignments/$UniqueID/Scores"
        }
        else
        {
            Throw "No valid parameters were set"
        }
    }

    Process {
        $Body.StudentID = $StudentID

        If (
            (![string]::IsNullOrWhiteSpace($AeriesStandardID)) -or
            (![string]::IsNullOrWhiteSpace($AcademicBenchmarkID))
        ) {
            <# This is a Standard score being passed in #>
            $Body.StandardScores = @{}
            If (![string]::IsNullOrWhiteSpace($AeriesStandardID)) {
                $Body.StandardScores.AeriesStandardID = $AeriesStandardID
            }
            else {
                $Body.StandardScores.AcademicBenchmarkID = $AcademicBenchmarkID
            }
            
            If ($NumberCorrect -gt -1) {
                $Body.StandardScores.NumberCorrect = $NumberCorrect
            }
        }
        else {
            <# This is not a Standard score being passed in #>
            If ($NumberCorrect -gt -1) {
                <# Decimal Value #>
                $Body.NumberCorrect = $NumberCorrect
            }
        }

        If (![string]::IsNullOrWhiteSpace($DateCompleted)) {
            <# Datetime value #>
            $Body.DateCompleted = $DateCompleted.ToString("yyyy-MM-dd")
        }

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)
        $BodyJSON = "[$BodyJSON]"
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
