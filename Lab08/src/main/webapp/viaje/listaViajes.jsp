<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.lab08.models.beans.viaje.Viaje" %><%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 17/06/2023
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<Viaje> listaViajes = (ArrayList<Viaje>) request.getAttribute("listaViajes");%>

<html>
<jsp:include page="/static/head.jsp">
    <jsp:param name="title" value="Página Principal"/>
</jsp:include>
<body>
<div class='container'>
    <jsp:include page="/navbar.jsp">
        <jsp:param name="page" value=" "/>
    </jsp:include>
    <div class="pb-5 pt-4 px-3 titlecolor">
        <div class="col-lg-6">
            <h1 class='text-light'>!Estas es tu lista de viajes¡</h1>
            <!--<a class="btn btn-success" href="<%//=request.getContextPath()%>/JugadorServlet?a=crearJugador">Registrar Nuevo Viaje</a>-->
        </div>
    </div>
    <div class="tabla">
        <table class="table table-dark table-transparent table-hover">
            <thead>
            <th>#IDVIAJE</th>
            <th>Fecha de reserva</th>
            <th>Fecha de viaje</th>
            <th>Ciudad de origen</th>
            <th>Ciudad de destino</th>
            <th>Empresa de seguro</th>
            <th>Numero de boletos</th>
            <th>Costo Total</th>
            </thead>
            <%
                for (Viaje viaje  : listaViajes) {
            %>
            <tr>
                <td><%=viaje.getIdviaje()%>
                </td>
                <td><%=viaje.getFechareserva()%>
                </td>
                <td>
                    <%=viaje.getFechaviaje()%>
                </td>
                <td>
                    <%=viaje.getCiudadorigen()%>
                </td>
                <td>
                    <%=viaje.getCiudaddestino()%>
                </td>
                <td>
                    <%=viaje.getEmpresa().getNombre()%>
                </td>
                <td>
                    <%=viaje.getNumboletos()%>
                </td>
                <td>
                    <%=viaje.getCostototal()%>
                </td>
                <td>
                    <a type="button" class="btn btn-success" href="<%=request.getContextPath()%>/ViajeServlet?idViaje=<%=viaje.getIdviaje()%>&action=editar">Editar Viaje</a>
                </td>
                <td>
                    <a type="button" class="btn btn-danger" href="<%=request.getContextPath()%>/BorrarViajeServlet?id=<%=viaje.getIdviaje()%>">Borrar Viaje</a>
                </td>


            </tr>
            <%
                }
            %>
        </table>
    </div>


</div>
<jsp:include page="/static/scripts.jsp"/>
</body>

</html>