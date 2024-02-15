package com.app.hospital.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import java.util.Date;

@Entity
public class Hospital {
    @Id
    @Column(name = "idhospital")
    public int idHospital;
    @Column(name = "iddistrito")
    public int idDistrito;
    public String nombre;
    public int antiguedad;
    public double area;
    @Column(name = "idsede")
    public int idSede;
    @Column(name = "idgerente")
    public int idGerente;
    @Column(name = "idcondicion")
    public int idCondicion;
    @Column(name = "fecharegistro")
    public Date fechaRegistro;

    public int getIdHospital() {
        return idHospital;
    }

    public void setIdHospital(int idHospital) {
        this.idHospital = idHospital;
    }

    public int getIdDistrito() {
        return idDistrito;
    }

    public void setIdDistrito(int idDistrito) {
        this.idDistrito = idDistrito;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getAntiguedad() {
        return antiguedad;
    }

    public void setAntiguedad(int antiguedad) {
        this.antiguedad = antiguedad;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public int getIdSede() {
        return idSede;
    }

    public void setIdSede(int idSede) {
        this.idSede = idSede;
    }

    public int getIdGerente() {
        return idGerente;
    }

    public void setIdGerente(int idGerente) {
        this.idGerente = idGerente;
    }

    public int getIdCondicion() {
        return idCondicion;
    }

    public void setIdCondicion(int idCondicion) {
        this.idCondicion = idCondicion;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public Hospital(int idHospital, int idDistrito, String nombre, int antiguedad, double area, int idSede, int idGerente, int idCondicion, Date fechaRegistro) {
        this.idHospital = idHospital;
        this.idDistrito = idDistrito;
        this.nombre = nombre;
        this.antiguedad = antiguedad;
        this.area = area;
        this.idSede = idSede;
        this.idGerente = idGerente;
        this.idCondicion = idCondicion;
        this.fechaRegistro = fechaRegistro;
    }
    public Hospital(){}
}
