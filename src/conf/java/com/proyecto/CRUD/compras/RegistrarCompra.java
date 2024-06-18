/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.CRUD.compras;

import com.proyecto.controllador.conexion.Conectadb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class RegistrarCompra extends HttpServlet {

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

        String fecha = request.getParameter("Fecha");
        String cantidad = request.getParameter("Cantidad");
        String usuario = request.getParameter("Usuario");
        String juego = request.getParameter("Juego");
        String metodo_pago = request.getParameter("metodo_pago");
        String estado = request.getParameter("Estado");
        String precio = request.getParameter("Precio");
        String descripcion = request.getParameter("Descripcion");
        try {
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();

            String query = "insert into compras (fecha,cantidad,usuarios_nombre,juegos_nombre,metodo_pago,estado,precio,descripcion) values ('" + fecha + "','" + cantidad + "','" + usuario + "','" + juego + "','" + metodo_pago + "','" + estado + "','" + precio + "','" + descripcion + "');";
            stm.executeUpdate(query);
            System.out.println("inserto");

            stm.close();
            c.close();

            RequestDispatcher rd = request.getRequestDispatcher("ListarCompra");
            rd.forward(request, response);
        } catch (SQLException e) {

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
