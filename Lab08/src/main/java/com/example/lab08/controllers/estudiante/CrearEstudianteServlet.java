package com.example.lab08.controllers.estudiante;


import com.example.lab08.models.beans.estudiante.Estudiante;
import com.example.lab08.models.daos.estudiante.CrearEstudianteDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "CrearEstudianteServlet", value = "/CrearEstudianteServlet")
public class CrearEstudianteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("estudiante/CrearUsuario.jsp");
        requestDispatcher.forward(request,response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CrearEstudianteDao crearEstudianteDao = new CrearEstudianteDao();

        Estudiante estudiante = parseEstudiante(request);
        crearEstudianteDao.guardarEstudiante(estudiante);

        response.sendRedirect(request.getContextPath() + "/LoginServlet");


    }

    public Estudiante parseEstudiante(HttpServletRequest request){

        Estudiante estudiante = new Estudiante();

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellidos");
        String edadstr = request.getParameter("edad");
        String codigopucpstr = request.getParameter("codigo_pucp");
        String correopucp = request.getParameter("email");
        String especialidad = request.getParameter("especialidad");
        String contrasenha = request.getParameter("contraseña");
        String contrasenhaConfirmada = request.getParameter("contraseñaConfirmada");
        String status = "Normal";
        try{

            int edad = Integer.parseInt(edadstr);
            int codigopucp = Integer.parseInt(codigopucpstr);


            estudiante.setNombre(nombre);
            estudiante.setApellido(apellido);
            estudiante.setEdad(edad);
            estudiante.setCodigopucp(codigopucp);
            estudiante.setCorreopucp(correopucp);
            estudiante.setStatus(status);
            estudiante.setEspecialidad(especialidad);
            if (contrasenha.equals(contrasenhaConfirmada)){
                estudiante.setContrasenha(contrasenhaConfirmada);
            }
            return estudiante;
        }catch (NumberFormatException e){

        }

        return estudiante;
    }
}













