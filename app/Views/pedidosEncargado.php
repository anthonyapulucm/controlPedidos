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
                    <img src="./img/logo.png" alt="Bootstrap" width="350px" height="100px">
                </a>
                <h1 class="text-center">Sistema de Pedidos 2024</h1>
            </div>
        </nav>
        <br>
        <form action="">
            <h2 class="text-center">Formulario para ingreso de datos</h2>
            <br>
            <form class="row g-3">
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
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                </div>
                <div class="col-md-6">
                    <label for="inputCity" class="form-label">City</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>
                
                <div class="col-md-2">
                    <label for="inputZip" class="form-label">Zip</label>
                    <input type="text" class="form-control" id="inputZip">
                </div>
                <div class="col-12">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                            Check me out
                        </label>
                    </div>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
            </form>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>