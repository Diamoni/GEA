
<%@page import="logica.RegistroUsuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Perfil del Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/login.css" type="text/css"/>

    </head>
    <body>
        <form class="user" action="SVRegistroUsuarios" method="GET">

            <div > 

                <section class="vh-100 gradient-custom">

                    <div class="container py-5 h-100">

                        <div class="row d-flex justify-content-center align-items-center h-100">

                            <div class="col-12 ">

                                <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                    <div class="card-body p-5 text-center">
                                        <div class="mb-md-5 mt-md-4 pb-5">

                                            <div class="container">
                                                <img src="../img/GEALogo.png" width="410" height="310">   
                                            </div>
                                            <br>
                                            <div class="card-header py-3">
                                                <h3 class="m-O font-weight-bold text-secundary"> Usuarios</h3>
                                            </div>
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered" id="data Table" width="100%" cellspacing="0">
                                                        <thead>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Nombres</th>
                                                                <th>Apellidos</th>
                                                                <th>Fecha</th>
                                                                <th>Correo</th>
                                                                <th>Contraseña</th>
                                                                <th>Confirmar Contraseña</th>
                                                                <th style="width: 210px">Acción</th>   
                                                            </tr>
                                                        </thead>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Nombres</th>
                                                                <th>Apellidos</th>
                                                                <th>Fecha</th>
                                                                <th>Correo</th>
                                                                <th>Contraseña </th>
                                                                <th>Confirmar Contraseña</th>
                                                                 <th style="width: 210px">Acción</th>
                                                            </tr>
                                                        </tfoot>
                                                        
                                                        <%
                                                        List<RegistroUsuario>listaUsuarios=(List)request.getSession().getAttribute("listaUsuarios");
                                                        %>
                                                        <tbody>
                                                            <%for (RegistroUsuario usu: listaUsuarios) { %>
                                                        <tr>
                                                            <td id="id_usu<%=usu.getId_Usuario()%>"><%=usu.getId_Usuario() %> </td>
                                                            <td><%=usu.getNombre()%></td>
                                                            <td><%=usu.getApellido()%></td>
                                                            <td><%=usu.getFecha_nac()%></td>
                                                            <td><%=usu.getCorreo()%></td>
                                                            <td><%=usu.getContrasenia()%></td>
                                                            <td><%=usu.getCcontrasenia()%></td>
                                                            
                                                            <td style="display: flex; width:230px;"> 
                                                        <form name="eliminar" action="SVElimUsuarios" method="POST">
                                                            <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; margin-right: 5px; ">
                                                                <i class="fas fa-trash-alt"></i> Eliminar
                                                            </button>
                                                            <input type="hidden" name="id" value="<%=usu.getId_Usuario()%>">
                                                        </form>
                                                        <form name="editar" action="SVEditUsuarios" method="GET">
                                                            <button type="submit" class="btn btn-primary btn-user btn-block" ;style="margin-left: 5px;">
                                                                <i class="fas fa-pencil-alt"></i> Editar
                                                            </button>
                                                            <input type="hidden" name="id" value="<%=usu.getId_Usuario()%>">
                                                        </form> 
                                                            </td>
                                                        </tr>
                                                        <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>  
                                                        <button  class="btn btn-outline-light btn-lg px-5" type="submit" href="index.jsp">Volver a la página principal</button>
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




