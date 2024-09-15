<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reserva Coworking</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <h1>Reserva de turnos CoWorkFlow</h1>
    </header>

    <main>
        <section class="reservation-form">
            <h3>Aquí podrás:</h3>
            <ul>
                <li><i class="fas fa-calendar-plus"></i> Reserva un turno para utilizar las instalaciones de coworking, eligiendo la fecha, hora y espacio que mejor se ajusten a tus necesidades. </li>
                <li><i class="fas fa-pencil-alt"></i> Modifica o elimina tu reserva de manera fácil y rápida en caso de cambios de planes. </li>
                <li><i class="fas fa-calendar-alt"></i> Verifica tus reservas asignadas para tener un control total sobre los horarios que has seleccionado.</li>
            </ul>
            
        </section>

        <div class="button-container">
            
            <form action="mostrarReserva.jsp" method="GET">
            <button class="button ver-reservas">Ver Reservas</button>
            </form>
           
            <button class="button nueva-reserva" onclick="window.location.href='nuevaReserva.jsp'">Nueva Reserva</button>
        </div>
    </main>
</body>
</html>
