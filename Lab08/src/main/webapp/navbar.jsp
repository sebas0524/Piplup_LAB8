<%@ page import="com.example.lab08.models.beans.viaje.Viaje" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 17/06/2023
  Time: 03:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<% ArrayList<Viaje> listaViajes = (ArrayList<Viaje>) request.getAttribute("listaViajes");%>
<% Viaje viaeje = (Viaje) request.getAttribute("");%>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="<%=request.getContextPath()%>/ViajeServlet">Bienvenido al Mundo Televiaje </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link <%=request.getParameter("page").equals("jugadores")? "active": "" %>" value=" ">Nombres y apellidos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%=request.getParameter("page").equals("seleccion")? "active": "" %>" href=" ">Status Estudiante</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%=request.getParameter("page").equals("seleccion")? "active": "" %>" href="<%=request.getContextPath()%>/listaSelecciones">Cerrar Sesión</a>
            </li>

        </ul>
    </div>
</nav>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

