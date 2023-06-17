package com.example.lab08.controllers.viaje;

import com.example.lab08.models.beans.viaje.Viaje;
import com.example.lab08.models.daos.viaje.ViajeDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "BorrarViajeServlet", value = "/BorrarViajeServlet")
public class BorrarViajeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        ViajeDao viajeDao=new ViajeDao();
        String id= request.getParameter("id");
        viajeDao.BorrarViaje(id);
        response.sendRedirect(request.getContextPath() + "/ViajeServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*ViajeDao viajeDao=new ViajeDao();
        String idStr=request.getParameter("id");
        int id=Integer.parseInt(idStr);

        for(Viaje listaviaje : viajeDao.listaViajes(id)){
            if(listaviaje.ge)
        }*/
    }

}
