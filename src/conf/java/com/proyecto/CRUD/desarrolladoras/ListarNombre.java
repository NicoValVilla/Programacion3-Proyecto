package com.proyecto.CRUD.desarrolladoras;

import com.proyecto.controllador.conexion.Conectadb;
import com.proyecto.modelo.beans.Desarrolladoras;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ListarNombre {
    public ArrayList sad() {
        ArrayList<Desarrolladoras> ListaD = new ArrayList<>();
        try {
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();
            String query = "SELECT nombre FROM desarrolladoras LIMIT 8";
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Desarrolladoras des = new Desarrolladoras();
                des.setNombre(rs.getString("nombre"));
                ListaD.add(des);
            }
            con.cierraConexion();
        } catch (SQLException e) {
            e.getMessage();
        }
        return ListaD;
    }
}
