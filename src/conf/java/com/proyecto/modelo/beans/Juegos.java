/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.modelo.beans;


/**
 *
 * @author PC
 */

public class Juegos  {

    public String nombre;
    public String descripcion;
    public String valor;
    public String imagen;
    public String nombreImagen;
    public String desarrolladoraNombre;
    public String plataformaNombre;
    public String categoriaNombre;
    

    public Juegos() {
    }

    public Juegos(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getNombreImagen() {
        return nombreImagen;
    }

    public void setNombreImagen(String nombreImagen) {
        this.nombreImagen = nombreImagen;
    }

    public String getDesarrolladoraNombre() {
        return desarrolladoraNombre;
    }

    public void setDesarrolladoraNombre(String desarrolladoraNombre) {
        this.desarrolladoraNombre = desarrolladoraNombre;
    }

    public String getPlataformaNombre() {
        return plataformaNombre;
    }

    public void setPlataformaNombre(String plataformaNombre) {
        this.plataformaNombre = plataformaNombre;
    }

    public String getCategoriaNombre() {
        return categoriaNombre;
    }

    public void setCategoriaNombre(String categoriaNombre) {
        this.categoriaNombre = categoriaNombre;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nombre != null ? nombre.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Juegos)) {
            return false;
        }
        Juegos other = (Juegos) object;
        if ((this.nombre == null && other.nombre != null) || (this.nombre != null && !this.nombre.equals(other.nombre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.Juegos[ nombre=" + nombre + " ]";
    }
    
}
