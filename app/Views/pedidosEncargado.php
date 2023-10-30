<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pedidos Encargado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <div class="container-fluid p-3 text-primary-emphasis bg-primary-subtle">
        <nav class="navbar bg-body-tertiary">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <h1 class="text-hide" style="background-image: url('./app/img/logo.png'); width: 50px; height: 50px;">Logotipo</h1>
                </a>
                <h1 class="text-center">Sistema de Pedidos 2024</h1>
            </div>
        </nav>
        <br>
        <form action="" class="container">
            <h2 class="text-center">Formulario para ingreso de datos</h2>
            <br>
            <form class="row g-2">
                <div class="col-md-2">
                    <label for="inputEmail4" class="form-label">Carné</label>
                    <input type="text" class="form-control" id="inputEmail4" placeholder="Número">
                </div>
                <div class="col-md-2">
                    <label for="inputPassword4" class="form-label">Nombre Alumno</label>
                    <input type="text" class="form-control" id="inputPassword4" placeholder="Nombre">
                </div>
                <div class="col-md-2">
                    <label for="inputState" class="form-label">Jornada</label>
                    <select id="inputState" class="form-select">
                        <option selected>Elija una jornada</option>
                        <option>Matutina</option>
                        <option>Vespertina</option>
                        <option>Fin de semana</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="inputState" class="form-label">Grado</label>
                    <select id="inputState" class="form-select">
                        <option selected>Elija grado</option>
                        <option>Pre kínder</option>
                        <option>Kínder</option>
                        <option>Primero Primaria</option>
                        <option>Segundo Primaria</option>
                        <option>Tercero Primaria</option>
                        <option>Cuarto Primaria</option>
                        <option>Quinto Primaria</option>
                        <option>Sexto Primaria</option>
                        <option>Primero Básico</option>
                        <option>Segundo Básico</option>
                        <option>Tercero Básico</option>
                        <option>Cuarto BACO</option>
                        <option>Cuarto Ciencias</option>
                        <option>Cuarto Perito Contador</option>
                        <option>Quinto BACO</option>
                        <option>Quinto Ciencias</option>
                        <option>Quinto Perito Contador</option>
                        <option>Sexto Perito Contador</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="inputState" class="form-label">Tipo de Materiales</label>
                    <select id="inputState" class="form-select">
                        <option selected>Elija tipo de materiales</option>
                        <option>Bolsa de útiles</option>
                        <option>Bolsa de libros</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="inputState" class="form-label">Tipo de uniforme</label>
                    <select id="inputState" class="form-select">
                        <option selected>Elija tipo de uniforme</option>
                        <option>Diario</option>
                        <option>Física</option>
                    </select>
                </div><br>
                <fieldset class="row mb-3">
                    <legend class="col-form-label col-sm-2 pt-0">Método de pago</legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                            <label class="form-check-label" for="gridRadios1">
                                Efectivo
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                            <label class="form-check-label" for="gridRadios2">
                                Tarjeta
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3">
                            <label class="form-check-label" for="gridRadios3">
                                Transferencia
                            </label>
                        </div>
                    </div>
                </fieldset>

                <div class="col-md-2">
                    <input type="submit" class="form-control btn btn-primary" id="bt_guardar" value="Generar Factura">
                </div>
            </form>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>