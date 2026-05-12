<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- IMPORTANTE: Usar la URI de Jakarta que ya configuramos --%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Gestión de Reseñas</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%@include file="/WEB-INF/fragmentos/header.jspf"%>
        <div class="contenido-flex">
            <%@include file="/WEB-INF/fragmentos/aside.jspf"%>
            <main class="main-index">
                <div class="top-contenedor">
                    <%-- Corregido a .jsp --%>
                    <a href="AdminPrincipal.jsp"><img src="./imgs/back.png"></a>
                    <h1>Gestionar reseñas</h1>
                </div>
                <div class="tblContenedor">
                    <table class="tblOrdenarTabla">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Producto</th>
                                <th>Calificación</th>
                                <th>Comentario</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listaResenias}" var="resenia">
                                <tr>
                                    <td>${resenia.usuario.nombre}</td>
                                    <td>${nombresProductos[resenia.idProducto]}</td>
                                    <td>${resenia.estrellas}/5</td>
                                    <td>
                                        ${resenia.comentario} <br> 
                                        <span class="fechaComentario">Fecha: ${resenia.fecha}</span>
                                    </td>
                                    <td>
                                        <div class="botonesAccion">
                                            <form action="eliminarResenia" method="GET">
                                                <input type="hidden" name="id" value="${resenia.id}">
                                                <button type="submit" class="btnEstado btnEliminarResenas");">
                                                    Eliminar
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${empty listaResenias}">
                                <tr>
                                    <td colspan="5" style="text-align: center;">No hay reseñas para mostrar.</td>
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