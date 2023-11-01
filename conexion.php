<?php
//CONEXION A BASE DE DATOS PEDIDOS_ESCOLARES
$conexion = new mysqli("localhost","root","","pedidos_escolares");
$conexion->set_charset("utf8");
if (!$conexion) {
    die("ERROR EN CONEXION");
} else {
    echo "CONECTADO A PEDIDOS ESCOLARES";
    $conexion;
}
?>