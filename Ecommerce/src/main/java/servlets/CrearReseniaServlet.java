/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import bos.ProductoBO;
import bos.ReseniasBO;
import dtos.ProductoDTO;
import dtos.ReseñaDTO;
import dtos.UsuarioDTO;
import exception.ReseniaException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Date;

/**
 *
 * @author ramonsebastianzamudioayala
 */
@WebServlet(name = "CrearReseniaServlet", urlPatterns = {"/crearResenia"})
public class CrearReseniaServlet extends HttpServlet {
    private final ReseniasBO reseniasBO = new ReseniasBO();
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CrearReseniaServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CrearReseniaServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            System.out.println("===== ENTRANDO A CREAR RESEÑA =====");

            String idString =
                    request.getParameter("idProducto");

            System.out.println("ID STRING: " + idString);

            if (idString == null) {

                System.out.println("EL ID VIENE NULL");

                response.sendRedirect("Catalogo.jsp");
                return;
            }

            Long idProducto = Long.parseLong(idString);

            System.out.println("ID CONVERTIDO: " + idProducto);

            ProductoBO productosBO = new ProductoBO();

            ProductoDTO producto =
                    productosBO.obtenerProductoPorId(idProducto);

            System.out.println("PRODUCTO OBTENIDO: " + producto);

            request.setAttribute("producto", producto);

            System.out.println("ATRIBUTO ENVIADO");

            request.getRequestDispatcher("/CrearResenia.jsp")
                    .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect("Catalogo.jsp");
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
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {

            HttpSession session = request.getSession(false);

            if (session == null
                    || session.getAttribute("usuarioActual") == null) {

                response.getWriter().write(
                        "{"
                        + "\"success\": false,"
                        + "\"message\": \"Debes iniciar sesión\""
                        + "}"
                );
                return;
            }

            UsuarioDTO usuario =
                    (UsuarioDTO) session.getAttribute("usuarioActual");

            Long idProducto = Long.parseLong(
                    request.getParameter("idProducto")
            );

            Integer estrellas = Integer.parseInt(
                    request.getParameter("estrellas")
            );

            String comentario =
                    request.getParameter("comentario");

            ReseñaDTO nuevaResenia = new ReseñaDTO();

            nuevaResenia.setComentario(comentario);
            nuevaResenia.setEstrellas(estrellas);
            nuevaResenia.setFecha(new Date());

            reseniasBO.agregarResenia(
                    idProducto,
                    usuario.getId(),
                    nuevaResenia
            );

            response.getWriter().write(
                    "{"
                    + "\"success\": true,"
                    + "\"message\": \"Reseña publicada correctamente\""
                    + "}"
            );

        } catch (ReseniaException e) {

            response.getWriter().write(
                    "{"
                    + "\"success\": false,"
                    + "\"message\": \"" + e.getMessage() + "\""
                    + "}"
            );

        } catch (Exception e) {

            response.getWriter().write(
                    "{"
                    + "\"success\": false,"
                    + "\"message\": \"Error al publicar reseña\""
                    + "}"
            );
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
