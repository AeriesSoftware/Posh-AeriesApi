function Get-AeriesSystemInfo
{
    <#  
        .SYNOPSIS
        Get the System Info for Aeries
        
        .DESCRIPTION
        The Get-AeriesSystemInfo cmdlet is used to retrieve the System Info for Aeries

        .EXAMPLE
        Get-AeriesSystemInfo
        This will return the System Info for Aeries
    #>

    Begin {
        Write-Verbose -Message "Begin running $($MyInvocation.MyCommand)"

        $Method = "Get"
        $SuccessStatusCode = 200
        $Endpoint = "v5/systeminfo"
    }

    Process {
        $Result = (Invoke-AeriesApiCall -Method $Method -Endpoint $Endpoint -SuccessStatusCode $SuccessStatusCode)
    }

    End {
        Write-Verbose -Message "Finish running $($MyInvocation.MyCommand)"
        return $Result
    }
}
