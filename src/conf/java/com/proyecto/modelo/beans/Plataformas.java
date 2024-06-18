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
@Table(name = "plataformas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Plataformas.findAll", query = "SELECT p FROM Plataformas p")
    , @NamedQuery(name = "Plataformas.findByCodigo", query = "SELECT p FROM Plataformas p WHERE p.codigo = :codigo")
    , @NamedQuery(name = "Plataformas.findByNombre", query = "SELECT p FROM Plataformas p WHERE p.nombre = :nombre")})
public class Plataformas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column(name = "codigo")
    private String codigo;
    @Id
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(mappedBy = "plataformaNombre")
    private Collection<Juegos> juegosCollection;

    public Plataformas() {
    }

    public Plataformas(String nombre) {
        this.nombre = nombre;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nombre != null ? nombre.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Plataformas)) {
            return false;
        }
        Plataformas other = (Plataformas) object;
        if ((this.nombre == null && other.nombre != null) || (this.nombre != null && !this.nombre.equals(other.nombre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.Plataformas[ nombre=" + nombre + " ]";
    }
    
}
