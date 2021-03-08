<?php 

header('Access-Control-Allow-Origin: *');

$db = new mysqli("localhost", "root", "", "pruebatecnica");

if ($db->connect_error)
  die('Error de Conexion ('.$db->connect_errno.')'.$db->connect_error);

$query = "SELECT 
				us.US_NOMBRE AS US_NOMBRE, 
				us.US_CORREO AS US_CORREO, 
				(SELECT SUM(prd.PROD_PRECIO) FROM carrito_compra AS cc INNER JOIN producto prd WHERE us.US_ID = cc.US_ID AND cc.PROD_ID = prd.PROD_ID) AS PRECIO_TOTAL 
		FROM usuario AS us
		WHERE (SELECT SUM(prd.PROD_PRECIO) FROM carrito_compra AS cc INNER JOIN producto prd WHERE us.US_ID = cc.US_ID AND cc.PROD_ID = prd.PROD_ID) IS NOT NULL";

$result = $db->query($query);

$usuariosCompradores = [];
$cr=0;
while($row = mysqli_fetch_assoc($result))
{
	$usuariosCompradores[$cr]['nombre']    		= $row['US_NOMBRE'];
	$usuariosCompradores[$cr]['correo'] 		= $row['US_CORREO'];
	$usuariosCompradores[$cr]['precioTotal'] 	= $row['PRECIO_TOTAL'];
	$cr++;
}
echo json_encode(['data'=>$usuariosCompradores]);

?>


