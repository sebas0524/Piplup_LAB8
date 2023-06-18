package com.example.lab08.controllers.viaje;

import com.example.lab08.models.beans.viaje.Viaje;
import com.example.lab08.models.daos.viaje.ViajeDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "ViajeServlet", value = "/ViajeServlet")
public class ViajeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ViajeDao viajeDao=new ViajeDao();
        String action = request.getParameter("action") == null ? "listar" : request.getParameter("action");


        switch(action){
            case "listar":
                int idEstudiante = Integer.parseInt(request.getParameter("idEstudiante"));
                request.setAttribute("listaViajes",viajeDao.listaViajes(idEstudiante));
                request.getRequestDispatcher("viaje/listaViajes.jsp").forward(request,response);
                break;
            case "editar":
                String id =request.getParameter("id");
                request.setAttribute("viaje",viajeDao.listaConfViajes(Integer.parseInt(id)));
                request.getRequestDispatcher("viaje/editarViajes.jsp").forward(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ViajeDao viajeDao=new ViajeDao();
        Viaje viaje2 = parseViaje(request);
        viajeDao.EditarViaje(viaje2);
        response.sendRedirect(request.getContextPath() + "/viaje/ViajeServlet");


    }
    public Viaje parseViaje(HttpServletRequest request){
        Viaje viaje=new Viaje();
        //EmpresaSeguro empresaSeguro=new EmpresaSeguro();

        String idviajeStr=request.getParameter("idviaje");
        String fechareservaStr=request.getParameter("fechareserva");
        String fechaviajeStr=request.getParameter("fechaviaje");
        String ciudadorigen=request.getParameter("ciudadorigen");
        String ciudaddestino=request.getParameter("ciudaddestino");
        String nombreseguro=request.getParameter("seguro");
        String numboletosStr=request.getParameter("numboletos");
        String costototalStr=request.getParameter("costototal");
        try{
            viaje.setIdviaje(Integer.parseInt(idviajeStr));
            viaje.setFechareserva(Date.valueOf(fechareservaStr));
            viaje.setFechaviaje(Date.valueOf(fechaviajeStr));
            viaje.setCiudaddestino(ciudadorigen);
            viaje.setCiudaddestino(ciudaddestino);
            viaje.getEmpresa().setNombre(nombreseguro);
            viaje.setNumboletos(Integer.parseInt(numboletosStr));
            viaje.setCostototal(Double.parseDouble(costototalStr));


            return viaje;


        }catch (NumberFormatException e){

        }
        return viaje;

    }
}
