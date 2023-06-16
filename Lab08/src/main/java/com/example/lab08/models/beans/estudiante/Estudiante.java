package com.example.lab08.models.beans.estudiante;

public class Estudiante {
    private int idEstudiante;

    private String nombre;
    private String apellido;
    private int edad;
    private int codigopucp;
    private String correopucp;
    private String especialidad;
    private String Contrasenha;
    private String status;
    private String contrasenhahash;


    public int getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(int idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getCodigopucp() {
        return codigopucp;
    }

    public void setCodigopucp(int codigopucp) {
        this.codigopucp = codigopucp;
    }

    public String getCorreopucp() {
        return correopucp;
    }

    public void setCorreopucp(String correopucp) {
        this.correopucp = correopucp;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getContrasenhahash() {
        return contrasenhahash;
    }

    public void setContrasenhahash(String contrasenhahash) {
        this.contrasenhahash = contrasenhahash;
    }

    public String getContrasenha() {
        return Contrasenha;
    }

    public void setContrasenha(String contrasenha) {
        Contrasenha = contrasenha;
    }
}
