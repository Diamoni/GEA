<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% HttpSession misession=request.getSession();
    String typeEmailX=(String)request.getSession().getAttribute("typeEmailX");
    if(typeEmailX==null){
        response.sendRedirect("noLogin.jsp");
    }
%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Main Window</title>
    <!-- enlace Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <link rel="stylesheet"  href="maps.js"> <!-- enlace el archivo Java Script-->
    <link rel="stylesheet" href="MainWindow.css"> <!-- enlace el archivo CSS-->
  </head>

  <body>
    <form class="user"action="index.jsp" >         
            
             <nav class="navbar navbar-dark bg-dark fixed-top">
                <div class="container-fluid">                 
                  <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar_6" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <img src="../img/search.png" style="width: 30px; height:30px">
                  </button>
                  <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar_5" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <img src="../img/capas.png" style="width: 30px; height:30px">
                  </button>
                  <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar_4" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <img src="../img/share.png" style="width: 30px; height:30px">
                  </button>
                  <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar_3" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <img src="../img/analisis.png" style="width: 30px; height:30px">
                  </button>
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar_2" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                        <img src="../img/USU.jpeg" style="width: 30px; height:30px">  <span><%=request.getSession().getAttribute("typeEmailX")%></span>
                  </button>
                  <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  
                  <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel" style="width:50%;">
                    <div class="offcanvas-header">                      
                      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>                 
                    <div class="offcanvas-body">
                      <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="#"><img src="../img/icons8-ajustes-90.png" style="width: 30px; height:30px" alt="">Configuración</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="#"><img src="../img/icons8-favoritos-100.png" style="width: 30px; height:30px" alt="">Favoritos</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="#"><img src="../img/icons8-corona-100.png" style="width: 30px; height:30px" alt="">Premium</a>
                        </li>
                      </ul>
                    </div>
                  </div>    
                  <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar_2" aria-labelledby="offcanvasDarkNavbarLabel" style="width:50%;">
                    <div class="offcanvas-header">                      
                      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>                 
                    <div class="offcanvas-body">
                      <ul class="navbar-nav justify-content-end flex-grow-1 pe-1">
                          <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="SVRegistroUsuarios"> Perfil del Usuario </a> 
                        </li>
                        
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="Login.jsp"> Cerrar Sesión</a>
                        </li>
                      </ul>
                    </div>
                   </div>
                      <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar_3" aria-labelledby="offcanvasDarkNavbarLabel" style="width:50%;">
                    <div class="offcanvas-header">                      
                      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>                 
                    <div class="offcanvas-body">
                      <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="#"><img src="../img/densityMaps_2.png" style="width: 30px; height:30px" alt=""> Densidad </a>
                        </li>
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="#"><img src="../img/statistics.png" style="width: 30px; height:30px" alt="">Estadística</a>
                        </li>
                        
                      </ul>
                    </div>
                  </div>
                  <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar_4" aria-labelledby="offcanvasDarkNavbarLabel" style="width:50%;">
                    <div class="offcanvas-header">                      
                      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>                 
                    <div class="offcanvas-body">
                      <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="https://twitter.com/i/flow/login"><img src="../img/x.png" style="width: 30px; height:30px" alt=""> X/Twitter</a>
                        </li>
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="https://www.facebook.com/"><img src="../img/facebook.png" style="width: 30px; height:30px" alt=""> Facebook</a>
                        </li>
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href="https://www.instagram.com/"><img src="../img/instagram.png" style="width: 30px; height:30px" alt=""> Instagram</a>
                        </li>
                      </ul>
                    </div>
                  </div> 
                  <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar_5" aria-labelledby="offcanvasDarkNavbarLabel" style="width:50%;">
                    <div class="offcanvas-header">                      
                      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>                 
                    <div class="offcanvas-body">
                      <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href=""><img src="../img/mapstandar.png" style="width: 30px; height:30px" alt=""> Estándar</a>
                        </li>
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href=""><img src="../img/forecastmap.png" style="width: 30px; height:30px" alt=""> Tiempo</a>
                        </li>
                        <li class="nav-item ">
                          <a class="nav-link active" aria-current="page" href=""><img src="../img/topographic.png" style="width: 30px; height:30px" alt=""> Topografía</a>
                        </li>
                      </ul>
                    </div>
                  </div>  
                  <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar_6" aria-labelledby="offcanvasDarkNavbarLabel" style="width:75%;">
                    <div class="offcanvas-header">                      
                      <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>                 
                    <div class="offcanvas-body">
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <img src="../img/search.png" style="width: 30px; height:30px">
                        </div>
                        <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
                      </div>
                    </div>
                  </div>                               
                </div>
              </nav>
          
            
          
          <div class="">
          
                
                <iframe width="360" height="860" src="https://www.openstreetmap.org/export/embed.html?bbox=-74.7118377685547%2C4.358050588390805%2C-73.56513977050783%2C4.9726123145566605&amp;layer=mapnik">
                  
                </iframe>
          </div>
             
         
       
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>

  
</html>
