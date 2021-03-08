<?php 

header('Access-Control-Allow-Origin: *');

$db = new mysqli("localhost", "root", "", "pruebatecnica");

if ($db->connect_error)
  die('Error de Conexion ('.$db->connect_errno.')'.$db->connect_error);

$query = "SELECT * FROM PRODUCTO ORDER BY PROD_PRECIO ASC";

$result = $db->query($query);

$productos = [];
$cr=0;
while($row = mysqli_fetch_assoc($result))
{
	$productos[$cr]['nombre']    	= $row['PROD_NOMBRE'];
	$productos[$cr]['descripcion'] 	= $row['PROD_DESCRIPCION'];
	$productos[$cr]['precio'] 		= $row['PROD_PRECIO'];
	$cr++;
}
echo json_encode(['data'=>$productos]);

?>