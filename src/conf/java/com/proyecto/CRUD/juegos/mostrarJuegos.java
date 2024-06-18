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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class mostrarJuegos extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            ArrayList<Juegos> ListaJuegos = new ArrayList<>();
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            PreparedStatement pst = c.prepareStatement("SELECT * FROM juegos;");
            ResultSet rs = pst.executeQuery();
            System.out.println("dio hasta aqui");
            while (rs.next()) {
                Juegos juegos = new Juegos();
                juegos.setNombre(rs.getString("nombre"));
                juegos.setDescripcion(rs.getString("descripcion"));
                juegos.setValor(rs.getString("valor"));
                juegos.setDesarrolladoraNombre(rs.getString("desarrolladora"));
                juegos.setCategoriaNombre(rs.getString("categoria"));
                System.out.println("hi1213");
                ListaJuegos.add(juegos);
            }
            con.cierraConexion();
            request.setAttribute("ListaJuegos", ListaJuegos);
            rs.close();
            pst.close();
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(mostrarJuegos.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(mostrarJuegos.class.getName()).log(Level.SEVERE, null, ex);
        }
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
