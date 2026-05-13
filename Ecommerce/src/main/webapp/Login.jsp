<%-- 
    Document   : Login
    Created on : 24 mar 2026, 14:19:34
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
       <header>
            <div class = "login-register">
                <a href="./Index.jsp"><h1>Logo de la marca</h1></a>
            </div>
        </header>
        <main>
            <div class = "top-contenedor">
                <a href="./Index.jsp"><img src="./imgs/back.png" alt=""></a>
                <h1>Iniciar Sesión</h1>
            </div>
            <div class="login-wrapper">
                <div class="login-box">
                    <form class="form-login" id="loginForm"> 
                        <% if(request.getAttribute("mensaje") != null) { %>
                            <p style="color: red; text-align: center;"><%= request.getAttribute("mensaje") %></p>
                        <% } %>
                        <div class="input-group">
                            <label for="txt_email">Email</label>
                            <input type="email" id="txt_email" name="correo" class="input-stroke" required>
                        </div>

                        <div class="input-group">
                            <label for="password">Contraseña</label>
                            <input type="password" id="password" name="contrasenia" class="input-stroke" required>
                        </div>
                        <button type="submit" class="btn-login" style="border: none; cursor: pointer; width: 100%;">
                            Entrar
                        </button>

                        <h3>¿No tienes cuenta? <a href="./Register.jsp">Regístrate</a></h3>
                    </form>
                </div>
            </div>
        </main>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
        <script>
            const contextPath = "<%= request.getContextPath() %>";
        </script>
        <script src="scripts/login.js"></script>
    </body> 
</html>
