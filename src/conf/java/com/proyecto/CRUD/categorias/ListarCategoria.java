package com.proyecto.CRUD.categorias;

import com.proyecto.controllador.conexion.Conectadb;
import com.proyecto.modelo.beans.Categorias;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/**
 *
 * @author PC
 */
public class ListarCategoria {
     public ArrayList ListarCat() {
     ArrayList<Categorias> ListaC = new ArrayList<>();
     try {
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();
            String query = "SELECT nombre FROM categorias LIMIT 8";
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Categorias Categorias = new Categorias();
                Categorias.setNombre(rs.getString("nombre"));
                ListaC.add(Categorias);
            }
            con.cierraConexion();
        } catch (SQLException e) {
            e.getMessage();
        }
        return ListaC;
    } 
}
