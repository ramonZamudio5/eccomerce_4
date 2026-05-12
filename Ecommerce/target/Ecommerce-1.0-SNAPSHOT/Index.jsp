<%-- 
    Document   : Index
    Created on : 24 mar 2026, 14:17:53
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ecommerce web</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%@include file="/WEB-INF/fragmentos/header.jspf" %>
        <div class = "contenido-flex">
            <%@include file="/WEB-INF/fragmentos/aside.jspf" %>
            <main class ="main-index">
                <section>
                    <h2>Integrantes del equipo</h2>
                    <p>Ramón Zamudio - 251924</p>
                </section>
            </main>
        </div>
            <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
    </body>
</html>
