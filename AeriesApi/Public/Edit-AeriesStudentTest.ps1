function Edit-AeriesStudentTest
{
    <#
        .SYNOPSIS
        Update Test Score in Aeries

        .DESCRIPTION
        The Edit-AeriesStudentTest cmdlet is used to update Tests for a specific Student in Aeries

        .EXAMPLE
        Edit-AeriesStudentTest -StudentID 99400001 -TestID "ELPAC" -TestPart 0 -TestingAdministration "0322" -TestDate "2022-03-12" -Other 5
        This will edit the Test for the specific Student ID in Aeries with the given TestID, TestPart, TestingAdministration and TestDate
    #>

    [CmdletBinding()]
    param (
        [ValidateRange(1, [Int]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [int]
        $StudentID,

        [ValidateLength(1, 6)]
        [Parameter(Mandatory=$true)]
        [string]
        $TestID,

        [ValidateRange(0, [Int16]::MaxValue)]
        [Parameter(Mandatory=$true)]
        [Int16]
        $TestPart,

        [ValidateLength(0, 6)]
        [Parameter(Mandatory=$false)]
        [string]
        $TestingAdministration = "",

        [Parameter(Mandatory=$true)]
        [datetime]
        $TestDate,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $RawScore = -1,

        [Parameter(Mandatory=$false)]
        [decimal]
        $PercentCorrect = -1,

        [ValidateRange(1, [int]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [int]
        $PerformanceLevel = -1,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $TestTypeCode,

        [ValidateLength(1, 3)]
        [Parameter(Mandatory=$false)]
        [string]
        $TestSourceCode,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $ScaleScore = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Other = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $GradeEquivalency = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Percentile = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Stanine = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $CurveEquivalent = -1,

        [ValidateRange(1, [Int16]::MaxValue)]
        [Parameter(Mandatory=$false)]
        [Int16]
        $Rubric = -1
    )

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Post"
        $SuccessStatusCode = 200
        $Endpoint = "v5/testing/UpdateScores"
        $ContentType = "application/json"
        $Body = @{}
    }

    Process {
        $Body.StudentID = $StudentID
        $Body.TestID = $TestID
        $Body.TestPart = $TestPart
        $Body.TestingAdministration = $TestingAdministration
        $Body.TestDate = $TestDate.ToString("yyyy-MM-dd")

        If ($RawScore -gt -1) {
            $Body.RawScore = $RawScore
        }

        If ($PercentCorrect -gt -1) {
            $Body.PercentCorrect = $PercentCorrect
        }

        If ($PerformanceLevel -gt -1) {
            $Body.PerformanceLevel = $PerformanceLevel
        }

        If (![string]::IsNullOrWhiteSpace($TestTypeCode)) {
            $Body.TestTypeCode = $TestTypeCode
        }

        If (![string]::IsNullOrWhiteSpace($TestSourceCode)) {
            $Body.TestSourceCode = $TestSourceCode
        }

        If ($ScaleScore -gt -1) {
            $Body.ScaleScore = $ScaleScore
        }

        If ($Other -gt -1) {
            $Body.Other = $Other
        }

        If ($GradeEquivalency -gt -1) {
            $Body.GradeEquivalency = $GradeEquivalency
        }

        If ($Percentile -gt -1) {
            $Body.Percentile = $Percentile
        }

        If ($Stanine -gt -1) {
            $Body.Stanine = $Stanine
        }

        If ($CurveEquivalent -gt -1) {
            $Body.CurveEquivalent = $CurveEquivalent
        }

        If ($Rubric -gt -1) {
            $Body.Rubric = $Rubric
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
