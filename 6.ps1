$p=Get-Process
$rutafichero="C:\script\powershell\index.html"
$l=$p.length
$cadena="<html><body><center><table>"
for($i=0;$i -lt $l;$i++){
    $cadena=$cadena + "<tr><td>" + "$p[$i].ProcessName" + "</tr><td>" + $p[$i].Id + "</td></tr>"
}

$cadena=$cadena + "</table></center></body></html>"
set-content -path $rutafichero -value $cadena 