<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reserva de Espacio de Trabajo - Coworking</title>
    <link rel="stylesheet" href="css/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <h1>Actualiza tu Espacio de Trabajo en Coworking</h1>
    </header>

    <main>
        <section class="reservation-form">
            <form action="EditarReserva" method="POST">
                <!-- Campo para el nombre del usuario -->
                <div class="form-group">
                    <label for="username">Nombre del Usuario:</label>
                    <input type="text" id="username" name="username" required placeholder="Ingresa tu nombre completo">
                </div>
                
                <!-- Selector de fecha de reserva -->
                <div class="form-group">
                    <label for="agendaDate">Fecha de Reserva:</label>
                    <input type="date" id="agendaDate" name="agendaDate" required>
                </div>
                
                <!-- Selector del tipo de espacio de trabajo -->
                <div class="form-group">
                    <label for="workspace">Tipo de Espacio de Trabajo:</label>
                    <select id="workspace" name="workspace" required>
                        <option value="" disabled selected>Selecciona un espacio...</option>
                        <option value="escritorio">Escritorio Individual</option>
                        <option value="sala">Sala de Reuniones</option>
                        <option value="oficina">Oficina Privada</option>
                    </select>
                </div>

                <!-- Selector de duración de la reserva -->
                <div class="form-group">
                    <label for="duracion">Duración de la Reserva (en horas):</label>
                    <input type="number" id="duracion" name="duracion" min="1" max="8" required placeholder="Indica la duración en horas (1-8)">
                </div>
                
                <!-- Botón de envío del formulario -->
                   <button type="submit">Confirmar Reserva</button>
            </form>
                

        </section>
    </main>
    
    <footer>
        <p>&copy; 2024 Coworking Space. Todos los derechos reservados.</p>
    </footer>
</body>
</html>