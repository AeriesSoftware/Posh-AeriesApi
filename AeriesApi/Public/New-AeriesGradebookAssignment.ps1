function New-AeriesGradebookAssignment
{
    <#
        .SYNOPSIS
        Add a new Gradbook Assignment in Aeries

        .DESCRIPTION
        The New-AeriesGradebookAssignment cmdlet is used to add a Gradebook Assignment in Aeries

        .EXAMPLE
        New-AeriesGradebookAssignment -GradebookNumber 123456 -Description "Assignment created from PowerShell"
        This will add a Gradebook Assignment to Aeries
    #>

    [Alias("Add-AeriesGradebookAssignment")]

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int]
        $GradebookNumber,

        [Parameter(Mandatory=$true)]
        [string]
        $Description,

        [ValidateLength(0,1)]
        [Parameter(Mandatory=$false)]
        [string]
        $AssignmentCategoryCode,

        [Parameter(Mandatory=$false)]
        [DateTime]
        $DateAssigned,

        [Parameter(Mandatory=$false)]
        [datetime]
        $DateDue,

        [Parameter(Mandatory=$false)]
        [decimal]
        $NumberCorrectPossible = -1,

        [Parameter(Mandatory=$false)]
        [decimal]
        $PointsPossible = -1,

        [Parameter(Mandatory=$false)]
        [string]
        $Comment,

        [ValidateSet("F", "S")]
        [Parameter(Mandatory=$false)]
        [string]
        $FormativeSummativeIndicator,

        [Parameter(Mandatory=$false)]
        [boolean]
        $RubricAssignment,

        [Parameter(Mandatory=$false)]
        [string]
        $ExternalID,

        [Parameter(Mandatory=$false)]
        [boolean]
        $CreateInLinkedGradebooksToo = $true
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 201
        $Endpoint = "v5/gradebooks/$GradebookNumber/Assignments"
        $ContentType = "application/json"
        $Body = @{}
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
        $Body.RubricAssignment = $RubricAssignment
        $Body.CreateInLinkedGradebooksToo = $CreateInLinkedGradebooksToo

        <# Turn the $Body variable into a JSON string for sending to the server #>
        $BodyJSON = ($Body | ConvertTo-Json -Compress)

        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode -Body $BodyJSON -ContentType $ContentType)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
