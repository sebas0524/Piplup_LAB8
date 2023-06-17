package com.example.lab08.models.daos.estudiante;

import com.example.lab08.models.beans.estudiante.Estudiante;
import com.example.lab08.models.daos.DaoBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CrearEstudianteDao extends DaoBase {

    public void guardarEstudiante(Estudiante estudiante) {



        String sql = "INSERT INTO estudiante(nombre,apellido,edad,codigopucp,correopucp,especialidad,statusestudiante,contrasenhahash) VALUES (?,?,?,?,?,?,?,SHA2(?,256));";

        try (Connection conn = this.getConnection();

             PreparedStatement pstmt = conn.prepareStatement(sql)){

            pstmt.setString(1,estudiante.getNombre());
            pstmt.setString(2,estudiante.getApellido());
            pstmt.setInt(3,estudiante.getEdad());
            pstmt.setInt(4,estudiante.getCodigopucp());
            pstmt.setString(5,estudiante.getCorreopucp());
            pstmt.setString(6,estudiante.getEspecialidad());
            pstmt.setString(7,estudiante.getStatus());
            pstmt.setString(8,estudiante.getContrasenha());

            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
