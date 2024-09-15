# Coworkflow - Sistema de Reserva de Turnos

Este proyecto es un sistema de reserva de turnos para espacios de trabajo, desarrollado con JavaWeb utilizando servlets, listas quemadas y ejecutado en un servidor Apache Tomcat. El sistema permite a los usuarios realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre las reservas de turnos.

## Estructura del Proyecto

El proyecto está basado en la arquitectura MVC (Modelo-Vista-Controlador), donde:

- **Modelo**: Representado por la clase Java `Reserva`, que contiene los atributos y lógica del turno.
- **Vista**: Páginas JSP que permiten la interacción del usuario.
- **Controlador**: Servlets que gestionan la lógica de negocio y manipulan las listas de reservas.

### Funcionalidades

- **Registrar un nuevo turno**.
- **Mostrar la lista de turnos reservados**.
- **Actualizar los detalles de un turno existente**.
- **Eliminar un turno de la lista**.

## Tecnologías Utilizadas

- **Java 8**: Lenguaje de programación base.
- **Servlets**: Para la lógica del lado del servidor.
- **JSP (Java Server Pages)**: Para las vistas del frontend.
- **HTML/CSS**: Para la presentación visual.
- **Apache Tomcat**: Servidor web para ejecutar las aplicaciones web Java.
- **Listas quemadas**: Los datos de reserva están almacenados en memoria, para realizar la simulación a Base de datos.

## Requisitos Previos

- **JDK 8** o superior.
- **NetBeans IDE** (o cualquier otro IDE compatible con Java).
- **Apache Tomcat 8 o superior**.

## Instrucciones para la Instalación y Configuración

1. **Clonar el repositorio**:
   ```bash


Despliegue local

http://localhost:8080/CoWorkFlow/
http://localhost:8080/CoWorkFlow/mostrarReserva.jsp
http://localhost:8080/CoWorkFlow/nuevaReserva.jsp
   
