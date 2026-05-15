<%-- 
    Document   : AdminUsuarios
    Created on : 24 mar 2026, 14:26:32
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Administrador de usuarios</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
    <div class="contenido-flex">
       <%@include  file="/WEB-INF/fragmentos/aside.jspf"%>
        <main class="main-index">
            <div class="top-contenedor">
                <a href="AdminPrincipal.jsp"><img src="./imgs/back.png"></a>
                <h1>Gestión de Usuarios</h1>
            </div>
            <div class="catalogo-wrap">
                <table class="tabla-productos tabla-admin-centrada">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="tablaUsuariosBody">
                    </tbody>
                </table>
            </div>
        </main>
    </div>
    <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
    <script src="${pageContext.request.contextPath}/scripts/AdminUsuarios.js"></script>
</body>

</html>
