<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
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

<div class="login-form">
    <img src="recursos/logo.png" alt="Logo" width="300px" height="auto">
    <h5 class="text-white justify-content-center">Bienvenido Televiajero</h5>
    <form>
        <input placeholder="Usuario" type="text" id="username" name="username"><br>

        <input placeholder="Contraseña" type="password" id="password" name="password"><br>

        <input type="submit" value="Ingresar">
        <hr>
        <div class="centered">
            <a class="btn btn-primary" href="#">Soy nuevo y quiero registrarme</a>
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