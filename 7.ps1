#FUNCIONES

function busca {
    param(
        [string]$nombre
    )
$contador=0
$p=Get-Process
$l=$p.Length
for ($i=0; $i -lt $l; $i++)
{
    $n=$p[$i].ProcessName
    if($n -eq $nombre)
    {
        $contador++
    }
}


return $contador
}
$nombre= Read-Host -Prompt "Nombre del proceso"
$contador= busca -nombre $nombre
write-host "El numero de procesos es: " $contador
