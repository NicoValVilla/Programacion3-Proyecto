/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.modelo.beans;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author PC
 */
@Entity
@Table(name = "categorias")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Categorias.findAll", query = "SELECT c FROM Categorias c")
    , @NamedQuery(name = "Categorias.findByCodigo", query = "SELECT c FROM Categorias c WHERE c.codigo = :codigo")
    , @NamedQuery(name = "Categorias.findByNombre", query = "SELECT c FROM Categorias c WHERE c.nombre = :nombre")})
public class Categorias implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "codigo")
    private String codigo;
    @Id
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(mappedBy = "categoriaNombre")
    private Collection<Juegos> juegosCollection;
    @OneToMany(mappedBy = "categoriaNombre")
    private Collection<JuegosCategorias> juegosCategoriasCollection;

    public Categorias() {
    }

    public Categorias(String nombre) {
        this.nombre = nombre;
    }

    public Categorias(String nombre, String codigo) {
        this.nombre = nombre;
        this.codigo = codigo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @XmlTransient
    public Collection<Juegos> getJuegosCollection() {
        return juegosCollection;
    }

    public void setJuegosCollection(Collection<Juegos> juegosCollection) {
        this.juegosCollection = juegosCollection;
    }

    @XmlTransient
    public Collection<JuegosCategorias> getJuegosCategoriasCollection() {
        return juegosCategoriasCollection;
    }

    public void setJuegosCategoriasCollection(Collection<JuegosCategorias> juegosCategoriasCollection) {
        this.juegosCategoriasCollection = juegosCategoriasCollection;
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
        if (!(object instanceof Categorias)) {
            return false;
        }
        Categorias other = (Categorias) object;
        if ((this.nombre == null && other.nombre != null) || (this.nombre != null && !this.nombre.equals(other.nombre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.Categorias[ nombre=" + nombre + " ]";
    }
    
}
