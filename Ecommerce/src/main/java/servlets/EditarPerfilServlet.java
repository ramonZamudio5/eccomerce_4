
package servlets;

import bos.UsuariosBO;
import dtos.UsuarioDTO;
import interfaces.IUsuariosBO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author ramonsebastianzamudioayala
 */
@WebServlet(name = "EditarPerfilServlet", urlPatterns = {"/EditarPerfilServlet"})
public class EditarPerfilServlet extends HttpServlet {
    IUsuariosBO bo = new UsuariosBO();
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
            out.println("<title>Servlet EditarPerfilServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarPerfilServlet at " + request.getContextPath() + "</h1>");
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

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();

        try {

            HttpSession session = request.getSession(false);

            if (session == null || session.getAttribute("usuarioActual") == null) {

                out.print(
                    "{"
                    + "\"success\": false,"
                    + "\"message\": \"No hay sesión activa\""
                    + "}"
                );

                return;
            }

            UsuarioDTO usuarioSesion =
                    (UsuarioDTO) session.getAttribute("usuarioActual");

            String nombre = request.getParameter("nombre");
            String telefono = request.getParameter("telefono");
            String correo = request.getParameter("correo");
            String direccion = request.getParameter("direccion");

            usuarioSesion.setNombre(nombre);
            usuarioSesion.setTelefono(telefono);
            usuarioSesion.setCorreo(correo);
            usuarioSesion.setDireccion(direccion);

            UsuarioDTO usuarioActualizado =
                    bo.editarUsuario(usuarioSesion);

            session.setAttribute("usuarioActual", usuarioActualizado);

           out.print(
                "{"
                + "\"success\": true,"
                + "\"message\": \"Perfil actualizado correctamente\""
                + "}"
            );

        } catch (Exception e) {

            e.printStackTrace();

            out.print(
                "{"
                + "\"success\": false,"
                + "\"message\": \"Error al actualizar perfil\""
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
