<%-- 
    Document   : editarPersona
    Created on : 25/07/2023, 12:42:43
    Author     : terminal1
--%>

<%@page import="java.util.Optional"%>
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
        
        <% String idParam = request.getParameter("id");
        if (idParam != null) {
            int id = Integer.parseInt(idParam);
            try {
                PersonaDao dao = new PersonaDao();
                Optional<Persona> optionalPersona = dao.obtenerPorId(id);
                if (optionalPersona.isPresent()) {
                    Persona persona = optionalPersona.get();
                    %>
                    <h2>Editar persona</h2>
                    <form action="PersonaServlet?action=actualizar" method="post">
                        <input type="hidden" name="id" value="<%= persona.getId() %>">
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" value="<%= persona.getNombre() %>" required>
                        <!-- Otros campos aquí si es necesario -->
                        <button type="submit">Actualizar</button>
                    </form>
                    <% } else {
                            out.println("Persona no encontrada");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    out.println("ID de persona no especificado");
                }
            %>
          
    </main>
    <script src="js/app2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
</body>
</html>
