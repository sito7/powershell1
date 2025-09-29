param (
    $numero
)
for ($i = 1; $i -lt 11; $i++) 
{
    $r = $numero * $i
    Write-Host $r
}