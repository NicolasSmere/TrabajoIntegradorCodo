<%-- 
    Document   : tickets
    Created on : 16 jul. 2023, 12:20:01
    Author     : Nicolas_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/42593f2983.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/styles2.css">
    <title>Document</title>
</head>
<body>
    <header id="header">
    <!-- NavBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            
            <!--Logo-->
            <a class="navbar-brand" href="#">
                <img class="img-fluid logo" src="assets/Logo.png" alt="">                         
            </a>

            <!--Boton del menu-->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!--Elementos del menu colapsable-->
            <div class="collapse navbar-collapse" id="menu">              
                <hr class="text-white-50">
                <!--Menu-->
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item menu"><a class="nav-link" href="">La conferencia</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Los oradores</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">El lugar y la fecha</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Conviertete en orador</a></li>
                    <li class="nav-item menu "><a class="nav-link menu_tickets" href="tickets.html">COMPRA TICKETS</a></li>
                </ul>         
            </div>
            <!--Fin de elementos del menu colapsable-->
        </div>
    </nav>
    <!--Fin navbar-->
    </header>
    <main id="main">
        <!--Categorias descuentos-->
        <div class="container">            
            <section id="descuentos" class="descuentos ">
                <div class="row " >
                    <div class="col-lg-4" >
                        <div class="cat_estudiante border border-primary text-center coldesc ">
                            <h1 class="mt-3 mb-3 fw-bold">Estudiante</h3>
                            <h5 class="mb-3">Tienen un descuento</h5>
                            <p class="mb-3 fw-bold">80%</p>
                            <p class="mb-3 text-muted">* presentar documentación</p>
                        </div>
                    </div>
                    <div class="col-lg-4" >
                        <div class="cat_trainee border border-success text-center coldesc">
                            <h1 class="mt-3 mb-3 fw-bold">Trainee</h3>
                            <h5 class="mb-3">Tienen un descuento</h5>
                            <p class="mb-3 fw-bold">50%</p>
                            <p class="mb-3 text-muted">* presentar documentación</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cat_junior border border-warning text-center coldesc" >
                            <h1 class="mt-3 mb-3 fw-bold">Junior</h3>
                            <h5 class="mb-3">Tienen un descuento</h5>
                            <p class="mb-3 fw-bold">15%</p>
                            <p class="mb-3 text-muted">* presentar documentación</p>
                        </div>
                    </div>                   
                </div>
            </section>
        </div>
        <!--Fin categorias descuentos-->

        <!--Inforacion de precio de venta de ticket -->
        <div class="container">
            <div class="row">
                <div class="col-12 text-center mb-3">
                    <h4 >VENTA</h4>
                </div>
                <div class="col-12 text-center ">
                    <h2 class="fw-bold" >VALOR DEL TICKET $200</h2>
                </div>
            </div>
        </div>
        <!--Fin informacion -->

        <!--Formulario -->
        <div class="container">
            <section id="formulario_" class="formulario_">
                <form id="formulario" class="row g-4 formulario">
                    <div class="col-md-6">                 
                      <input type="text" class="form-control Nombre" id="Nombre" placeholder="Nombre">
                    </div>
                    <div class="col-md-6">
                      <input type="text" class="form-control Apellido" id="Apellido" placeholder="Apellido">
                    </div>
                    <div class="col-12">
                      <input type="text" class="form-control Correo" id="Correo" placeholder="Correo">
                    </div>
                    <div class="col-md-6">
                      <label for="Cantidad" class="form-label fw-bold Cantidad">Cantidad</label>
                      <input type="number" class="form-control" id="Cantidad" placeholder="Cantidad">
                    </div>
                    <div class="col-md-6">
                      <label for="Categoria" class="form-label fw-bold Categoria">Categoria</label>
                      <select id="Categoria" class="form-select">
                        <option value="0">Seleccionar categoria</option>
                        <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                      </select>
                    </div>                
                    <div class="d-grid gap-2 mx-auto">
                        <p id="TotalPagar" class="TotalPagar fw-bold">Total a pagar: $ </p>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input type="button" id="Borrar" value="Borrar" button class="btn btn-success btn-lg" type="button">
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input type="button" id="Resumen" name="Resumen" value="Resumen" button class="btn btn-success btn-lg resumen">
                    </div>
                </form>
            </section>
        </div>
        <!--Fin formulario -->   
    </main>
    <footer id="footer">
    <!-- NavBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <!--Boton del menu-->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!--Elementos del menu colapsable-->
            <div class="collapse navbar-collapse" id="menu">              
                <hr class="text-white-50">
                <!--Menu-->
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item menu"><a class="nav-link" href="">Preguntas frecuentes</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Contactanos</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Prensa</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Terminos y condiciones</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Privacidad</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">Estudiantes</a></li>
                </ul>         
            </div>
            <!--Fin de elementos del menu colapsable-->
        </div>
    </nav>
    <!--Fin navbar-->
    </footer>
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
</body>
</html>
