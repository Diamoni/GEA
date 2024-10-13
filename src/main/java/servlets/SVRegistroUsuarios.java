
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.RegistroUsuario;




@WebServlet(name = "SVRegistroUsuarios", urlPatterns = {"/SVRegistroUsuarios"})
public class SVRegistroUsuarios extends HttpServlet {

    Controladora control=new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       List<RegistroUsuario> listaUsuarios = new ArrayList <RegistroUsuario>();

       listaUsuarios = control.getUsuarios();

       HttpSession misession = request.getSession();
       misession.setAttribute("listaUsuarios", listaUsuarios);

       response.sendRedirect("PerfilUsuario.jsp");
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String typename=request.getParameter("typename");
        String typelastname=request.getParameter("typelastname");
        String typeEmailX=request.getParameter("typeEmailX");
        String typePasswordX=request.getParameter("typePasswordX");
        String typeC_PasswordX=request.getParameter("typeC_PasswordX");
        control.regisUsuario(typename, typelastname, typeEmailX, typePasswordX,typeC_PasswordX);

      response.sendRedirect("Login.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void regisUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    private static class misession {

        private static void setAttribute(String listaUsuarios, List<RegistroUsuario> listaUsuarios0) {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }

        public misession() {
        }
    }

}
