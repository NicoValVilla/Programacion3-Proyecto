/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.modelo.beans;

import java.sql.Date;


public class Compras {

    public Integer id;
    private Date fecha;
    private String cantidad;
    private String metodoPago;
    private String estado;
    private Float precio;
    private String descripcion;
    private String usuariosNombre;
    private String juegosNombre;


    public Compras() {
    }

    public Compras(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(String metodoPago) {
        this.metodoPago = metodoPago;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Float getPrecio() {
        return precio;
    }

    public void setPrecio(Float precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUsuariosNombre() {
        return usuariosNombre;
    }

    public void setUsuariosNombre(String usuariosNombre) {
        this.usuariosNombre = usuariosNombre;
    }

    public String getJuegosNombre() {
        return juegosNombre;
    }

    public void setJuegosNombre(String juegosNombre) {
        this.juegosNombre = juegosNombre;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Compras)) {
            return false;
        }
        Compras other = (Compras) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.Compras[ id=" + id + " ]";
    }
    
}
