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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "permisos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Permisos.findAll", query = "SELECT p FROM Permisos p")
    , @NamedQuery(name = "Permisos.findById", query = "SELECT p FROM Permisos p WHERE p.id = :id")})
public class Permisos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @OneToMany(mappedBy = "permisosId")
    private Collection<Roles> rolesCollection;
    @JoinColumn(name = "ventas_crud", referencedColumnName = "id")
    @ManyToOne
    private PermisosCrud ventasCrud;
    @JoinColumn(name = "juegos_crud", referencedColumnName = "id")
    @ManyToOne
    private PermisosCrud juegosCrud;
    @JoinColumn(name = "auditoria_crud", referencedColumnName = "id")
    @ManyToOne
    private PermisosCrud auditoriaCrud;
    @JoinColumn(name = "registros_crud", referencedColumnName = "id")
    @ManyToOne
    private PermisosCrud registrosCrud;

    public Permisos() {
    }

    public Permisos(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @XmlTransient
    public Collection<Roles> getRolesCollection() {
        return rolesCollection;
    }

    public void setRolesCollection(Collection<Roles> rolesCollection) {
        this.rolesCollection = rolesCollection;
    }

    public PermisosCrud getVentasCrud() {
        return ventasCrud;
    }

    public void setVentasCrud(PermisosCrud ventasCrud) {
        this.ventasCrud = ventasCrud;
    }

    public PermisosCrud getJuegosCrud() {
        return juegosCrud;
    }

    public void setJuegosCrud(PermisosCrud juegosCrud) {
        this.juegosCrud = juegosCrud;
    }

    public PermisosCrud getAuditoriaCrud() {
        return auditoriaCrud;
    }

    public void setAuditoriaCrud(PermisosCrud auditoriaCrud) {
        this.auditoriaCrud = auditoriaCrud;
    }

    public PermisosCrud getRegistrosCrud() {
        return registrosCrud;
    }

    public void setRegistrosCrud(PermisosCrud registrosCrud) {
        this.registrosCrud = registrosCrud;
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
        if (!(object instanceof Permisos)) {
            return false;
        }
        Permisos other = (Permisos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.proyecto.modelo.beans.Permisos[ id=" + id + " ]";
    }
    
}
