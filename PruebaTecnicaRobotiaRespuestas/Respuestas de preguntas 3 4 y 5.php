<?php 
//Respuesta de la pregunta 3

$arrayNums = array(1, 56, 3, 65000, 12, 34, 23, 21, 6, 2);
asort($arrayNums);
print_r($arrayNums);

echo "<br>";
//Respuesta de la pregunta 4

$holaWorld = "HolaMundo";
$world = strrev($holaWorld);
echo $world;

echo "<br>";
//Respuesta de la pregunta 5

if(2502 % 3 == 0)
	echo "2502 es divisible por 3";
else
	echo "2502 no es divisible por 3";

echo "<br>";

if(2502 % 4 == 0)
	echo "2502 es divisible por 4";
else
	echo "2502 no es divisible por 4";



?>
