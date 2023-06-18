package com.example.lab08.models.daos.viaje;

import com.example.lab08.models.beans.viaje.EmpresaSeguro;
import com.example.lab08.models.beans.viaje.Viaje;
import com.example.lab08.models.daos.DaoBase;

import java.sql.*;
import java.util.ArrayList;

public class ViajeDao extends DaoBase {

    public ArrayList<Viaje>listaViajes(int idEstudiante){
        //public ArrayList<Viaje>listaViajes(){
        ArrayList<Viaje> listaviajes=new ArrayList<>();
        // TODAVIA NO SE SI TENGO QUE PONER EL ID DEL ESTUDIANTE
        String sql="SELECT idViaje,fechareserva,fechaviaje,ciudadorigen,ciudaddestino,es.nombreseguro,numboletos,costototal FROM viaje v \n" +
                "inner join estudiante e on v.estudiante_idestudiante=e.idestudiante\n" +
                "inner join empresaseguro es on v.empresaSeguro_idempresaSeguro=es.idempresaSeguro where estudiante_idestudiante= ?";

        try(Connection connection=this.getConnection();
            PreparedStatement pstmt=connection.prepareStatement(sql)){
            pstmt.setInt(1,idEstudiante);
            try(ResultSet resultSet =pstmt.executeQuery()){

                while (resultSet.next()) {

                    Viaje viaje = new Viaje();

                    viaje.setIdviaje(resultSet.getInt(1));
                    viaje.setFechareserva(resultSet.getDate(2));
                    viaje.setFechaviaje(resultSet.getDate(3));
                    viaje.setCiudadorigen(resultSet.getString(4));
                    viaje.setCiudaddestino(resultSet.getString(5));
                    EmpresaSeguro empresaSeguro = new EmpresaSeguro();
                    empresaSeguro.setNombre(resultSet.getString(6));
                    viaje.setEmpresa(empresaSeguro);
                    viaje.setNumboletos(resultSet.getInt(7));
                    viaje.setCostototal(resultSet.getDouble(8));

                    listaviajes.add(viaje);
                }
            }

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return listaviajes;

    }
    public void AñadirViaje(Viaje viaje){
        String sql="INSERT INTO viaje(idviaje,fechareserva,fechaviaje,ciudadorigen,ciudaddestino,empresaSeguro_idempresaSeguro,numboletos,costototal) VALUES (?,?,?,?,?,?,?,?)";
        try(Connection connection=this.getConnection();
            PreparedStatement pstmt=connection.prepareStatement(sql)){

            //CREO QUE SI SE TIENE QUE MOSTRAR LA PRIMERA COLUMNA

            pstmt.setInt(1,viaje.getIdviaje());
            pstmt.setDate(2,viaje.getFechaviaje());
            pstmt.setDate(3,viaje.getFechareserva());
            pstmt.setString(4,viaje.getCiudadorigen());
            pstmt.setString(5,viaje.getCiudaddestino());
            pstmt.setInt(6,viaje.getEmpresa().getIdEmpresa());
            pstmt.setInt(7,viaje.getNumboletos());

            //pstmt.setDouble(6,viaje.getCostoboleto());

            pstmt.executeUpdate();

        }
        catch (SQLException e){
            throw new RuntimeException(e);
        }

    }
    public void EditarViaje(Viaje viaje){

        String sql="UPDATE  viaje SET fechareserva=?,fechaviaje=?,ciudadorigen=?,ciudaddestino=?,empresaSeguro_idempresaSeguro=?,numboletos=?,costotoal=? WHERE idviaje=?";
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
    public Viaje listaConfViajes(int idviaje){
        Viaje viaje=null;
        String sql="SELECT idViaje,fechareserva,fechaviaje,ciudadorigen,ciudaddestino,es.nombreseguro,numboletos,costototal FROM viaje v \n" +
                "inner join estudiante e on v.estudiante_idestudiante=e.idestudiante\n" +
                "inner join empresaseguro es on v.empresaSeguro_idempresaSeguro=es.idempresaSeguro where estudiante_idestudiante= ?";
        try(Connection connection=this.getConnection();
            PreparedStatement pstmt =connection.prepareStatement(sql)){

            pstmt.setInt(1, idviaje);

            try(ResultSet rs= pstmt.executeQuery()){
                if(rs.next()){
                    viaje=new Viaje();
                    viaje.setIdviaje(rs.getInt(1));
                    viaje.setFechareserva(rs.getDate(2));
                    viaje.setFechaviaje(rs.getDate(3));
                    viaje.setCiudadorigen(rs.getString(4));
                    viaje.setCiudaddestino(rs.getString(5));

                    EmpresaSeguro empresaSeguro=new EmpresaSeguro();
                    empresaSeguro.setNombre(rs.getString(6));
                    viaje.setEmpresa(empresaSeguro);

                    viaje.setNumboletos(rs.getInt(7));
                    viaje.setCostototal(rs.getDouble(8));

                }
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return viaje;
    }
}
