package com.example.lab08.controllers.estudiante;


import java.lang.*;
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
        //1era validacion
        int validacion1 = 0;
        if (!request.getParameter("nombre").matches("^\\d.*")) {
            if (!request.getParameter("apellidos").matches("^\\d.*")) {
                validacion1=1 ;
            } else {

            }
        } else {

        }

        //2da validacion
        int validacion2=0 ;

        if(Integer.parseInt(request.getParameter("edad"))>=18 && Integer.parseInt(request.getParameter("edad"))< 30){
            validacion2=1 ;
        }else{

        }

        //3ra validacion
        int validacion3 = 0;
        if (request.getParameter("codigo_pucp").length() == 8 && request.getParameter("codigo_pucp").matches("\\d+")) {
            validacion3 = 1;
        } else {

        }


        //4ta validacion
        int validacion4 = 0;
        if (request.getParameter("email").matches("^a" + request.getParameter("codigo_pucp") + "@pucp\\.edu\\.pe$")) {
            validacion4 = 1;
        } else {


        }


        //5ta y 6ta validacion
        int validacion6 = 0;

        if (request.getParameter("contraseña").equals(request.getParameter("contraseñaConfirmada"))) {
            if (request.getParameter("contraseñaConfirmada").matches(".*[A-Z].*") && request.getParameter("contraseñaConfirmada").matches(".*\\d.*") && request.getParameter("contraseñaConfirmada").matches(".*[^a-zA-Z0-9].*")) {
                validacion6= 1;
            } else {

            }
        } else {

        }

        if((validacion1==1) && (validacion2==1) && (validacion3==1) && (validacion4==1) && (validacion6==1)){

            Estudiante estudiante = parseEstudiante(request);
            crearEstudianteDao.guardarEstudiante(estudiante);
            response.sendRedirect(request.getContextPath() + "/LoginServlet");
        }else{
            response.sendRedirect(request.getContextPath()+ "/CrearEstudianteServlet?error");
        }

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
            estudiante.setContrasenha(contrasenhaConfirmada);

            return estudiante;
        }catch (NumberFormatException e){

        }

        return estudiante;
    }
}













