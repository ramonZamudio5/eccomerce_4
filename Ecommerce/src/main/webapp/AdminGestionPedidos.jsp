<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 1. Agregamos JSTL --%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Gestión de Pedidos</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <%@include file="/WEB-INF/fragmentos/header.jspf"%>
    <div class="contenido-flex">
        <%@include file="/WEB-INF/fragmentos/aside.jspf"%>
        <main class="main-index">
            <div class="top-contenedor">
                <a href="AdminPrincipal.jsp"><img src="./imgs/back.png" alt="Atras"></a>
                <h1>Gestión de pedidos</h1>
            </div>
            <div class="tblContenedor">
                <table class="tblOrdenarTabla">
                    <thead>
                        <tr>
                            <th>ID Pedido</th>
                            <th>Correo del cliente</th>
                            <th>Estado actual</th>
                            <th>Cambiar estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listaPedidos}" var="pedido">
                            <tr>
                                <td>#${pedido.id}</td>
                                
                                <td>${pedido.usuario.correo}</td>
                                
                                <td>
                                    <c:choose>
                                        <c:when test="${pedido.estado == 'PENDIENTE'}">
                                            <span class="estatusPendiente">Pendiente</span>
                                        </c:when>
                                        <c:when test="${pedido.estado == 'ENVIADO'}">
                                            <span class="estatusEnviado">Enviado</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="estatusEntregado">Entregado</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                
                                <td>
                                    <div class="botonesAccion">
                                        <form action="modificar_pedido" method="POST" style="margin: 0; display: flex; gap: 5px;">
                                            <input type="hidden" name="idPedido" value="${pedido.id}">
                                            
                                            <button type="submit" name="estado-pedido" value="PENDIENTE" class="btnEstado btnPendiente">Pendiente</button>
                                            <button type="submit" name="estado-pedido" value="ENVIADO" class="btnEstado btnEnviado">Enviado</button>
                                            <button type="submit" name="estado-pedido" value="ENTREGADO" class="btnEstado btnEntregado">Entregado</button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        
                        <c:if test="${empty listaPedidos}">
                            <tr>
                                <td colspan="4" style="text-align: center;">No hay pedidos registrados actualmente.</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
    <%@include file="/WEB-INF/fragmentos/footer.jspf"%>
</body>

</html>