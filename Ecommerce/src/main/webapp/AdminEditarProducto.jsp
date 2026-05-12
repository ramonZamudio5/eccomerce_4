<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Editar Producto</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <%@include file="/WEB-INF/fragmentos/header.jspf"%>
    <div class="contenido-flex">
        <%@include file="/WEB-INF/fragmentos/aside.jspf"%>
        <main class="main-index">
            <div class="top-contenedor">
                <%-- Botón de regreso al catálogo --%>
                <a href="cargarproducto?vista=adminProducto"><img src="./imgs/back.png" alt="Atras"></a>
                <h1>Editar producto</h1>
            </div>

            <div class="admin-form-container">
                <div class="admin-form-box">
                    <%-- El action apunta al Servlet que limpiamos --%>
                    <form action="EditarProducto" method="POST" enctype="multipart/form-data" class="form-login">
                        
                        <%-- CAMPOS OCULTOS (Vitales para saber qué producto estamos editando) --%>
                        <input type="hidden" name="id" value="${producto.id}">
                        <input type="hidden" name="rutaImagenActual" value="${producto.rutaImagen}">

                        <div class="input-group">
                            <label>Nombre</label>
                            <input type="text" name="nombre" class="input-stroke" value="${producto.nombre}" required>
                        </div>

                        <div class="input-group">
                            <label>Precio</label>
                            <input type="number" step="0.01" name="precio" class="input-stroke" value="${producto.precio}" required>
                        </div>

                        <div class="input-group">
                            <label>Stock</label>
                            <input type="number" name="stock" class="input-stroke" value="${producto.stock}" required>
                        </div>

                        <div class="input-group">
                            <label>Descripción</label>
                            <textarea name="desc" class="input-stroke" rows="6" style="resize: none;" required>${producto.descripcion}</textarea>
                        </div>

                        <div class="input-group">
                            <label>Nueva Imagen (Opcional)</label>
                            <input type="file" name="imagen" class="input-stroke" accept="image/png, image/jpeg, image/webp">
                            <small style="color: gray;">Si no subes nada, se mantendrá la imagen actual.</small>
                        </div>

                        <div class="admin-form-buttons">
                            <button type="submit" class="btn-add">Actualizar</button>
                            <a href="cargarproducto?vista=adminProducto" class="btn-cancel">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
    <%@include file="/WEB-INF/fragmentos/footer.jspf"%>
</body>

</html>