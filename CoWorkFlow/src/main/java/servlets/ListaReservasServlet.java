
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "ListaReservasServlet", urlPatterns = {"/ListaReservasServlet"})
public class ListaReservasServlet extends HttpServlet {
    
    public List<Reserva> listaReserva = new ArrayList<>();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
        }
  

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Simular mi base de datos pero usando listas
        
        List<Reserva> reserva = (List<Reserva>) request.getSession().getAttribute("listaReserva");
        System.out.println(listaReserva);
        //Clase especial para tomar la sesion de usuario actual
        // Traer la sesion del usuario que mando esta peticion y a esa session setear la lista de reservas disponibles
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaReserva",listaReserva);
        
        response.sendRedirect("reservas.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request);
        String username = request.getParameter("username");
        String agendaDate = request.getParameter("agendaDate");
        String workspace = request.getParameter("workspace");
        String duracion = request.getParameter("duracion");
        
        listaReserva.add(new Reserva(username, agendaDate, workspace, duracion));
        
        request.getSession().setAttribute("listaReserva", listaReserva);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
    
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response){
        Reserva reservaAEditar = null;
        for (Reserva reserva: listaReserva){
            if (reserva.getUsername() == request.getParameter("username")) {
                reservaAEditar = reserva;
                listaReserva.remove(reserva);
                break;
            }
        }
        if (reservaAEditar == null) {
            System.out.println("No se encontro la reserva.");
        }
        else {
            System.out.println(request);
            String username = request.getParameter("username");
            String agendaDate = request.getParameter("agendaDate");
            String workspace = request.getParameter("workspace");
            String duracion = request.getParameter("duracion");

            listaReserva.add(new Reserva(username, agendaDate, workspace, duracion));
        }
    }
    
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lógica para eliminar una reserva
        Reserva reservaAEliminar = null;
        for (Reserva reserva: listaReserva){
            if (reserva.getUsername() == request.getParameter("username")) {
                reservaAEliminar = reserva;
                listaReserva.remove(reserva);
                break;
            }
        }
        if (reservaAEliminar == null) {
            System.out.println("No se encontro la reserva.");
        }
        else {
            System.out.println("Reserva eliminada");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
