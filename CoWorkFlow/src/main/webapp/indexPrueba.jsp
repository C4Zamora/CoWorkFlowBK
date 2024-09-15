<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reserva Coworking</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Reserva tu Espacio de Trabajo</h1>
    </header>

    <main>
        <section class="reservation-form">
            <form action="ListaReservasServlet" method="post">
                <!-- Campo para el nombre del usuario -->
                <div class="form-group">
                    <label>Nombre del Usuario:</label>
                    <input type="text" id="username" name="username" required placeholder="Ingresa tu nombre">
                </div>
                
                <!-- Selector de fecha de reserva -->
                <div class="form-group">
                    <label>Fecha de Reserva:</label>
                    <input type="date" id="agendaDate" name="agendaDate" required>
                </div>
                
                <!-- Selector del tipo de espacio de trabajo -->
                <div class="form-group">
                    <label>Espacio de Trabajo:</label>
                    <select name="workspace" required>
                        <option value="">Selecciona un espacio...</option>
                        <option value="escritorio">Escritorio</option>
                        <option value="sala">Sala de Reuniones</option>
                        <option value="officina">Oficina Privada</option>
                    </select>
                </div>

                <!-- Selector de duración de la reserva -->
                <div class="form-group">
                    <label>Duración de la Reserva (en horas):</label>
                    <input type="number"  name="duracion" min="1" max="8" required placeholder="1-8 horas">
                </div>
                
                <!-- Botón de envío del formulario -->
                <button type="submit">Reservar Ahora</button>
            </form>
        </section>
    </main>
    <h1>ver lista de usuarios </h1>
    <p>Datos de reservas haga click en el siguiente boton</p>
    
    <form action="ListaReservasServlet" method="GET" >
        <button type="submit">Mostrar Reservas</button>
    </form>
    

    <footer>
        <p>&copy; 2024 Coworking Space. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
