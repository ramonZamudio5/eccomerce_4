<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Crear Reseña</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <%@include file="/WEB-INF/fragmentos/header.jspf"%>
    <main>
        <div class="top-contenedor">

            <a href="./Catalogo.jsp">
                <img src="./imgs/back.png" alt="">
            </a>
        </div>
        <div class="contenido-grid">
            <section class="seccion-producto">
                <img src="${producto.rutaImagen}"
                     alt="${producto.nombre}"
                     class="img-producto"
                     id="idImagen">
                <div class="puntuacion-actual">
                    <c:choose>
                        <c:when test="${producto.valoracion != null}">
                            <c:forEach begin="1"
                                       end="${producto.valoracion}">
                                ⭐
                            </c:forEach>
                            ${producto.valoracion}
                        </c:when>
                        <c:otherwise>
                            <script>
                                console.log("La valoración es null");
                            </script>
                        </c:otherwise>
                    </c:choose>
                </div>
            </section>
            <section class="seccion-form">
                <h1 id="nombreProducto">
                    ${producto.nombre}
                </h1>
                <form id="formResenia">
                    <input type="hidden"
                           id="idProducto"
                           value="${producto.id}">
                    <div class="campo-puntuacion">
                        <label>Calificacion:</label>
                        <select id="rating">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <div class="campo-comentario">
                        <label>
                            ¡Comenta tu experiencia con este producto!
                        </label>
                        <textarea id="comentario"
                                  placeholder="Escribe aquí..."
                                  class="reseniaArea"></textarea>
                    </div>
                    <div class="contenedor-botones-resena">
                        <button type="reset"
                                class="btn-cancelar">
                            Cancelar
                        </button>
                        <button type="submit"
                                class="btn-publicar">
                            Publicar
                        </button>
                    </div>
                </form>
            </section>
        </div>
    </main>
    <%@include file="/WEB-INF/fragmentos/footer.jspf"%>
    <script src="${pageContext.request.contextPath}/scripts/CrearResenia.js"></script>
</body>

</html>