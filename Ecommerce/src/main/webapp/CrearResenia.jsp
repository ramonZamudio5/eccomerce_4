<%-- 
    Document   : CrearReseña
    Created on : 24 mar 2026, 14:27:19
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Crear Reseña</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
         <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
        <main>
            <div class = "top-contenedor">
                <a href="./Catalogo.jsp"><img src="./imgs/back.png" alt=""></a>
            </div>
            <div class="contenido-grid">
                <section class="seccion-producto">
                    <img src="" alt="Producto" class="img-producto" id="idImagen">
                    <div class="puntuacion-actual">
                        ⭐⭐⭐⭐ 4 
                    </div>
                </section>
                <section class="seccion-form">
                    <h1 id="nombreProducto"></h1>
                    <form>
                        <div class="campo-puntuacion">
                            <label>Calificacion:</label>
                            <select name="rating">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <div class="campo-comentario">
                            <label>¡Comenta tu experiencia con este producto!</label>
                            <textarea placeholder="Escribe aquí..." class = "reseniaArea"></textarea>
                        </div>
                        <div class="contenedor-botones-resena">
                            <button type="button" class="btn-cancelar">Cancelar</button>
                            <button type="submit" class="btn-publicar">Publicar</button>
                        </div>
                    </form>
                </section>
            </div>
        </main>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
        <script src="scripts/CarritoCompras.js"></script>
    </body>
</html>