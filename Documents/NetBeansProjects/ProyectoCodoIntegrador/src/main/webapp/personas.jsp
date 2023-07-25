<%-- 
    Document   : personas
    Created on : 24/07/2023, 23:04:52
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
    <link rel="stylesheet" href="css/styles3.css">
    <title>Document</title>
</head>
<body>
    <header id="header">
    <!-- NavBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            
            <!--Logo-->
            <a class="navbar-brand" href="#">
                <img class="img-fluid logo" src="assets/img/Logo.png" alt="">                         
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
                    <li class="nav-item menu"><a class="nav-link" href="">texto</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">texto</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">texto</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="">texto</a></li>
                    <li class="nav-item menu "><a class="nav-link menu_tickets" href="index.jsp" target="_blank">PORTFOLIO</a></li>
                    <li class="nav-item menu "><a class="nav-link menu_tickets" href="tickets.jsp" target="_blank">COMPRA TICKETS</a></li>
                </ul>         
            </div>
            <!--Fin de elementos del menu colapsable-->
        </div>
    </nav>
    <!--Fin navbar-->
    </header>
    <main id="main">

        <!--Formulario -->
        <div class="container">
            <section id="formulario_" class="formulario_">
                <form id="formulario" class="row g-4 formulario">
                    <div class="col-md-6">                 
                      <input type="number" class="form-control Dni" id="Dni" placeholder="DNI">
                    </div>
                    <div class="col-md-6">
                      <input type="text" class="form-control Correo" id="Correo" placeholder="CORREO">
                    </div>
                    <div class="col-md-6">
                      <input type="text" class="form-control Nombre" id="Nombre" placeholder="NOMBRE">
                    </div>
                    <div class="col-md-6">
                      <input type="text" class="form-control Apellido" id="Apellido" placeholder="APELLIDO">
                    </div>             
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input type="button" id="Borrar" value="Borrar" button class="btn btn-success btn-lg" type="button">
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input type="button" id="Agregar" value="Agregar" button class="btn btn-success btn-lg agregar">
                    </div>
                </form>
            </section>
        </div>
        <!--Fin formulario -->   
    </main>
    <script src="js/app2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
</body>
</html>
