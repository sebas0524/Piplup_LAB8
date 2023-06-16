package com.example.lab08.models.beans.viaje;

import com.example.lab08.models.beans.estudiante.Estudiante;

import java.sql.Date;

public class Viaje {

    private int idviaje;
    private Date fechareserva;
    private Date fechaviaje;
    private String ciudadorigen;
    private String ciudaddestino;
    private  int numboletos;
    private double costototal;
    private double costoboleto;
    private Estudiante estudiante;
    private EmpresaSeguro empresa;


    public EmpresaSeguro getEmpresa() {
        return empresa;
    }

    public void setEmpresa(EmpresaSeguro empresa) {
        this.empresa = empresa;
    }

    public int getIdviaje() {
        return idviaje;
    }

    public void setIdviaje(int idviaje) {
        this.idviaje = idviaje;
    }

    public Date getFechareserva() {
        return fechareserva;
    }

    public void setFechareserva(Date fechareserva) {
        this.fechareserva = fechareserva;
    }

    public Date getFechaviaje() {
        return fechaviaje;
    }

    public void setFechaviaje(Date fechaviaje) {
        this.fechaviaje = fechaviaje;
    }

    public String getCiudadorigen() {
        return ciudadorigen;
    }

    public void setCiudadorigen(String ciudadorigen) {
        this.ciudadorigen = ciudadorigen;
    }

    public String getCiudaddestino() {
        return ciudaddestino;
    }

    public void setCiudaddestino(String ciudaddestino) {
        this.ciudaddestino = ciudaddestino;
    }

    public int getNumboletos() {
        return numboletos;
    }

    public void setNumboletos(int numboletos) {
        this.numboletos = numboletos;
    }

    public double getCostototal() {
        return costototal;
    }

    public void setCostototal(double costototal) {
        this.costototal = costototal;
    }

    public double getCostoboleto() {
        return costoboleto;
    }

    public void setCostoboleto(double costoboleto) {
        this.costoboleto = costoboleto;
    }

    public Estudiante getEstudiante() {
        return estudiante;
    }

    public void setEstudiante(Estudiante estudiante) {
        this.estudiante = estudiante;
    }

}
