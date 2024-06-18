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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "permisos_crud")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PermisosCrud.findAll", query = "SELECT p FROM PermisosCrud p")
    , @NamedQuery(name = "PermisosCrud.findById", query = "SELECT p FROM PermisosCrud p WHERE p.id = :id")
    , @NamedQuery(name = "PermisosCrud.findByCrud", query = "SELECT p FROM PermisosCrud p WHERE p.crud = :crud")})
public class PermisosCrud implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "crud")
    private Integer crud;
    @OneToMany(mappedBy = "ventasCrud")
    private Collection<Permisos> permisosCollection;
    @OneToMany(mappedBy = "juegosCrud")
    private Collection<Permisos> permisosCollection1;
    @OneToMany(mappedBy = "auditoriaCrud")
    private Collection<Permisos> permisosCollection2;
    @OneToMany(mappedBy = "registrosCrud")
    private Collection<Permisos> permisosCollection3;

    public PermisosCrud() {
    }

    public PermisosCrud(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCrud() {
        return crud;
    }

    public void setCrud(Integer crud) {
        this.crud = crud;
    }

    @XmlTransient
    public Collection<Permisos> getPermisosCollection() {
        return permisosCollection;
    }

    public void setPermisosCollection(Collection<Permisos> permisosCollection) {
        this.permisosCollection = permisosCollection;
    }

    @XmlTransient
    public Collection<Permisos> getPermisosCollection1() {
        return permisosCollection1;
    }

    public void setPermisosCollection1(Collection<Permisos> permisosCollection1) {
        this.permisosCollection1 = permisosCollection1;
    }

    @XmlTransient
    public Collection<Permisos> getPermisosCollection2() {
        return permisosCollection2;
    }

    public void setPermisosCollection2(Collection<Permisos> permisosCollection2) {
        this.permisosCollection2 = permisosCollection2;
    }

    @XmlTransient
    public Collection<Permisos> getPermisosCollection3() {
        return permisosCollection3;
    }

    public void setPermisosCollection3(Collection<Permisos> permisosCollection3) {
        this.permisosCollection3 = permisosCollection3;
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
        if (!(object instanceof PermisosCrud)) {
            return false;
        }
        PermisosCrud other = (PermisosCrud) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.PermisosCrud[ id=" + id + " ]";
    }
    
}
