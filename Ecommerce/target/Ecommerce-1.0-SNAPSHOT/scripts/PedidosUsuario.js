document.addEventListener("DOMContentLoaded", async () => {

    const tbody = document.getElementById("tablaPedidos");

    try {

        const response = await fetch(
            contextPath + "/consultarPedidoServlet"
        );

        const data = await response.json();

        console.log(data);

        const pedidos = data.pedidos;

        tbody.innerHTML = "";

        pedidos.forEach(pedido => {

            tbody.innerHTML += `
                <tr>
                    <td>${pedido.numeroPedido}</td>

                    <td>${pedido.fecha}</td>

                    <td>$${pedido.total}</td>

                    <td>${pedido.estado}</td>
                </tr>
            `;

        });

    } catch(error) {

        console.log(error);

        tbody.innerHTML = `
            <tr>
                <td colspan="4">
                    Error al cargar pedidos
                </td>
            </tr>
        `;
    }

});