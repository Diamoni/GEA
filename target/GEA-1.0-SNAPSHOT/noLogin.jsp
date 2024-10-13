<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GEA Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="login.css">
  </head>
  <body>
    <form class="user" action="SVIngreso" method="POST">
        <div class="">                 
            <section class="vh-100 gradient-custom">
                <div class="container py-5 h-100">
                  <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                      
                      <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                          <div class="mb-md-5 mt-md-4 pb-5">
                          
                            <div class="img-container">
                               <img src="../img/GEALogo.png" width="410" height="310">                              
                            </div>
                            
                            <div class="form-outline form-white mt-5 mb-4">
                              <input type="email" id="typeEmailX" name="typeEmailX"class="form-control form-control-lg" placeholder="Correo electrónico" />
                            </div>
              
                            <div class="form-outline form-white mb-4">
                              <input type="password" id="typePasswordX" name="typePasswordX" class="form-control form-control-lg" placeholder="Contraseña"/>
                              
                            </div>
                              <div
                              <p class="mb-0">Usuario no registrado</p>
                                  
                              </div>
                              <br>
                              <br>
              
                          <div>
                            <p class="mb-0">No tienes una cuenta? <a href="RegistroUsuarios.jsp" class="text-white-50 fw-bold">Únete</a>
                            </p>
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