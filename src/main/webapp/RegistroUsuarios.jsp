
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registro Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/login.css" type="text/css"/>

    </head>
    <body>
        <form class="user" action="SVRegistroUsuarios" method="POST">

            <div > 
                
            <section class="vh-100 gradient-custom">
                     
                <div class="container py-5 h-100">
                   
                  <div class="row d-flex justify-content-center align-items-center h-100">
                   
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                      
                      <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                          <div class="mb-md-5 mt-md-4 pb-5">
                          
                            <div class="container">
                                <img src="../img/GEALogo.png" width="410" height="310">                               
                            </div>
                            <div class="form-outline form-white mt-5 mb-4">
                              <input type="text" id="typename" name="typename"class="form-control form-control-lg" placeholder="Nombres" />
                            </div>
                            <div class="form-outline form-white mt-3 mb-4">
                              <input type="text" id="typelastname" name="typelastname"class="form-control form-control-lg" placeholder="Apellidos" />
                            </div>
                            <div class="form-outline form-white mt-3 mb-4">
                              <input type="datetime-local" id="typedate" name="typedate" class="form-control form-control-lg" placeholder="dd/mm/aaaa" />
                            </div>

                            <div class="form-outline form-white mt-3 mb-4">
                              <input type="email" id="typeEmailX" name="typeEmailX" class="form-control form-control-lg" placeholder="Email" />
                            </div>
              
                            <div class="form-outline form-white mb-4">
                              <input type="password" id="typePasswordX" name="typePasswordX"class="form-control form-control-lg" placeholder="contraseña"/>                              
                            </div>
                            <div class="form-outline form-white mb-4">
                              <input type="password" id="typeC_PasswordX" name="typeC_PasswordX" class="form-control form-control-lg" placeholder="Confirmar contraseña"/>                              
                            </div>
              
                            <button class="btn btn-outline-light btn-lg px-5" type="submit">Enviar</button>              
                          
              
                          </div>    
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
        </div>
    </form>

  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>


</html>




