$p=Get-Process
$l=$p.length
$cadena=""
for($i=0;$i -lt $l;$i++){
    $cadena=$cadena + "<proceso><name>" + "$p[$i].ProcessName" + "</name><id>" + $p[$i].Id + "</id></proceso>"
}

$cadena=$cadena + "</procesos>"
set-content -path "C:\script\powershell\procesos.xml" -value $cadena 