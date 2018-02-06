
Param
(
    [Parameter(Mandatory=$true)][int]$value,
    [Parameter(Mandatory=$true)][string]$unit 
)

Write-Output "Sleep $($value) $($unit)."

if($unit -eq  "Minutes") 
{
    $value = $value * 60
}

iex "Start-Sleep -seconds $($value)"