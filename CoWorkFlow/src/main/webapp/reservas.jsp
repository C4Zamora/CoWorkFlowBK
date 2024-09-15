
<%@page import="java.util.List"%>
<%@page import="logica.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservas Registradas</title>
    </head>
    <body>
        <h1>Reservas Registradas</h1>
        <%-- Traer la lista de reservas que seteamos en la sesion,recorrerla y mostrarla por pantalla --%>
        <%
            
            List<Reserva> listaReserva = (List) request.getSession().getAttribute("listaReserva");
            System.out.println("Reservas: " + listaReserva);
            int cont = 1;
            if (listaReserva != null && !listaReserva.isEmpty()){
                for(Reserva reserva: listaReserva){  
            %>
                    <p><b>Reserva N°<%=cont %></b></p>
                    <p>Nombre Uusario: <%=reserva.getUsername()%></P>
                    <p>Fecha de reserva:<%=reserva.getAgendaDate()%></P>
                    <p>Espacio De Trabajo: <%=reserva.getWorkspace()%></P>
                    <p>Duracion: <%=reserva.getDuracion()%></P> 
                    <p>----------------------------------------</p>
                    <%cont = cont + 1;%>


            <% }} %>
            
    </body>
</html>
