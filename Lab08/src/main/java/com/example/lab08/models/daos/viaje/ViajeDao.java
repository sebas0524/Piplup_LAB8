package com.example.lab08.models.daos.viaje;

import com.example.lab08.models.beans.viaje.Viaje;
import com.example.lab08.models.daos.DaoBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ViajeDao extends DaoBase {

    public ArrayList<Viaje>listaViajes(){
        ArrayList<Viaje> listaviajes=new ArrayList<>();
        String sql="";

        try(Connection connection=this.getConnection();
            Statement stmt= connection.createStatement();
            ResultSet resultSet=stmt.executeQuery(sql)){

            while(resultSet.next()){
                Viaje viaje=new Viaje();
                viaje.setIdviaje(resultSet.getInt(1));


            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return listaviajes;

    }

}
