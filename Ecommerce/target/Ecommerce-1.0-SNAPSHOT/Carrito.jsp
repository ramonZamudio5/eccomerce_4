<%-- 
    Document   : Carrito
    Created on : 24 mar 2026, 14:21:25
    Author     : ramonsebastianzamudioayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%@include  file="/WEB-INF/fragmentos/header.jspf"%>

    <div class="contenido-flex">
        <%@include  file="/WEB-INF/fragmentos/aside.jspf"%>

        <main class="main-carrito">
            <div class = "top-contenedor">
                <a href="./index.html"><img src="./imgs/back.png" alt=""></a>
                <h1>carrito de compras</h1>
            </div>
            <div class="carrito-grid">
                
                <div class="carrito-items-box">
                    
                    <div class="carrito-item">
                        <img src="./imgs/sonywh5.jpeg" alt="Escáner" class="item-img">
                        <div class="item-detalles">
                            <p class="item-titulo">Sony WH-1000XM5</p>
                            <p class="item-disponible">Disponible</p>
                            <div class="item-cantidad">
                                <label>cantidad:</label>
                                <select>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                            <p class="item-stock">Stock: 2</p>
                            <button class="btn-eliminar">Eliminar</button>
                        </div>
                        <div class="item-precio-box">
                            <p class="precio-grande">$4,953.00</p>
                            <p class="impuesto-texto">Aplica impuesto*</p>
                        </div>
                    </div>

                    <hr class="divisor-carrito">

                    <div class="carrito-item">
                        <img src="./imgs/focos.webp" alt="Focos LED" class="item-img">
                        <div class="item-detalles">
                            <p class="item-titulo">H4 H7 H11 9005 9006 H1 H3 Kit De Faros Auto Led 18000lm Luz Alta Baja Kit 80W 6500K Bombillas LED</p>
                            <p class="item-disponible">Disponible</p>
                            <div class="item-cantidad">
                                <label>cantidad:</label>
                                <select>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                            <p class="item-stock">Stock: 20</p>
                            <button class="btn-eliminar">Eliminar</button>
                        </div>
                        <div class="item-precio-box">
                            <p class="precio-grande">$392</p>
                            <p class="impuesto-texto">Aplica impuesto*</p>
                        </div>
                    </div>

                </div>

                <div class="carrito-resumen-box">
                    <h3>Total</h3>
                    <div class="total-input">$5,345.00</div>
                    <a href="./procesoPago.html" class="btn-pago">Proceder al pago</a>                
                </div>

            </div>
        </main>
    </div>

    <%@include  file="/WEB-INF/fragmentos/footer.jspf"%>
</body>
</html>
