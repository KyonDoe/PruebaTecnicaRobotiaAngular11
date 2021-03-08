<?php 

header('Access-Control-Allow-Origin: *');

$db = new mysqli("localhost", "root", "", "pruebatecnica");

if ($db->connect_error)
  die('Error de Conexion ('.$db->connect_errno.')'.$db->connect_error);

$query = "SELECT * FROM USUARIO";

$result = $db->query($query);

$usuarios = [];
$cr=0;
while($row = mysqli_fetch_assoc($result))
{
	$usuarios[$cr]['nombre']    = $row['US_NOMBRE'];
	$usuarios[$cr]['apellido'] 	= $row['US_APELLIDO'];
	$usuarios[$cr]['correo'] 	= $row['US_CORREO'];
	$cr++;
}
echo json_encode(['data'=>$usuarios]);

?>