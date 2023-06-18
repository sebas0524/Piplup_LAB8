package com.example.lab08.controllers.estudiante;

import com.example.lab08.models.beans.estudiante.Estudiante;
import com.example.lab08.models.daos.estudiante.EstudianteDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action") == null ?
                "loginform" : request.getParameter("action");


        RequestDispatcher view;
        switch (action) {
            case "loginform":
                view = request.getRequestDispatcher("index.jsp");
                view.forward(request, response);
                break;
            case "logout":
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath() + "/LoginServlet");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EstudianteDao estudianteDao = new EstudianteDao();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Estudiante estudiante = estudianteDao.validarUsuarioPassword(username,password);

        if(estudiante != null && estudiante.getEspecialidad().equals("Telecomunicaciones")){
            HttpSession session = request.getSession();
            session.setAttribute("estudianteSession",estudiante);
            session.setMaxInactiveInterval(5*60);

            //response.sendRedirect(request.getContextPath() + "/ViajeServlet");
            response.sendRedirect(request.getContextPath() + "/ViajeServlet?idEstudiante=" + estudiante.getIdEstudiante());
        }else{
            response.sendRedirect(request.getContextPath() + "/LoginServlet?error");
        }

    }
}