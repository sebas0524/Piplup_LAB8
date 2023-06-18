package com.example.lab08.controllers.viaje;

import com.example.lab08.models.beans.viaje.EmpresaSeguro;
import com.example.lab08.models.beans.viaje.Viaje;
import com.example.lab08.models.daos.viaje.ViajeDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

@WebServlet(name = "CrearViajeServlet", value = "/CrearViajeServlet")
public class CrearViajeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ViajeDao viajeDao = new ViajeDao();
        //request.setAttribute("listViajes",viajeDao.listaViajes());
        request.getRequestDispatcher("NuevoViaje.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ViajeDao viajeDao=new ViajeDao();
        Viaje viaje1=parseViaje(request);
        viajeDao.AñadirViaje(viaje1);
        response.sendRedirect(request.getContextPath() + "/CrearViajeServlet");



    }
    public Viaje parseViaje(HttpServletRequest request){
        Viaje viaje=new Viaje();
        //Random random = new Random();
        //EmpresaSeguro empresaSeguro=new EmpresaSeg
        String idviajeStr=request.getParameter("idviaje");

        //String idviajeStr= String.valueOf(random.nextInt(100000000));
        //String hola=request.getParameter("ssss");
        //LocalDate fechare
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
