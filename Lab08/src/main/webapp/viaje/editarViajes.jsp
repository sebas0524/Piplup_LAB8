<%@ page import="com.example.lab08.models.beans.estudiante.Estudiante" %>
<%@ page import="com.example.lab08.models.beans.viaje.Viaje" %>
<%@ page import="com.example.lab08.models.beans.viaje.EmpresaSeguro" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 17/06/2023
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Viaje viaje = (Viaje) request.getAttribute("EditarViaje");%>
<% ArrayList<Viaje> listaviaje =(ArrayList<Viaje>) request.getAttribute("listaViajes");%>
<html>
<jsp:include page="/static/head.jsp">
    <jsp:param name="title" value="Editar Viaje"/>
</jsp:include>
<body>
<div class='container'>
    <jsp:include page="/navbar.jsp">
        <jsp:param name="page" value=" "/>
    </jsp:include>
    <div class="pb-5 pt-4 px-3 titlecolor">
        <div class="col-lg-6">
            <h1 class='text-light'>!Ahora tú puedes editar tus viajes¡</h1>
            <!--<a class="btn btn-success" href="<%//=request.getContextPath()%>/JugadorServlet?a=crearJugador">Registrar Nuevo Viaje</a>-->
        </div>
    </div>
        <div class="container-xxl position-relative bg-white d-flex p-0" style="width: 80%;">
            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h4><p style="text-align:center">!No te pierdas de los mejores lugares en el Perú¡</p></h4>
                            <div class="container">
                                <!-- Formulario de carga de imagen -->
                                <form>
                                    <div class="mb-3">
                                        <img class="card-img-top" src="lugaresTuristicos.jpg"/>
                                        <label for="formFile" class="form-label">Selecciona una imagen para cargar:</label>
                                        <input class="form-control" type="file" id="formFile">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h4><p style="text-align:center">Configurar Detalles del Viaje</p></h4>
                            <form method="POST" action="<%=request.getContextPath()%>/ViajeServlet">
                                <input class="form-control" type="text" name="idviaje" id="idviaje" value="<%=viaje.getIdviaje()%>" hidden="">
                                <div class="mb-3">
                                    <h6><label class="form-label">Fecha de Reserva</label></h6>
                                    <input class="form-control" type="text" name="fechareserva" id="fechareserva" value="<%=viaje.getFechareserva()%>">
                                </div>
                                <div class="mb-3">
                                    <h6><label class="form-label">Fecha de Viaje</label></h6>
                                    <input class="form-control" type=text" name="fechaviaje"  id="fechaviaje" value="<%=viaje.getFechaviaje()%>">
                                </div>
                                <div class="mb-3">
                                    <h6><label class="form-label">Ciudad de Origen</label></h6>
                                    <input class="form-control" type="text"  name="ciudadorigen" id="ciudadorigen" value="<%=viaje.getCiudadorigen()%>" >
                                </div>
                                <div class="mb-3">
                                    <h6><label class="form-label">Ciudad de Destino</label></h6>
                                    <input class="form-control" type="text"  name="ciudaddestino" id="ciudaddestino" value="<%=viaje.getCiudaddestino()%>" >
                                </div>
                                <div class="mb-3">
                                    <h6><label class="form-label">Empresa de Seguro</label></h6>
                                    <select name="seguro" id="seguro" class="fomr-control">
                                        <option value="0">Escoja un Asegurada</option>
                                        <%for(Viaje viaje1 : listaviaje) {%>
                                       <option
                                           value="<%=viaje1.getEmpresa().getIdEmpresa()%>"><%viaje1.getEmpresa().getNombre();%>
                                       </option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <h6><label class="form-label">Numero de boletos</label></h6>
                                    <input class="form-control" type="text"  name="numboletos" id="numboletos" value="<%=viaje.getCiudaddestino()%>" >
                                </div>
                                <div class="mb-3">
                                    <h6><label class="form-label">Costo Total</label></h6>
                                    <input class="form-control" type="text"  name="costototal" id="costototal" value="<%=viaje.getCiudaddestino()%>" >
                                </div>
                                <div class="m-auto">
                                    <a class="btn btn-danger" href="<%=request.getContextPath()%>/ViajeServlet">Cancelar</a>
                                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Content End -->
        </div>

        <script src="js/mean.js"></script>
</body>
</html>
