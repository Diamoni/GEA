
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;


@WebServlet(name = "SVIngreso", urlPatterns = {"/SVIngreso"})
public class SVIngreso extends HttpServlet {

    Controladora control= new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String typeEmailX=request.getParameter("typeEmailX");
        String typePasswordX=request.getParameter("typePasswordX");

        
        boolean validacion=false;
        validacion=control.comprobarIngreso(typeEmailX,typePasswordX);

        if(validacion==true){
            HttpSession misession=request.getSession(true);
            misession.setAttribute("typeEmailX",typeEmailX);
            response.sendRedirect("index.jsp");
        }
        else{
        response.sendRedirect("loginError.jsp");

        }

        

    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
