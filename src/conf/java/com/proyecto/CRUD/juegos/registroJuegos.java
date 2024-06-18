/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyecto.CRUD.juegos;

import com.proyecto.controllador.conexion.Conectadb;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
/**
 *
 * @author PC
 */
public class registroJuegos extends HttpServlet {

    private static final String SAVE_DIR = "Estilos/Imagenes";

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
        
        String appPath = request.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + SAVE_DIR;

        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String valor = request.getParameter("valor");
        String desarrolladora = request.getParameter("desarrolladora");
        String plataforma = request.getParameter("plataforma");
        String categoria = request.getParameter("categoria");
        Part file = request.getPart("caratula");
        System.out.println("lok llega ");
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

            try {
                Conectadb con = new Conectadb();
                Connection c = con.conectar();
                PreparedStatement ps = c.prepareStatement("INSERT INTO juegos (nombre, descripcion, valor, desarrolladora_nombre, plataforma_nombre,categoria_nombre, imagen, nombreImagen) VALUES (?, ?, ?, ?, ?, ?, ?,?);");

                ps.setString(1, nombre);
                ps.setString(2, descripcion);
                ps.setString(3, valor);
                ps.setString(4, desarrolladora);
                ps.setString(5, plataforma);
                ps.setString(6, categoria);

                for (Part part : request.getParts()) {
                    String fileName = extractFileName(file);
                    // refines the fileName in case it is an absolute path
                    fileName = new File(fileName).getName();
                    part.write(savePath + File.separator + fileName);
                    String filePath = savePath + File.separator + fileName;
                    ps.setString(7, filePath);
                    ps.setString(8, fileName);
                }
                ps.executeUpdate();
                
                response.sendRedirect("listarJuegos");
            } catch (Exception slx) {
                System.out.println(slx);
                response.sendRedirect("inicioAdministrador.jsp");
            }
        

    }
    
    private String extractFileName(Part file) {
        String contentDisp = file.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("file")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }

        }
        return "";
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
