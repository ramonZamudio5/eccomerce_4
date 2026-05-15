/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import bos.CarritosBO;
import bos.ProductoBO;
import com.google.gson.Gson;
import dtos.ProductoDTO;
import exception.CarritoException;
import exception.ObtenerProductosException;
import interfaces.ICarritosBO;
import interfaces.IProductosBO;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import util.JWTUtil;

/**
 *
 * @author 
 */
@WebServlet(name = "CargarProducto", urlPatterns = {"/cargarproducto"})
public class CargarProducto extends HttpServlet {

    IProductosBO productosBO = new ProductoBO();
    ICarritosBO carritoBO = new CarritosBO();

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
            out.println("<title>Servlet CargarProducto</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CargarProducto at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        try {
//            String vista = request.getParameter("vista");
//            System.out.println("Vista: " + vista);
            String idString = request.getParameter("id");
        if(idString != null){
            Long id = Long.parseLong(idString);
            ProductoDTO p = productosBO.obtenerProductoPorId(id);
            String json = new Gson().toJson(p);
            response.getWriter().write(json);
        }else{
            List<ProductoDTO> productos = productosBO.obtenerProductos();
//            request.setAttribute("listaProductos", productos);
            String productosJson = new Gson().toJson(productos); // Conversion de objetos a json
            response.getWriter().write(productosJson);
        }
//            if ("adminProducto".equals(vista)) {
//                request.getRequestDispatcher("/AdminCatalogo.jsp").forward(request, response);
//            }
            
        } catch (ObtenerProductosException ex) {
//            request.setAttribute("mensaje", "Error: " + ex.getMessage());
//            request.getRequestDispatcher("/error.jsp").forward(request, response);
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Error : " + ex.getMessage());
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
        //Metodo para agregar producto al carrito de compras
        try{
            //Sacamos el id del usuario a la fuerza del token
            //hay muchos problemas con los 2 filtros y quedaba sin acceso a muchas paginas
            String authHeader = request.getHeader("Authorization");
        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            response.setStatus(401);
            return;
        }
        String token = authHeader.substring(7);

            Claims claims = Jwts.parserBuilder()
                    .setSigningKey(JWTUtil.getSecretKey())
                    .build()
                    .parseClaimsJws(token)
                    .getBody();
        
            Long idUsuario = Long.valueOf(claims.get("idUsuario").toString());
            System.out.println("ID de usuario que llega a servlet: " + idUsuario);
            Long idProducto =  Long.parseLong(request.getParameter("id"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));

            carritoBO.agregarProducto(idUsuario, idProducto, cantidad);
            response.setStatus(HttpServletResponse.SC_OK);
            
        }catch (NumberFormatException e) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Error: El ID o la cantidad no son números validos.");
        }    
        catch(CarritoException e){
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Error : " + e.getMessage());
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
