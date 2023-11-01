<?php
if ('¡empty'($_POST["btnIniciar"])){
    if (empty($_POST["usuario"]) and empty($_POST["password"])) {
        echo '<div class ="alert alert-danger">LOS CAMPOS ESTAN VACIOS</div>';
    } else {
        $usuario = $_POST["usuario"];
        $password = $_POST["password"];
        $sql = $conexion -> query("SELECT * FROM USUARIO WHERE usuario = '$usuario' and PASSWORD = '$password'");
        if ($datos = $sql->fetch_object()) {
            header("location: index.php");
        } else {
            echo '<div class ="alert alert-danger">USUARIO Y CONTRASEÑA INCORRECTOS</div>';  
        }
    }  
}
?>