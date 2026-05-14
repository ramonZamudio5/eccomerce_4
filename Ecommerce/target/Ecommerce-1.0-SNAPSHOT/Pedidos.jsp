<%-- 
    Document   : Pedidos
    Created on : 24 mar 2026, 14:28:30
    Author     : ramonsebastianzamudioayala
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Historial de Pedidos</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
        <div class="contenido-flex">
            <%@include  file="/WEB-INF/fragmentos/aside.jspf"%>
            <main class="main-historial">
                <div class="top-contenedor">
                    <a href="./Index.jsp">
                        <img src="./imgs/back.png" alt="">
                    </a>
                    <h1>Historial de pedidos</h1>
                </div>
                <table class="tabla-historial">
                    <thead>
                        <tr>
                            <th>#Pedido</th>
                            <th>Fecha de Compra</th>
                            <th>Total Pagado</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody id="tablaPedidos">
                    </tbody>
                </table>
                <p id="mensaje"></p>
                <a href="./Index.jsp"
                   class="btn-volver-inicio">
                    Volver al Inicio
                </a>
            </main>
        </div>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
        <script src="${pageContext.request.contextPath}/scripts/PedidosUsuario.js"></script>
    </body>
</html>