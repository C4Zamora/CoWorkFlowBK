package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Reserva;

/**
 *
 * @author Carol Zamora
 */
@WebServlet(name = "ReservaServlet", urlPatterns = {"/ReservaServlet"})

public class ReservaServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Index cuando se da en reservar ahora se enviaran los datospor metodo post a la
        // request y de la requst traermos los siguientes parametros
        
        String username = request.getParameter("username");
        String agendaDate = request.getParameter("agendaDate");
        String workspace = request.getParameter("workspace");
        String duracion = request.getParameter("duracion");
        
        // Validar si los datos llegaron usando datos quemados
        System.out.println("Usuario : " + username);
        System.out.println("Fecha agenda: " + agendaDate);
        System.out.println("Tipo de espacio: " + workspace);
        System.out.println("Tiempo: " + username);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
