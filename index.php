<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONTROL DE PEDIDOS</title>
    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>
<?php
include("conexion.php");
include("controller.php");
?>
    <h1>CONTROL DE PEDIDOS 2024</h1>
    <div class="container">
        <div class="logo">
            <img class="logo_img" src="img/suizo.png" alt="">
        </div>
        <form action="" class="form" method="post">
            <div class="form__usuario">
                <label for="">USUARIO:</label>
                <input type="text" class="usuario" name="usuario">
            </div>
            <div class="form__clave">
                <label for="">CONTRASEÑA:</label>
                <input id="clave" type="password" class="clave" name="password">
                <span id="ver" class="ver_clave"><i id="icono" class="fas fa-eye"></i></span>
            </div>
            <div class="form__boton">
                <button class="boton" name="btnIniciar">INICIAR SESION</button>
            </div>
        </form>
    </div>
    <script src="js/main.js"></script>
</body>

</html>