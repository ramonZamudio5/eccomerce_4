/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

async function cargarProductos(){
    try{
        const respuesta = await fetch("cargarproducto?vista=catalogo");
        const productos = await respuesta.json();

        const contenedor = document.getElementById("tablaProductos");
        contenedor.innerHTML = productos.map(p => `
                                <tr>
                                    <td><img src="${ p.rutaImagen}"></td>
                                    <td><strong>${p.nombre}</strong></td>
                                    <td>$${p.precio}</td>
                                    <td class="celda-acciones">
                                        <div class="contenedor-botones">
                                            <a href="DetallesProducto.jsp?id=${p.id}" class="btn-estilo btn-detalles">Detalles</a>
                                            <a href="Carrito.jsp" class="btn-estilo btn-carrito">Añadir al carrito</a>
                                            <a href="crearResenia?idProducto=${p.id}" class="btn-estilo btn-resena">Reseña </a>
                                        </div>
                                    </td>
                                </tr>
        `).join('');
    }catch(error){
        console.error("Error cargando productos", error);
    }
  
}

async function detallesProducto(){
    const parametro = new URLSearchParams(window.location.search);
    const idProducto = parametro.get("id");
    if(!idProducto) return;
    try{
        const respuesta = await fetch(`cargarproducto?id=${idProducto}`);
        const producto =  await respuesta.json();
        document.getElementById("nombreProducto").innerText = producto.nombre;
        document.getElementById("descripcion").innerText = producto.descripcion;
        document.getElementById("idPrecio").innerText = "$"+producto.precio;
        document.getElementById("idDisponibilidad").innerText = producto.disponibilidad;
        document.getElementById("idStock").innerText = "Stock: "+producto.stock;
        document.getElementById("idImagen").src = producto.rutaImagen;
        
        
    }catch(error){
        console.error("Error al obtener detalles del producto", error);
    }
}
async function resenhaProducto(){
    const parametro = new URLSearchParams(window.location.search);
    const idProducto = parametro.get("id");
    if(!idProducto) return;
    try{
        const respuesta = await fetch(`cargarproducto?id=${idProducto}`);
        const producto =  await respuesta.json();
        document.getElementById("nombreProducto").innerText = producto.nombre;
        document.getElementById("idImagen").src = producto.rutaImagen;
        
        
    }catch(error){
        console.error("Error al obtener detalles del producto", error);
    }
}


document.addEventListener("DOMContentLoaded", () => {
    cargarProductos();
    detallesProducto();
    resenhaProducto();
});
