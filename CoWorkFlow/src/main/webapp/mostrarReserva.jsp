<%@page import="java.util.List"%>
<%@page import="logica.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/actualizar.css">
       <title>Reservas Registradas</title>
    <!-- Enlazar el archivo CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <!-- Añadir un contenedor para todo el contenido -->
    <div class="container">
        <h1>Reservas Registradas</h1>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre Usuario</th>
                    <th>Fecha de Reserva</th>
                    <th>Espacio de Trabajo</th>
                    <th>Duración (horas)</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Reserva> listaReserva = (List<Reserva>) request.getSession().getAttribute("listaReserva");
                    if (listaReserva != null && !listaReserva.isEmpty()) {
                        int cont = 1;
                        for (Reserva reserva : listaReserva) {
                %>
                            <tr>
                                <td><%= cont %></td>
                                <td><%= reserva.getUsername() %></td>
                                <td><%= reserva.getAgendaDate() %></td>
                                <td><%= reserva.getWorkspace() %></td>
                                <td><%= reserva.getDuracion() %></td>
                                <td>
                                    <!-- Botón de actualizar -->
                                    
                                    <input type="hidden" name="id" value="<%= cont %>">
                                    <button type="submit" onclick="window.location.href='actualizarReserva.jsp'">Actualizar</button>
                                    

                                    <!-- Botón de eliminar -->
                                    <form action="EliminarReservaServlet" method="POST">
                                        <input type="hidden" name="username" value="<%= reserva.getUsername() %>">
                                        <input type="hidden" name="id" value="<%= cont %>">
                                        <button type="submit" class="delete">Eliminar</button>
                                    </form>
                                </td>
                            </tr>
                <%
                            cont++;
                        }
                    } else {
                %>
                        <tr>
                            <td colspan="6">No hay reservas registradas.</td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div> <!-- Cerrar el div contenedor -->
   
    </body>
</html>