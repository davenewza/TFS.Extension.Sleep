
Param
(
	[Parameter(Mandatory=$true)][int]$Seconds,
	[Parameter(Mandatory=$true)][string]$unit 
)

Write-Output "Sleep $($Seconds) $($unit)."

if($unit -eq  "Minutes")
{
    $unit = "Seconds"
    $Seconds = $Seconds * 60
}

iex "Start-Sleep -$($unit) $($Seconds)"