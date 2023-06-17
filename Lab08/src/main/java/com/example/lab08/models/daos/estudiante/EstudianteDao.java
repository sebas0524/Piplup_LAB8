package com.example.lab08.models.daos.estudiante;

import com.example.lab08.models.beans.estudiante.Estudiante;
import com.example.lab08.models.daos.DaoBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EstudianteDao extends DaoBase {

    public Estudiante obtenerEstudiante(int idEstudiante){

        Estudiante estudiante = null;

        String sql = "select * from estudiante e\n" +
                "left join viaje v ON e.idestudiante = v.estudiante_idestudiante\n" +
                "left join empresaseguro es ON v.empresaSeguro_idempresaSeguro = es.idempresaSeguro\n" +
                "where e.idestudiante = ?;";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, idEstudiante);

            try (ResultSet rs = pstmt.executeQuery()) {

                if (rs.next()) {
                    estudiante = new Estudiante();
                    fetchEstudianteData(estudiante,rs);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return estudiante;
    }

    private void fetchEstudianteData(Estudiante estudiante, ResultSet rs) throws SQLException {

        estudiante.setIdEstudiante(rs.getInt(1));
        estudiante.setNombre(rs.getString(2));
        estudiante.setApellido(rs.getString(3));
        estudiante.setEdad(rs.getInt(4));
        estudiante.setCodigopucp(rs.getInt(5));
        estudiante.setCorreopucp(rs.getString(6));
        estudiante.setEspecialidad(rs.getString(7));
        estudiante.setStatus(rs.getString(8));
        estudiante.setContrasenhahash(rs.getString(9));

    }

    public Estudiante validarUsuarioPassword(String username, String password){

        Estudiante estudiante = null;


        String sql = "select * from estudiante where correopucp = ? and contrasenhahash = SHA2(?,256)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1,username);
            pstmt.setString(2,password);

            try (ResultSet rs = pstmt.executeQuery();){
                if(rs.next()){
                    int idEstudiante = rs.getInt(1);
                    estudiante = this.obtenerEstudiante(idEstudiante);
                }
            }

        }catch (SQLException ex){
            ex.printStackTrace();
        }


        return estudiante;
    }
}
