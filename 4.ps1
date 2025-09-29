param (
    $proceso
)
$f=0
$p=Get-Process
$l=$p.Length
for ($i=0; $i -lt $l; $i++)
{
    if($p[$i].ProcessName -eq $proceso)
    {
        $f=1
    }
}
    if ($f -eq 1) {
        write-host "Proceso " $proceso " encontrado"}
    else {
        write-host "Proceso " $proceso " no encontrado"}
