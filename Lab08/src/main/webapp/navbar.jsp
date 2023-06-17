<%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 17/06/2023
  Time: 03:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <nav class="navbar sticky-top navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/hello-servlet">¡Disfruta de los televiajes¡ </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a  href="">Nombres y Apellidos</a>
                </li>
                <li class="nav-item">
                    <a href="">Status del estudiante</a>
                </li>
                <li class="nav-item">
                    <a href="">Cerrar Sesión</a>
                </li>

            </ul>
        </div>
    </nav>
<style>

    body {
        background-image: url("recursos/fondopantalla.jpg");
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
        max-width: 800px;
        padding: 20px;
        background-color: black;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        background-color: white;
        border: none;
        border-radius: 3px;
        color: black;
    }

    .login-form input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        border: none;
        border-radius: 3px;
        color: white;
        cursor: pointer;
    }

    .login-form input[type="submit"]:hover {
        background-color: #45a049;
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
<title>LAB 7</title>
</head>
<body>
</body>
</html>
