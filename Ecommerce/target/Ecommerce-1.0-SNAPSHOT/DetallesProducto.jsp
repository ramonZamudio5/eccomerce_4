<%-- 
    Document   : DetallesProducto
    Created on : 24 mar 2026, 14:27:54
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>detalle Producto</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%@include  file="/WEB-INF/fragmentos/header.jspf"%>
        <div class = "top-contenedor">
            <a href="./catalogo.html"><img src="./imgs/back.png" alt=""></a>
        </div>
        <main class="main-detalles">
            <section class="producto-info-grid">
                
                <div class="producto-galeria">
                    <img src="./imgs/sonywh5.jpeg" alt="sony" class="img-detalle">
                    <div class="producto-rating">
                        ⭐⭐⭐⭐4
                    </div>
                </div>

                <div class="producto-datos">
                    <h1 class="producto-titulo">Audifonos Sony wh-10000xm5</h1>
                    
                    <div class="producto-split">
                        <div class="producto-descripcion">
                            <p>Estos audífonos ligeros cuentan con un acabado espectacular de “cuero suave y adaptable”. Este material se ajusta a la cabeza para ejercer menos presión en las orejas y bloquear los sonidos externos. El diseño sin ruido con control deslizante, giro fluido y gancho, hace que los WH-1000XM5 sean cómodos.</p>
                        </div>
                        
                        <div class="producto-compra">
                            <h2 class="precio">$4,953.00</h2>
                            <p class="disponibilidad">Disponible</p>
                            
                            <div class="cantidad-box">
                                <label for="cantidad">cantidad:</label>
                                <select id="cantidad">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>

                            <button class="btn-accion btn-agregar">Agregar al Carrito</button>
                            <button class="btn-accion btn-comprar">Comprar</button>
                            
                            <p class="stock">Stock: 37</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="opiniones-seccion">
                <h2>Opiniones de Usuarios</h2>
                
                <div class="lista-opiniones">
                    <div class="opinion-card">
                        <h3>Pedro Esquer</h3>
                        <p class="opinion-meta">5 estrellas - 16 de Octubre del 2025</p>
                        <p class="opinion-texto">Producto recomendable!!!!</p>
                    </div>
                    
                    <div class="opinion-card">
                        <h3>Gael Guerra</h3>
                        <p class="opinion-meta">4 estrellas - 16 de Octubre del 2025</p>
                        <p class="opinion-texto">Buen producto para tu vehiculo.</p>
                    </div>
                    
                    <div class="opinion-card">
                        <h3>Hassan Kabande</h3>
                        <p class="opinion-meta">4 estrellas - 16 de Octubre del 2025</p>
                        <p class="opinion-texto">Producto de calidad pero hay otras opciones a mejor precio.</p>
                    </div>
                </div>
            </section>
        </main>
        <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
    </body>
</html>