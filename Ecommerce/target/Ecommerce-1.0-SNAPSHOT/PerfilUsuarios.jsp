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
        <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
        <div class = "contenido-flex">
           <%@include  file="/WEB-INF/fragmentos/aside.jspf"%>
            <main class ="main-index">
                <div class = "top-contenedor">
                    <a href="./index.html"><img src="./imgs/back.png" alt=""></a>
                    <h1>Bienvenido Juan Roaro</h1>
                    <img src="./imgs/user.png" alt="" class = "perfil-img">
                </div>
                <div class="login-wrapper">
                <div class="login-box">
                    <form class="form-login">
                        <div class="input-group">
                            <label for="txt_nombre">Nombre</label>
                            <input type="text" id="txt_nombre" class="input-stroke">
                        </div>      
                        <div class="input-group">
                            <label for="txt_numero">Numero</label>
                            <input type="text" id="txt_numero" class="input-stroke">
                        </div>                  
                        <div class="input-group">
                            <label for="txt_email">Email</label>
                            <input type="email" id="txt_email" class="input-stroke">
                        </div>
                        <div class="input-group">
                            <label for="txt_direccion">Direccion</label>
                            <input type="text" id="txt_direccion" class="input-stroke">
                        </div>
                        <a href="./index.html" class="btn-login">Aceptar Cambios</a>
                    </form>
                </div>
            </div>
            </main>
        </div>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
    </body>
</html>