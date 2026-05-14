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
                                <th>Imagen</th>
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="tablaProductos">                       
                        </tbody>
                        </table>
                </div>
            </main>
        </div>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
        <script src="scripts/CarritoCompras.js"></script>
    </body>
</html>