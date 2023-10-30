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
                    <img src="app/img/logo.png" alt="Logo Suizo" class="img-thumbnail">
                </a>
                <h1 class="text-center">Sistema de Pedidos 2024</h1>
            </div>
        </nav>
        <br>
        <form action="" class="container">
            <h2 class="text-center">Formulario para ingreso de datos</h2>
            <br>
            <form class="row g-2">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Llenar datos
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Datos del alumno</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form class="row g-3">
                                    <div class="col-md-12">
                                        <label for="inputEmail4" class="form-label">Nombre Completo</label>
                                        <input type="text" class="form-control" id="inputEmail4">
                                    </div>
                                    <div class="col-md-12">
                                        <label for="inputPassword4" class="form-label">Número de Carné</label>
                                        <input type="text" class="form-control" id="inputPassword4">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="inputState" class="form-label">Jornada</label>
                                        <select id="inputState" class="form-select">
                                            <option selected>Elija Jornada</option>
                                            <option>Matutina</option>
                                            <option>Vespertina</option>
                                            <option>Fin de semana</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="inputState" class="form-label">Grado</label>
                                        <select id="inputState" class="form-select">
                                            <option selected>Elija Grado</option>
                                            <option>Pre kínder</option>
                                            <option>Kínder</option>
                                            <option>Preparatoria</option>
                                            <option>Primero Primaria</option>
                                            <option>Segundo Primaria</option>
                                            <option>Tercero Primaria</option>
                                            <option>Cuarto Primaria</option>
                                            <option>Quinto Primaria</option>
                                            <option>Sexto Primaria</option>
                                            <option>Primero Básico</option>
                                            <option>Segundo Básico</option>
                                            <option>Tercero Básico</option>
                                        </select>
                                    </div><br>
                                    <div class="mb-3">
                                        <input type="submit" class="form-control btn btn-primary" id="btn_guardar" name="btn_guardar" value="Guardar Datos">
                                    </div>
                                </form>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Salir</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <table class="table table-dark table-striped-columns pt-3 tb-3" id="dataTable">
                    <thead>
                        <tr>
                            <th>Utiles</th>
                            <th>Uniformes</th>
                            <th>Sub Total</th>
                            <th>Procesos</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td>Paquete de libros</td>
                            <td>Uniforme diario</td>
                            <td>0</td>
                            <td>Acualizar/Eliminar</td>
                        </tr>
                    </tbody>
                </table>
                <br>
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
                                Transferencia
                            </label>
                        </div>
                        <div class="form-check disabled">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3">
                            <label class="form-check-label" for="gridRadios3">
                                Tarjeta
                            </label>
                        </div>
                    </div>
                </fieldset>

                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Total</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" id="inputEmail3">
                    </div><br>
                    <div class="col-sm-2">
                        <input type="submit" class="form-control btn btn-primary" id="btn_factura" name="btn_factura" value="Generar Factura">
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>