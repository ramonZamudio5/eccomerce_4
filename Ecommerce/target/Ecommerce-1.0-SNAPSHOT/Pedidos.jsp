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
            <div class = "top-contenedor">
                <a href="./index.html"><img src="./imgs/back.png" alt=""></a>
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
                <tbody>
                    <tr>
                        <td>#458921</td>
                        <td>06/03/2026</td>
                        <td>$1,091</td>
                        <td>Pendiente</td>
                    </tr>
                    <tr>
                        <td>#458615</td>
                        <td>02/03/2026</td>
                        <td>$699</td>
                        <td>Entregado</td>
                    </tr>
                    <tr>
                        <td>#458200</td>
                        <td>28/03/2026</td>
                        <td>$392</td>
                        <td>Entregado</td>
                    </tr>
                    <tr>
                        <td>#457980</td>
                        <td>20/03/2026</td>
                        <td>$1,450</td>
                        <td>Entregado</td>
                    </tr>
                </tbody>
            </table>

            <a href="./index.html" class="btn-volver-inicio">Volver al Inicio</a>
        </main>
    </div>

    <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
</body>
</html>
