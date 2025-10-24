$procesos = Get-Process

$html = @"
<!DOCTYPE html>
<html lang="es">
<head>
 <meta charset="UTF-8">
 <title>Procesos del Sistema</title>
  <link rel="stylesheet" href="styles.css">
 <style>
 body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 20px;
}
 table { border-collapse: collapse; width: 60%; }
 th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
 th { background-color: #007BFF; color: white; }
 tr:nth-child(even) { background-color: #f2f2f2; }
 </style>
</head>
<body>
 <h2>Listado de Procesos del Sistema</h2>
 <table>
 <tr>
 <th>Nombre</th>
 <th>ID</th>
 <th>CPU (segundos)</th>
 <th>Prioridad</th>
 </tr>
"@

foreach ($proc in $procesos) {
 $nombre = $proc.ProcessName
 $id = $proc.Id
 $cpu = $proc.CPU
 $prioridad =$proc.basepriority
 $html +=
"<tr><td>$nombre</td><td>$id</td><td>$cpu</td><td>$prioridad</td></tr>`n"
}

$html += @"
 </table>
</body>
</html>
"@

$ruta = "c:\xampp\htdocs\p\index.html"
$html | Out-File -Encoding UTF8 $ruta