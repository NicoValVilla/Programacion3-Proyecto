/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.CRUD.juegos;

import com.proyecto.controllador.conexion.Conectadb;
import com.proyecto.modelo.beans.Juegos;
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
public class listarTienda extends HttpServlet {

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
            ArrayList<Juegos> ListaJT =  new ArrayList<>();
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();
            String query = "SELECT * FROM juegos";
            ResultSet rs = stm.executeQuery(query);

            while(rs.next()){
                Juegos jue = new Juegos();
                jue.setNombre(rs.getString("nombre"));
                jue.setDescripcion(rs.getString("descripcion"));
                jue.setValor(rs.getString("valor"));
                jue.setDesarrolladoraNombre(rs.getString("desarrolladora_nombre"));
                jue.setPlataformaNombre(rs.getString("plataforma_nombre"));
                jue.setCategoriaNombre(rs.getString("categoria_nombre"));
                jue.setImagen(rs.getString("imagen"));
                jue.setNombreImagen(rs.getString("nombreImagen"));
                ListaJT.add(jue);
            }
            
            con.cierraConexion();
            request.setAttribute("ListaJT",ListaJT);
            
            RequestDispatcher rd = request.getRequestDispatcher("tienda.jsp");
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
