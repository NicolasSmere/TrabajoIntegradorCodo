<%-- 
    Document   : index
    Created on : 15 jul. 2023, 17:18:47
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
    <link rel="stylesheet" href="css/styles.css">
    <title>Document</title>
</head>
<body>
    <header id="header">
    <!-- NavBar-->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <div class="container-fluid">
            
            <!--Menu-->
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
                    <li class="nav-item menu"><a class="nav-link" href="#about">DATOS</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="#skills">SKILLS</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="#estudios">ESTUDIOS</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="#expLaboral">EXPERIENCIA</a></li>
                    <li class="nav-item menu"><a class="nav-link" href="#proyecto">PROYECTOS</a></li>
                    <li class="nav-item menu "><a class="nav-link menu_tickets" href="tickets.jsp" target="_blank">COMPRA TICKETS</a></li>

                </ul>
                <hr class="text-white-50">
                <!--Redes sociales-->
                <ul class="navbar-nav flex-row flex-wrap-md">
                    <li class="nav-item col-6 col-md-auto p-3">
                        <a href="https://github.com/NicolasSmere" target="_blank">
                            <i class="fa-brands fa-square-github fa-2x"></i>
                        </a>
                        <small class="d-md-none ms-2 texto_redes">GitHub</small>
                    </li>
                    <li class="nav-item col-6 col-md-auto p-3">
                        <a href="https://www.facebook.com/nicolas.smereczynski/" target="_blank">
                            <i class="fa-brands fa-square-facebook fa-2x"></i>
                        </a>
                        <small class="d-md-none ms-2 texto_redes">Facebook</small>
                    </li>
                </ul>
                <ul class="navbar-nav flex-row flex-wrap-md">
                   
                    <li class="nav-item col-6 col-md-auto p-3">
                        <a href="https://www.linkedin.com/in/nicolas-smereczynski/" target="_blank">
                            <i class="fa-brands fa-linkedin fa-2x" ></i>
                        </a>
                        <small class="d-md-none ms-2 texto_redes">Linkedin</small>
                    </li>
                    <li class="nav-item col-6 col-md-auto p-3">
                        <a href="https://www.instagram.com/nicosmere_/" target="_blank">
                            <i class="fa-brands fa-square-instagram fa-2x"></i>
                        </a>
                        <small class="d-md-none ms-2 texto_redes">Instagram</small>
                    </li>

                </ul>
                <hr class="text-white-50">           
            </div>
            <!--Fin de elementos del menu colapsable-->
        </div>
    </nav>
    <!--Fin navbar-->

    </header>
    <main id="main">
        <!--Banner-->
        <section id="banner">
            <div class="banner-container container-fluid">
                    <div class="d-flex flex-row justify-content-center align-items-center" >
                        <img class="" src="assets/banner_.png" alt="">
                    </div>
                </div>
            </div>
          </section>
        <!--Fin Banner-->  

        <!--Datos personales-->
        <section id="about" class="about">
            <div class="container-fluid">               
                <div class="row">
                    <div class="col-lg-3">
                        <img src="assets/perfil.jpg" class="imagen_perfil img-fluid" alt="">
                    </div>     
                    <div class="col-lg-9 pt-4 pt-lg-0 content">
                        <div class="section-title">
                            <h2>Informacion personal</h2>
                          </div>
                        <h3>WEB DEVELOPER.</h3>
                        <P class="font-italic">
                            Hola, me llamo Nicolas Smereczynski , tengo 30 años . Actualmente vivo en la zona sur de la pronvicia de Buenos Aires.
                            Me encuentro haciendo el curso de programacion en Codo a Codo . Mis pasatiempos son hacer deporte y el coleccionismo de comics/mangas.
                        </P>
                        <br>
                        <div class="row">
                            <div class="col-lg-6">
                                <ul>
                                    <li><i class="fa-solid fa-chevron-right"></i> <strong>Fecha de nacimiento:</strong> 27/03/1993 </li>
                                    <li><i class="fa-solid fa-chevron-right"></i> <strong>Correo:</strong> nicolassmereczynski@gmail.com </li>
                                    <li><i class="fa-solid fa-chevron-right"></i> <strong>Celular:</strong> 1137942357 </li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li><i class="fa-solid fa-chevron-right"></i> <strong>Ciudad:</strong> Buenos Aires / Lanus </li>
                                    <li><i class="fa-solid fa-chevron-right"></i> <strong>Edad:</strong> 30 </li>
                                    <li><i class="fa-solid fa-chevron-right"></i> <strong>Estado civil:</strong> Soltero </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            
        </section>
        <!--Fin de datos personales-->

        <!--Skills-->
        <section id="skills" class="skills section-bg">
            <div class="container-fluid">
                <div class="section-title">
                    <h2>Skills</h2>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <h6>C #</h6>
                        <div class="progress rounded-pill my-3" style="height: 30px;">
                            <div class="progress-bar" style=" height: 100%; width: 60%;"> 60%</div>
                        </div>
                        <h6>JAVA</h6>
                        <div class="progress rounded-pill my-3" style="height: 30px;">
                            <div class="progress-bar" style=" height: 100%; width: 30%;"> 30%</div>
                        </div>
                        <h6>PYTHON</h6>
                        <div class="progress rounded-pill my-3" style="height: 30px;">
                            <div class="progress-bar" style=" height: 100%; width: 30%;"> 30%</div>
                        </div>
    
                    </div>
                    <div class="col-lg-6">
                        <h6>HTML</h6>
                        <div class="progress rounded-pill my-3" style="height: 30px;">
                            <div class="progress-bar" style=" height: 100%; width: 60%;"> 60%</div>
                        </div>
                        <h6>CSS</h6>
                        <div class="progress rounded-pill my-3" style="height: 30px;">
                            <div class="progress-bar" style=" height: 100%; width: 50%;"> 50%</div>
                        </div>
                        <h6>JS</h6>
                        <div class="progress rounded-pill my-3" style="height: 30px;">
                            <div class="progress-bar" style=" height: 100%; width: 20%;"> 20%</div>
                        </div>                                        
                    </div>
                </div>         
            </div>
        </section>
        <!--Skills-->
        
        <!--Estudios-->
        <section id="estudios" class="estudios">
            <div class="container-fluid">
                <div class="section-title">
                    <h2>Estudios</h2>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="estudios-item">
                            <h4>Codo a Codo</h4>
                            <h5>2023 - EN CURSO</h5>
                            <p><em>Carrera</em></p>
                            <p>Actualmente cursando, carrera orientada a ser desarollador full stack</p>
                        </div>
                        <div class="estudios-item">
                            <h4>ISTEA</h4>
                            <h5>2017 - 2019</h5>
                            <p><em>Carrera</em></p>
                            <p>Instituto tecnologico donde segui la carrera de desarollo de software. Principalmente lenguaje c#. </p>
                        </div>
                        <div class="estudios-item">
                            <h4>Instituto Tecnico Maria Reina</h4>
                            <h5>EGRESO : 2010</h5>
                            <p><em>Secundario</em></p>
                            <p>Secundario tecnico orientado a los sistemas informaticos</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Fin estudios-->

        <!--Exp laboral-->
        <section id="expLaboral" class="expLaboral">
            <div class="container-fluid">
                <div class="section-title">
                    <h2>Experiencia laboral</h2>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="expLaboral-item">
                            <h4>Floreal</h4>
                            <h5>2014-2022</h5>
                            <p><em>Administrativo</em></p>
                            <ul>
                                <li>Liquidacion de sueldos</li>
                                <li>Recepcion de pedidos</li>
                                <li>Elaboracion de pedidos al sistema de produccion</li>
                                <li>Facturacion</li>
                                <li>Control de tareas productivas</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="expLaboral-item">
                            <h4>Talpini</h4>
                            <h5>2012-2013</h5>
                            <p><em>Primera experiencia laboral, una fabrica de calzado, tareas varias, nada relacionado a la informatica</em></p>
                            <ul>
                                <li>Cadete</li>
                                <li>Tareas en diferentes areas de la produccion</li>
                            </ul>
                        </div>

                    </div>

                </div>
            </div>
        </section>
        <!--Fin experiencia laboral-->

        <!--Proyectos-->
        <section id="proyecto" class="proyecto">
            <div class="container-fluid">
                <div class="section-title">
                    <h2>Proyectos</h2>
                </div>
            </div>

            <div class="row" >
                <div class="col-lg-4">
                    <div class="proyeco-item ">
                      <a href="https://github.com/NicolasSmere/Portfolio_" target="_blank"> <img class="img-fluid" src="assets/banner_.png" alt=""> </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="proyeco-item">
                      <a href="https://github.com/NicolasSmere/EjercicioCalculadora" target="_blank"> <img class="img-fluid  " src="assets/calculadora.jpg" alt=""> </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="proyeco-item">
                      <a href="https://github.com/NicolasSmere/CompraTicketsJS.git" target="_blank"> <img class="img-fluid  " src="assets/TICKETS.jpg" alt=""> </a>
                    </div>
                </div>
            </div>
        </section>
        <!--Fin proyectos-->

    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
</body>
</html>
 