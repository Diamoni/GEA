
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.RegistroUsuario;

@WebServlet(name = "SVEditUsuarios", urlPatterns = {"/SVEditUsuarios"})
public class SVEditUsuarios extends HttpServlet {

   Controladora control= new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
   
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int id = Integer.parseInt(request.getParameter("id"));
       RegistroUsuario usu = control.traerUsuario(id);

       HttpSession misession = request.getSession();
       misession.setAttribute("usuEditar", usu);

       response.sendRedirect("editarUsuarios.jsp");


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombreusu = request.getParameter("typename");
        String apellidousu = request.getParameter("typelastname");
        String correousu = request.getParameter("typeEmailX");
        String contraseniausu = request.getParameter("typePasswordX");
        String ccontraseniausu = request.getParameter("typeC_PasswordX");

        RegistroUsuario usu = (RegistroUsuario) request.getSession().getAttribute("usuEditar");
        usu.setNombre(nombreusu);
        usu.setApellido(apellidousu);
        usu.setCorreo(correousu);
        usu.setContrasenia(contraseniausu);
        usu.setCcontrasenia(ccontraseniausu);

        control.editarUsuario(usu);

        response.sendRedirect("SVRegistroUsuarios");





    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
