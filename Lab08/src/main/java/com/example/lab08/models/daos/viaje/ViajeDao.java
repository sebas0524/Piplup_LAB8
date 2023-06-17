package com.example.lab08.models.daos.viaje;

import com.example.lab08.models.beans.viaje.EmpresaSeguro;
import com.example.lab08.models.beans.viaje.Viaje;
import com.example.lab08.models.daos.DaoBase;

import java.sql.*;
import java.util.ArrayList;

public class ViajeDao extends DaoBase {

    public ArrayList<Viaje>listaViajes(){
        ArrayList<Viaje> listaviajes=new ArrayList<>();
        String sql="SELECT idViaje,fechareserva,fechaviaje,ciudadorigen,ciudaddestino,es.nombreseguro,numboletos,costototal FROM viaje v \n" +
                "inner join estudiante e on v.estudiante_idestudiante=e.idestudiante\n" +
                "inner join empresaseguro es on v.empresaSeguro_idempresaSeguro=es.idempresaSeguro where estudiante_idestudiante= ?";

        try(Connection connection=this.getConnection();
            PreparedStatement pstmt=connection.prepareStatement(sql)){

            Viaje viaje=new Viaje();

            pstmt.setInt(1,viaje.getIdviaje());
            pstmt.setDate(2,viaje.getFechareserva());
            pstmt.setDate(3,viaje.getFechaviaje());
            pstmt.setString(4,viaje.getCiudadorigen());
            pstmt.setString(5,viaje.getCiudaddestino());
            pstmt.setString(6,viaje.getEmpresa().getNombre());
            pstmt.setInt(7,viaje.getNumboletos());
            pstmt.setDouble(8,viaje.getCostototal());

            listaviajes.add(viaje);
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return listaviajes;

    }
    public void AñadirViaje(Viaje viaje){
        String sql="INSERT INTO viaje(idviaje,fechareserva,fechaviaje,ciudadorigen,ciudaddestino,es.nombreseguro,numboletos,costototal) VALUES (?,?,?,?,?,?,?,?)";
        try(Connection connection=this.getConnection();
            PreparedStatement pstmt=connection.prepareStatement(sql)){

            //CREO QUE SI VA LA COLUMNA
            //pstmt.setInt(1,viaje.getIdviaje());
            pstmt.setDate(2,viaje.getFechaviaje());
            pstmt.setDate(3,viaje.getFechareserva());
            pstmt.setString(4,viaje.getCiudadorigen());
            pstmt.setString(5,viaje.getCiudaddestino());
            pstmt.setString(6,viaje.getEmpresa().getNombre());
            pstmt.setInt(7,viaje.getNumboletos());
            //pstmt.setDouble(6,viaje.getCostoboleto());

            pstmt.executeUpdate();

        }
        catch (SQLException e){
            throw new RuntimeException(e);
        }

    }
    public void EditarViaje(Viaje viaje){

        String sql="UPDATE  viaje SET fechareserva=?,fechaviaje=?,ciudadorigen=?,ciudaddestino=?,es.nombreseguro=?,numboletos=?,costotoal=? WHERE idviaje=?";
        try(Connection connection =this.getConnection();
           PreparedStatement pstmt=connection.prepareStatement(sql)){

            pstmt.setDate(1,viaje.getFechareserva());
            pstmt.setDate(2,viaje.getFechaviaje());
            pstmt.setString(3,viaje.getCiudadorigen());
            pstmt.setString(4,viaje.getCiudadorigen());
            pstmt.setString(5,viaje.getEmpresa().getNombre());
            pstmt.setInt(6,viaje.getNumboletos());
            pstmt.setDouble(7,viaje.getCostototal());

            pstmt.executeUpdate();

        }catch(SQLException e){
            throw new RuntimeException(e);
        }

    }
    public void BorrarViaje(String idviaje){

        String sql="DELETE FROM viaje WHERE idviaje = ?";
        try(Connection connection=this.getConnection() ;
        PreparedStatement pstmt=connection.prepareStatement(sql)){
            pstmt.setString(1,idviaje);
            pstmt.executeUpdate();

        }
        catch (SQLException e){
            throw  new RuntimeException(e);
        }

    }
}
