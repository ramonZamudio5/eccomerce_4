<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Crear producto</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <%@include file="/WEB-INF/fragmentos/header.jspf"%>
    <div class="contenido-flex">
       <%@include file="/WEB-INF/fragmentos/aside.jspf"%>
        <main class="main-index">
            <div class="top-contenedor">
                <a href="cargarproducto?vista=adminProducto"><img src="./imgs/back.png" alt="Atrás"></a>
                <h1>Crear nuevo producto</h1>
            </div>
            <div class="admin-form-container">
                <div class="admin-form-box">
                    <h3>Información del producto</h3>
                    
                    <form action="AgregarProducto" method="POST" enctype="multipart/form-data" class="form-login">
                        
                        <div class="input-group">
                            <label>Nombre</label>
                            <input type="text" name="nombre" class="input-stroke" required>
                        </div>
                        
                        <div class="input-group">
                            <label>Precio</label>
                            <input type="number" step="0.01" name="precio" class="input-stroke" required>
                        </div>
                        
                        <div class="input-group">
                            <label>Stock</label>
                            <input type="number" name="stock" class="input-stroke" required>
                        </div>
                        
                        <div class="input-group">
                            <label>Descripción</label>
                            <textarea name="desc" class="input-stroke" rows="4" required></textarea>
                        </div>
                        
                        <div class="input-group">
                            <label>Imagen del Producto</label>
                            <input type="file" name="imagen" class="input-stroke" accept="image/png, image/jpeg, image/webp">
                        </div>

                        <div class="admin-form-buttons">
                            <button type="submit" class="btn-add">Añadir Producto</button>
                            <a href="AdminCatalogo.jsp" class="btn-cancel">Cancelar</a>
                        </div>
                        
                    </form>
                </div>
            </div>
        </main>
    </div>
    <%@include file="/WEB-INF/fragmentos/footer.jspf"%>
</body>

</html>