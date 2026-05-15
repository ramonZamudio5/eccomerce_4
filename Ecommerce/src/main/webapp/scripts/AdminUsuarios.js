document.addEventListener("DOMContentLoaded", () => {

    cargarUsuarios();

});

async function cargarUsuarios() {

    try {

        const response = await fetch(
            contextPath + "/administrar-usuarios"
        );

        const usuarios = await response.json();

        const tbody =
            document.getElementById(
                "tablaUsuariosBody"
            );

        tbody.innerHTML = "";

        usuarios.forEach(usuario => {

            tbody.innerHTML += `

                <tr id="fila-${usuario.id}">

                    <td>
                        ${usuario.nombre}
                    </td>

                    <td>
                        ${usuario.correo}
                    </td>

                    <td class="estado-usuario">

                        ${
                            usuario.esActivo
                            ?
                            '<span style="color:green;">Activo</span>'
                            :
                            '<span style="color:red;">Inactivo</span>'
                        }

                    </td>



                    <td class="contenedor-botones">

                        ${
                            usuario.esActivo
                            ?

                            `
                            <button
                                class="btn-estilo btn-azul-admin"
                                onclick="cambiarEstado(
                                    ${usuario.id},
                                    'desactivar'
                                )">

                                Desactivar

                            </button>
                            `

                            :

                            `
                            <button
                                class="btn-estilo btn-azul-admin"
                                onclick="cambiarEstado(
                                    ${usuario.id},
                                    'activar'
                                )">

                                Activar

                            </button>
                            `
                        }

                    </td>

                </tr>

            `;

        });

    } catch (error) {

        console.error(error);

    }
}

async function cambiarEstado(idUsuario, accion) {

    try {

        const formData = new URLSearchParams();

        formData.append("idUsuario", idUsuario);
        formData.append("accion", accion);

        const response = await fetch(
            contextPath + "/administrar-usuarios",
            {
                method: "POST",
                headers: {
                    "Content-Type":
                        "application/x-www-form-urlencoded"
                },
                body: formData
            }
        );

        const data = await response.json();

        if (data.success) {

            cargarUsuarios();

        } else {

            alert(data.message);

        }

    } catch (error) {

        console.error(error);

        alert("Error de conexión");

    }
}
