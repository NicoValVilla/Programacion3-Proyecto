/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.CRUD.compras;

import com.proyecto.controllador.conexion.Conectadb;
import com.proyecto.modelo.beans.Compras;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class ListarCompra extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<Compras> ListaC =  new ArrayList<>();
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();
            String query = "SELECT * FROM compras LIMIT 10";
            ResultSet rs = stm.executeQuery(query);

            while(rs.next()){
                Compras com = new Compras();
                com.setId(rs.getInt("id"));
                com.setFecha(rs.getDate("fecha"));
                com.setCantidad(rs.getString("cantidad"));
                com.setUsuariosNombre(rs.getString("usuarios_nombre"));
                com.setJuegosNombre(rs.getString("juegos_nombre"));
                com.setMetodoPago(rs.getString("metodo_pago"));
                com.setEstado(rs.getString("estado"));
                com.setPrecio(rs.getFloat("Precio"));
                com.setDescripcion(rs.getString("descripcion"));
                ListaC.add(com);
            }
            
            con.cierraConexion();
            request.setAttribute("ListaC",ListaC);
            
            RequestDispatcher rd = request.getRequestDispatcher("compras.jsp");
            rd.forward(request,response);
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
