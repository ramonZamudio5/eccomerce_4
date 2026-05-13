<%-- 
    Document   : PerfilUsuarios
    Created on : 24 mar 2026, 14:28:56
    Author     : ramonsebastianzamudioayala
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Perfil de Usuario</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%@include file="/WEB-INF/fragmentos/header.jspf"%>
        <div class="contenido-flex">
            <%@include file="/WEB-INF/fragmentos/aside.jspf"%>
            <main class="main-index">
                <div class="top-contenedor">
                    <a href="./Index.jsp">
                        <img src="./imgs/back.png" alt="">
                    </a>
                    <h1 id="tituloBienvenida">
                        Bienvenido ${sessionScope.usuarioActual.nombre}
                    </h1>
                    <img src="./imgs/user.png"
                         alt=""
                         class="perfil-img">
                </div>
                <div class="login-wrapper">
                    <div class="login-box">
                        <form id="formPerfil"
                              class="form-login">
                            <div class="input-group">
                                <label>Nombre</label>
                                <input type="text"
                                       id="txt_nombre"
                                       class="input-stroke"
                                       value="${sessionScope.usuarioActual.nombre}">
                            </div>
                            <div class="input-group">
                                <label>Numero</label>
                                <input type="text"
                                       id="txt_numero"
                                       class="input-stroke"
                                       value="${sessionScope.usuarioActual.telefono}">
                            </div>
                            <div class="input-group">
                                <label>Email</label>
                                <input type="email"
                                       id="txt_email"
                                       class="input-stroke"
                                       value="${sessionScope.usuarioActual.correo}">
                            </div>
                            <div class="input-group">
                                <label>Direccion</label>

                                <input type="text"
                                       id="txt_direccion"
                                       class="input-stroke"
                                       value="${sessionScope.usuarioActual.direccion}">
                            </div>
                            <p id="mensaje"></p>

                            <button type="submit"
                                    class="btn-login">
                                Guardar cambios
                            </button>
                        </form>
                    </div>
                </div>
            </main>
        </div>
        <%@include file="/WEB-INF/fragmentos/footer.jspf"%>
        <script>
            const contextPath =
                "${pageContext.request.contextPath}";
        </script>
        <script src="${pageContext.request.contextPath}/scripts/Perfil.js"></script>
    </body>
</html>