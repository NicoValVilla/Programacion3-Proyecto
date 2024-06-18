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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class ActualizarCompra extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
           
        String id = request.getParameter("idtable");
        String fecha = request.getParameter("fecha");
        String cantidad = request.getParameter("cantidad");
        String usuario = request.getParameter("usuario");
        String juegos = request.getParameter("juego");
        String pago = request.getParameter("pago");
        String estado = request.getParameter("estado");
        String precio = request.getParameter("precio");
        String descripcion = request.getParameter("descripcion");
        
            try{
            Conectadb con = new Conectadb();
            Connection c = con.conectar();
            Statement stm = c.createStatement();
            String update = "UPDATE compras SET fecha = '"+ fecha +"'," + "cantidad = '" + cantidad + "', " + "usuarios_id = '" + usuario + "'," + "juegos_id = '" + juegos + "' ," + "metodo_pago = '" + pago + "', " + "estado = '" + estado + "', " + "precio = '" + precio + "', " + "descripcion = '" + descripcion + "' " + "WHERE id = '" + 1 + "';";
            stm.executeUpdate(update);
            System.out.println(update);
            
            stm.close();
            c.close();
            System.out.println("Actualizo");
        } catch(SQLException e) {
            e.printStackTrace();
        }
        
        response.sendRedirect("ListarCompra");
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
