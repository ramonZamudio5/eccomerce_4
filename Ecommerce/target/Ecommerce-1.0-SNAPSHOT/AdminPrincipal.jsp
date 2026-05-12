<%-- 
    Document   : AdminPrincipal
    Created on : 24 mar 2026, 14:26:04
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Panel de administrador</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
    <div class="contenido-flex">
        <%@include  file="/WEB-INF/fragmentos/aside.jspf"%>
        <main class="main-index">
            <div class="top-contenedor">
                <h1>Panel de administracion</h1>
            </div>
            <div class="admin-grid-6">
                <a href="AdminUsuarios.jsp" class="admin-card"><img src="./imgs/users.png" alt=""><span>Gestion de suarios</span></a>
                <a href="cargarproducto?vista=adminProducto" class="admin-card"><img src="./imgs/Catalogo.png" alt=""><span>Catalogo de productos</span></a>
                <a href="AdminCrearProducto.jsp" class="admin-card"><img src="./imgs/crearP.png" alt=""><span>Crear producto</span></a>
                <a href="cargarpedidos" class="admin-card"><img src="./imgs/gestionar.png" alt=""><span>Gestion de pedidos</span></a>
                <a href="AdministrarResenias" class="admin-card"><img src="./imgs/gestionarR.png" alt=""><span>Gestion de reseñas</span></a>
            </div>
        </main>
    </div>
   <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
</body>

</html>
