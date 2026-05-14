/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import bos.PedidosBO;
import dtos.PedidoDTO;
import dtos.UsuarioDTO;
import interfaces.IPedidosBO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 *
 * @author ramonsebastianzamudioayala
 */
@WebServlet(name = "ConsultarPedidoServlet", urlPatterns = {"/consultarPedidoServlet"})
public class ConsultarPedidoServlet extends HttpServlet {
    private IPedidosBO pedidosBO = new PedidosBO();
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
            out.println("<title>Servlet ConsultarPedidoServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConsultarPedidoServlet at " + request.getContextPath() + "</h1>");
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

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {

            HttpSession session = request.getSession(false);

            if (session == null
                    || session.getAttribute("usuarioActual") == null) {

                response.getWriter().write(
                    "{"
                    + "\"success\": false,"
                    + "\"message\": \"No hay sesión activa\""
                    + "}"
                );

                return;
            }

            UsuarioDTO usuario =
                    (UsuarioDTO) session.getAttribute("usuarioActual");

            List<PedidoDTO> pedidos =
                    pedidosBO.obtenerPedidosPorUsuario(usuario.getId());

            StringBuilder json = new StringBuilder();

            json.append("{");
            json.append("\"success\": true,");
            json.append("\"pedidos\": [");

            SimpleDateFormat formato =
                    new SimpleDateFormat("dd/MM/yyyy");

            for (int i = 0; i < pedidos.size(); i++) {

                PedidoDTO pedido = pedidos.get(i);

                json.append("{");

                json.append("\"id\": ")
                        .append(pedido.getId())
                        .append(",");

                json.append("\"numeroPedido\": \"")
                        .append(pedido.getNumeroPedido())
                        .append("\",");

                json.append("\"estado\": \"")
                        .append(pedido.getEstado())
                        .append("\",");

                json.append("\"total\": ")
                        .append(pedido.getTotal())
                        .append(",");

                json.append("\"direccion\": \"")
                        .append(pedido.getDireccion())
                        .append("\",");

                json.append("\"fecha\": \"")
                        .append(formato.format(pedido.getFecha()))
                        .append("\",");

                json.append("\"metodoPago\": \"")
                        .append(pedido.getMetodoPago().getTipo())
                        .append("\"");

                json.append("}");

                if (i < pedidos.size() - 1) {
                    json.append(",");
                }
            }

            json.append("]");
            json.append("}");

            response.getWriter().write(json.toString());

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().write(
                "{"
                + "\"success\": false,"
                + "\"message\": \"Error al consultar pedidos\""
                + "}"
            );
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
