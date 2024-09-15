package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Reserva;

/**
 *
 * @author Carol Zamora
 */
@WebServlet(name = "EditarReserva", urlPatterns = {"/EditarReserva"})
public class EditarReserva extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Reserva> listaReserva = (List<Reserva>) request.getSession().getAttribute("listaReserva");

        // Ahora puedes trabajar con la lista de reservas
        if (listaReserva != null) {
            Reserva reservaAEditar = null;
            for (Reserva reserva: listaReserva){
                if (reserva.getUsername() == request.getParameter("username")) {
                    reservaAEditar = reserva;
                    listaReserva.remove(reserva);
                    break;
                }
            }
            if (reservaAEditar == null) {
                request.getRequestDispatcher("/alerta.jsp").forward(request, response);
            }
            else {
                System.out.println(request);
                String username = request.getParameter("username");
                String agendaDate = request.getParameter("agendaDate");
                String workspace = request.getParameter("workspace");
                String duracion = request.getParameter("duracion");

                listaReserva.add(new Reserva(username, agendaDate, workspace, duracion));
            }
            request.getRequestDispatcher("/mostrarReserva.jsp").forward(request, response);
        }
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
