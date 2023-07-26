<%-- 
    Document   : personas
    Created on : 24/07/2023, 23:04:52
    Author     : Nicolas_
--%>
<%@page import="java.util.List"%>
<%@page import="Dpackage.Persona"%>
<%@page import="Dpackage.PersonaDao"%>
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
        <h1>Lista de personas</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Dni</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Correo</th>
            <th>Acciones</th>
        </tr>
        <% try {
                PersonaDao dao = new PersonaDao();
                List<Persona> personas = dao.obtenerTodos();
                for (Persona persona : personas) { %>
                    <tr>
                        <td><%= persona.getId() %></td>
                        <td><%= persona.getDni() %></td>
                        <td><%= persona.getNombre() %></td>
                        <td><%= persona.getApellido() %></td>
                        <td><%= persona.getCorreo() %></td>
                        <td>
                            <a href="editarPersona.jsp?id=<%= persona.getId() %>">Editar</a>
                            <a href="PersonaServlet?action=eliminar&id=<%= persona.getId() %>">Eliminar</a>
                        </td>
                    </tr>
            <% }
            } catch (Exception e) {
                e.printStackTrace();
            } %>
    </table>

    <h2>Agregar persona</h2>
    <form action="PersonaServlet?action=insertar" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <!-- Otros campos aquí si es necesario -->
        <button type="submit">Agregar</button>
    </form>
        
        
        

           
    </main>
    <script src="js/app2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
</body>
</html>
