package com.example.lab08.models.daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public abstract class DaoBase {
        public Connection getConnection() throws SQLException {
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException ex){
                ex.printStackTrace();
            }
            String url = "jdbc:mysql://localhost:3306/lab08";
            String user = "root";
            String pass = "root";

            return DriverManager.getConnection(url,user,pass);
        }
}


