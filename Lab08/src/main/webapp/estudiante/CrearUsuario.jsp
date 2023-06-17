<%--
  Created by IntelliJ IDEA.
  User: PABLO
  Date: 17/06/2023
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<head>
    <title>Iniciar sesión</title>
    <style>
        body {
            background-image: url("recursos/fondo.jpg");
            background-color: black;
            color: white;
            font-family: Calibri, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-form {
            margin: 0 auto;
            width: 500px;
            height: 450px;
            padding: 20px;
            background-color: black;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .login-form input[type="text"],
        .login-form input[type="password"],
        .login-form input[type="number"],
        .login-form input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 2px;
            background-color: white;
            border: none;
            border-radius: 3px;
            color: black;
        }

        .login-form input[type="submit"]{
            width: 60%;
            padding: 5px;
            background-color: green;
            border: 2px solid green;
            border-radius: 20px;
            color: white;
            cursor: pointer;
            text-decoration: none;
            display: block;
            text-align: center;
            margin: 0 auto 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .login-form input[type="submit"]:hover {
            background-color: limegreen;
        }

        .login-form h5 {
            text-align: center;
            margin-bottom: 10px;
        }

        .centered {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .logo {
            display: block;
            margin: 0 auto;
        }

        .login-form a {
            width: 60%;
            padding: 1px;
            background-color: darkgreen;
            border: 2px solid darkgreen;
            border-radius: 10px;
            color: white;
            cursor: pointer;
            text-decoration: none;
            display: block;
            text-align: center;
            margin-bottom: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .small-hr {
            margin: 5px 0;
            border: none;
            border-top: transparent;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
    <title>LAB 7</title>
</head>
<body>

<div class="login-form">
    <h5 class="text-white justify-content-center">Crea tu cuenta Televiajero</h5>
    <hr>
    <hr>
    <form method="POST" action="<%=request.getContextPath()%>/CrearEstudianteServlet">
        <div class="form-group">
            <div class="form-group row">
                <div class="col-sm-6 mb-sm-0">
                    <input type="text" class="form-control" name="nombre" placeholder="Nombres">
                </div>
                <div class="col-sm-6 mb-sm-0">
                    <input type="text" class="form-control" name="apellidos" placeholder="Apellidos">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-sm-0">
                    <input type="number" class="form-control" name="edad" placeholder="Edad">
                </div>
                <div class="col-sm-6 mb-sm-0">
                    <input type="text" class="form-control" name="codigo_pucp" placeholder="Código Pucp">
                </div>
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="Correo Electrónico">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="especialidad" placeholder="Especialidad">
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3">
                    <input type="password" class="form-control" name="contraseña" placeholder="Contraseña">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="password" class="form-control" name="contraseñaConfirmada" placeholder="Confirmar Contraseña">
                </div>
            </div>
        </div>
        <div class="centered">
            <input type="submit" value="Ingresar">
        </div>
    </form>

</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
