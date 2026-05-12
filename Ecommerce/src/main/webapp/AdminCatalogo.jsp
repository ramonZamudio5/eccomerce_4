<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- No olvides importar JSTL --%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Administrador de catálogo</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <%@include file="/WEB-INF/fragmentos/header.jspf"%>
    <div class="contenido-flex">
        <%@include file="/WEB-INF/fragmentos/aside.jspf"%>
        <main class="main-index">
            <div class="top-contenedor">
                <a href="AdminPrincipal.jsp"><img src="./imgs/back.png" alt="Atrás"></a>
                <h1>Catálogo de Productos</h1>
                
                <a href="AgregarProducto" class="btn-estilo btn-azul-admin">Crear producto</a>
            </div>
            
            <table class="tabla-productos tabla-admin-centrada">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listaProductos}" var="prod">
                        <tr>
                            <td>${prod.nombre}</td>
                            <td>$${prod.precio}</td>
                            <td class="contenedor-botones" style="display: flex; gap: 10px; justify-content: center;">
                                
                                <a href="EditarProducto?id=${prod.id}" class="btn-estilo btn-azul-admin">Editar</a>
                                
                                <form action="borrarproducto" method="POST" style="margin: 0;">
                                    <input type="hidden" name="idProducto" value="${prod.id}">
                                    <button type="submit" class="btn-estilo btn-rojo-admin" 
                                            onclick="return confirm('¿Seguro que deseas eliminar ${prod.nombre}?');">
                                        Eliminar
                                    </button>
                                </form>
                                
                            </td>
                        </tr>
                    </c:forEach>
                    
                    <c:if test="${empty listaProductos}">
                        <tr><td colspan="3">No hay productos en el catálogo.</td></tr>
                    </c:if>
                </tbody>
            </table>
        </main>
    </div>
    <%@include file="/WEB-INF/fragmentos/footer.jspf"%>
</body>
</html>