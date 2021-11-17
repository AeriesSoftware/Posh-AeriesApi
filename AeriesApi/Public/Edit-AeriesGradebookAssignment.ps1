function Edit-AeriesGradebookAssignment
{
    <#
        .SYNOPSIS
        Edit a Gradbook Assignment in Aeries

        .DESCRIPTION
        The Edit-AeriesGradebookAssignment cmdlet is used to edit a Gradebook Assignment in Aeries

        .EXAMPLE
        Edit-AeriesGradebookAssignment -GradebookNumber 123456 -AssignmentNumber 1 -Description "Assignment edited from PowerShell"
        This will edit a Gradebook Assignment in Aeries
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

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $Description,

        [ValidateLength(0,1)]
        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $AssignmentCategoryCode,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [DateTime]
        $DateAssigned,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [datetime]
        $DateDue,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [decimal]
        $NumberCorrectPossible = -1,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [decimal]
        $PointsPossible = -1,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [boolean]
        $GradingCompleted = -1,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $Comment,

        [ValidateSet("F", "S")]
        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $FormativeSummativeIndicator,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [boolean]
        $RubricAssignment,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [string]
        $ExternalID,

        [Parameter(Mandatory=$false, ParameterSetName="AssignmentNumber")]
        [Parameter(Mandatory=$false, ParameterSetName="UniqueID")]
        [boolean]
        $UpdateLinkedGradebooksToo = $true
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Put"
        $SuccessStatusCode = 200
        $ContentType = "application/json"
        $Body = @{}

        If ($PSCmdlet.ParameterSetName -eq "AssignmentNumber")
        {
            $Endpoint = "v5/gradebooks/$GradebookNumber/assignments/$AssignmentNumber"
        }
        elseif ($PSCmdlet.ParameterSetName -eq "UniqueID")
        {
            $Endpoint = "v5/gradebooks/Assignments/$UniqueID"
        }
        else
        {
            Throw "No valid parameters were set"
        }
    }

    Process {

        If (![string]::IsNullOrWhiteSpace($Description)) {
            <# String Value #>
            $Body.Description = $Description
        }

        If (![string]::IsNullOrWhiteSpace($AssignmentCategoryCode)) {
            <# String value #>
            $Body.AssignmentCategoryCode = $AssignmentCategoryCode
        }

        If (![string]::IsNullOrWhiteSpace($DateAssigned)) {
            <# Datetime value #>
            $Body.DateAssigned = $DateAssigned.ToString("yyyy-MM-dd")
        }

        If (![string]::IsNullOrWhiteSpace($DateDue)) {
            <# Datetime value #>
            $Body.DateDue = $DateDue.ToString("yyyy-MM-dd")
        }

        If ($NumberCorrectPossible -gt -1) {
            <# Decimal value #>
            $Body.NumberCorrectPossible = $NumberCorrectPossible
        }

        If ($PointsPossible -gt -1) {
            <# Decimal value #>
            $Body.PointsPossible = $PointsPossible
        }

        If (![string]::IsNullOrWhiteSpace($Comment)) {
            <# String value #>
            $Body.Comment = $Comment
        }

        If (![string]::IsNullOrWhiteSpace($FormativeSummativeIndicator)) {
            <# String value #>
            $Body.FormativeSummativeIndicator = $FormativeSummativeIndicator
        }

        If (![string]::IsNullOrWhiteSpace($ExternalID)) {
            <# String value #>
            $Body.ExternalID = $ExternalID
        }

        <# Boolean values #>
        $Body.GradingCompleted = $GradingCompleted
        $Body.RubricAssignment = $RubricAssignment
        $Body.UpdateLinkedGradebooksToo = $UpdateLinkedGradebooksToo

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
