<%-- 
    Document   : Catalogo
    Created on : 24 mar 2026, 14:26:46
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Ecommerce web</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
        <div class = "contenido-flex">
            <%@include  file="/WEB-INF/fragmentos/aside-filtro.jspf"%>
            <main class ="main-index">
                <div class = "top-contenedor">
                    <a href="./Index.jsp"><img src="./imgs/back.png" alt=""></a>
                    <h1>Catalogo de productos</h1>
                </div>
                <div class = "catalogo-wrap">
                    <table class="tabla-productos">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="tablaProductos">
<!--                        <tr>
                               <td><strong>Smartphone X</strong></td> 
                                <td>$899.00</td>
                                <td class="celda-acciones">
                                    <div class="contenedor-botones">
                                        <a href="DetallesProducto.jsp" class="btn-estilo btn-detalles">Detalles</a>
                                        <a href="Carrito.jsp" class="btn-estilo btn-carrito">Añadir al carrito</a>
                                        <a href="CrearResenia.jsp" class="btn-estilo btn-resena">Reseña </a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>Laptop ZenBook 14</strong></td>
                                <td>$1,150.00</td>
                                <td class="celda-acciones">
                                    <div class="contenedor-botones">
                                        <a href="DetallesProducto.jsp" class="btn-estilo btn-detalles">Detalles</a>
                                        <a href="Carrito.jsp?id=102" class="btn-estilo btn-carrito">Añadir al carrito</a>
                                        <a href="CrearResenia.jsp" class="btn-estilo btn-resena">Reseña</a>
                                    </div>
                                </td>
                            </tr>
               --> 
                        </tbody>
                        </table>
                </div>
            </main>
        </div>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
        <script src="scripts/CarritoCompras.js"></script>
    </body>
</html>