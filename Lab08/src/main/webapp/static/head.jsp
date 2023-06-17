<%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 17/06/2023
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
  <title><%=request.getParameter("title")%>
  </title>
  <style>
    body {
      background-color: #a9c7c7
    }

    .container {
      padding-right: 0 !important;
      padding-left: 0 !important;
    }

    .titlecolor {
      background: linear-gradient(0deg, #b6adc9 0%, #b5cbce 100%);
    }

    .navbar {
      padding-left: 20px !important;
      padding-right: 20px !important;
      background-color: rgba(156, 176, 215, 0.94) !important;
    }

    .table-transparent {
      background-color: #343a4000 !important
    }

    .tabla {
      background-color: #1d1d1d;
      padding-left: 30px;
      padding-right: 30px;
    }

    thead {
      border-top: hidden;
      font-size: 14px;
    }

    .table td {
      padding: 0.5rem;
      font-weight: 500;
    }

    .table th {
      padding: 0.5rem;
      font-weight: 100;
    }

    .fila-red {
      background-color: #ba49498c;
    }

    .fila-blue {
      background-color: #2441ac8c;
    }

    .fila-purple {
      background-color: #a4219a8c;
    }

    .fila-yellow {
      background-color: #f0e01f91;
    }


  </style>

</head>
