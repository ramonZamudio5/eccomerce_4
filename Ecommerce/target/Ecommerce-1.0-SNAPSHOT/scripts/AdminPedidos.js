async function actualizarEstado(idPedido, estado, boton) {

    try {

        const response = await fetch(
            contextPath + "/modificar_pedido",
            {
                method: "POST",

                headers: {
                    "Content-Type":
                        "application/x-www-form-urlencoded"
                },

                body: new URLSearchParams({
                    idPedido: idPedido,
                    "estado-pedido": estado
                })
            }
        );

        const data = await response.json();

        if(data.success){

            const tdEstado =
                document.getElementById(
                    "estado-" + idPedido
                );

            if(estado === "PENDIENTE"){

                tdEstado.innerHTML =
                    `<span class="estatusPendiente">
                        Pendiente
                    </span>`;

            }

            else if(estado === "ENVIADO"){

                tdEstado.innerHTML =
                    `<span class="estatusEnviado">
                        Enviado
                    </span>`;

            }

            else {

                tdEstado.innerHTML =
                    `<span class="estatusEntregado">
                        Entregado
                    </span>`;
            }

            alert("Estado actualizado");

        } else {

            alert(data.message);

        }

    } catch(error){

        console.log(error);

        alert("Error de conexión");
    }
}
