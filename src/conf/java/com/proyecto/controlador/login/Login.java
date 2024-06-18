/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.controlador.login;

import com.proyecto.controllador.conexion.Conectadb;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
public class Login extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            Conectadb c = new Conectadb();
            Connection con = c.conectar();

            PreparedStatement iniciar = con.prepareStatement("SELECT * from usuarios WHERE correo = ? AND contrasena = ? ;");
            iniciar.setString(1, request.getParameter("correo"));
            iniciar.setString(2, request.getParameter("contrasena"));
            System.out.println(iniciar);

            ResultSet rs = iniciar.executeQuery();

            if (rs.next()) {
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("nusuario", rs.getString(2));
                sesion.setAttribute("rusuario", rs.getString(4));

                String rol = rs.getString(4);

                if (rol.equals("1")) {
                    response.sendRedirect("inicioAdministrador.jsp");
                } else if (rol.equals("3")) {
                    response.sendRedirect("inicioCliente.jsp");
                }

            } else {
                response.sendRedirect("index.jsp");
            }
            iniciar.close();
            con.close();

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
