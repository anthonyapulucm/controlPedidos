<?php
$conexion = new mysqli("localhost","root","","pedidos_escolares");
$conexion->set_charset("utf8");
if (!$conexion) {
    die("ERROR EN CONEXION");
} else {
    echo "CONEXION EXITOSA";
    $conexion;
}
?>