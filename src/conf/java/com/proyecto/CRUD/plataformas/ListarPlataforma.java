package com.proyecto.CRUD.plataformas;

import com.proyecto.controllador.conexion.Conectadb;
import com.proyecto.modelo.beans.Plataformas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ListarPlataforma {
    public ArrayList Listar() {
     ArrayList<Plataformas> ListaP = new ArrayList<>();
     try {
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();
            String query = "SELECT nombre FROM plataformas LIMIT 8";
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Plataformas Plataformas = new Plataformas();
                Plataformas.setNombre(rs.getString("nombre"));
                ListaP.add(Plataformas);
            }
            con.cierraConexion();
        } catch (SQLException e) {
            e.getMessage();
        }
        return ListaP;
    }
}
