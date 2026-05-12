<%-- 
    Document   : Register
    Created on : 24 mar 2026, 14:20:01
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Registro</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <header>
            <div class = "login-register">
                <a href="./index.html"><h1>Logo de la marca</h1></a>
            </div>
        </header>
        <main>
           <div class = "top-contenedor">
                <a href="./index.html"><img src="./imgs/back.png" alt=""></a>
                <h1>Registrate</h1>
            </div>
            <div class="login-wrapper">
                <div class="login-box">
                    <form class="form-login" id="registerForm" onsubmit="return false;">
                        <div class="input-group">
                            <label for="txt_nombre">Nombre</label>
                            <input type="text" id="txt_nombre" name="nombre" class="input-stroke">
                        </div>
                        <div class="input-group">
                            <label for="txt_numero">Numero</label>
                            <input type="text" id="txt_numero" name="telefono" class="input-stroke">
                        </div>
                        <div class="input-group">
                            <label for="txt_email">Email</label>
                            <input type="email" id="txt_email" name="correo" class="input-stroke">
                        </div>
                        <div class="input-group">
                            <label for="txt_direccion">Direccion</label>
                            <input type="text" id="txt_direccion" name="direccion" class="input-stroke">
                        </div>
                        <div class="input-group">
                            <label for="password">Contraseña</label>
                            <input type="password" id="password" name="contrasenia" class="input-stroke">
                        </div>
                        <div class="input-group">
                            <label for="password_confirm">Confirmar contraseña</label>
                            <input type="password" id="password_confirm" class="input-stroke">
                        </div>
                        <p id="mensaje"></p>
                        <button type="submit" class="btn-login">Registrarse</button>
                        <h3>¿Ya tienes cuenta?<a href="./Login.jsp">Inicia Sesión</a></h3>
                    </form>
                </div>
            </div>
        </main>
          <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
          <script>
            const contextPath = "<%= request.getContextPath() %>";
        </script>
          <script src="scripts/register.js"></script>
    </body>
</html>