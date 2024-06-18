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
@Table(name = "desarrolladoras")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Desarrolladoras.findAll", query = "SELECT d FROM Desarrolladoras d")
    , @NamedQuery(name = "Desarrolladoras.findByCodigo", query = "SELECT d FROM Desarrolladoras d WHERE d.codigo = :codigo")
    , @NamedQuery(name = "Desarrolladoras.findByNombre", query = "SELECT d FROM Desarrolladoras d WHERE d.nombre = :nombre")
    , @NamedQuery(name = "Desarrolladoras.findByCorreo", query = "SELECT d FROM Desarrolladoras d WHERE d.correo = :correo")
    , @NamedQuery(name = "Desarrolladoras.findByTelefono", query = "SELECT d FROM Desarrolladoras d WHERE d.telefono = :telefono")})
public class Desarrolladoras implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column(name = "codigo")
    private String codigo;
    @Id
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "correo")
    private String correo;
    @Column(name = "telefono")
    private String telefono;
    @OneToMany(mappedBy = "desarrolladoraNombre")
    private Collection<Juegos> juegosCollection;

    public Desarrolladoras() {
    }

    public Desarrolladoras(String nombre) {
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

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
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
        if (!(object instanceof Desarrolladoras)) {
            return false;
        }
        Desarrolladoras other = (Desarrolladoras) object;
        if ((this.nombre == null && other.nombre != null) || (this.nombre != null && !this.nombre.equals(other.nombre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.Desarrolladoras[ nombre=" + nombre + " ]";
    }
    
}
