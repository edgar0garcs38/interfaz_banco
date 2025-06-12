package com.edgar.interfazbanco.models;

import java.time.LocalDateTime;

public class Prestamo {

    private int idPrestamos;
    private int idUsuarios;
    private String tipoPrestamo;
    private double monto;
    private double interes;
    private LocalDateTime fechaInicio;
    private LocalDateTime fechaFin;
    private String estado;

    // Constructor vacío
    public Prestamo() {}

    // Constructor con todos los campos
    public Prestamo(int idPrestamos, int idUsuarios, String tipoPrestamo,
                    double monto, double interes,
                    LocalDateTime fechaInicio, LocalDateTime fechaFin, String estado) {
        this.idPrestamos = idPrestamos;
        this.idUsuarios = idUsuarios;
        this.tipoPrestamo = tipoPrestamo;
        this.monto = monto;
        this.interes = interes;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.estado = estado;
    }

    // Getters y Setters
    public int getIdPrestamos() {
        return idPrestamos;
    }

    public void setIdPrestamos(int idPrestamos) {
        this.idPrestamos = idPrestamos;
    }

    public int getIdUsuarios() {
        return idUsuarios;
    }

    public void setIdUsuarios(int idUsuarios) {
        this.idUsuarios = idUsuarios;
    }

    public String getTipoPrestamo() {
        return tipoPrestamo;
    }

    public void setTipoPrestamo(String tipoPrestamo) {
        this.tipoPrestamo = tipoPrestamo;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    public LocalDateTime getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(LocalDateTime fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public LocalDateTime getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(LocalDateTime fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}