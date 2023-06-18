<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.lab08.models.beans.viaje.Viaje" %><%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 17/06/2023
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<Viaje> listaviaje = (ArrayList<Viaje>) request.getAttribute()%>
<html>
<jsp:include page="/static/head.jsp">
    <jsp:param name="title" value="Editar Viaje"/>
</jsp:include>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class='container'>
    <jsp:include page="/navbar.jsp">
        <jsp:param name="page" value=" "/>
    </jsp:include>
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
    <div class="container">
        <h1 style="color:white;"  class='mb-3'>!Registra un Nuevo Viaje¡</h1>
        <form method="POST" action="<%=request.getContextPath()%>/CrearViajeServlet">

            <div class="mb-3">
                <label style="color:white;" for="idviaje">Nombre</label>
                <input type="text" class="form-control" name="idviaje" id="idviaje">
            </div>
            <div class="mb-3">
                <label style="color:white;" for="fechareserva">Tecnico</label>
                <input type="text" class="form-control" name="fechareserva" id="fechareserva">
            </div>
            <div class="mb-3">
                <label style="color:white;" for="fechaviaje">Tecnico</label>
                <input type="text" class="form-control" name="fechaviaje" id="fechaviaje">
            </div>
            <div class="mb-3">
                <label style="color:white;" for="ciudadorigen">Tecnico</label>
                <input type="text" class="form-control" name="ciudadorigen" id="ciudadorigen">
            </div>
            <div class="mb-3">
                <label style="color:white;" for="ciudaddestino">Tecnico</label>
                <input type="text" class="form-control" name="ciudaddestino" id="ciudaddestino">
            </div>
            <div class="mb-3">
                <label style="color:white;" for="numboletos">Tecnico</label>
                <input type="text" class="form-control" name="numboletos" id="numboletos">
            </div>
            <div class="mb-3">
                <label style="color:white;" for="costototal">Tecnico</label>
                <input type="text" class="form-control" name="costototal" id="costototal">
            </div>

            <label style="color:white;" for="idEstadio">Seguro</label>
            <select  name="idEstadio" id="idEstadio" class="form-control">
                <option value="0">Escoja un estadio</option>
                <% for (Estadio estadio : listaEstadio) {%>
                <option value="<%=estadio.getEstadios_idEstadios()%>"><%=estadio.getNombre()%>
                </option>
                <%}%>
            </select>
            <a class="btn btn-danger" href="<%=request.getContextPath()%>/listaSelecciones">Cancelar</a>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>



</div>
<jsp:include page="/static/scripts.jsp"/>
</body>

</html>