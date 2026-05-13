document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("formPerfil");

    form.addEventListener("submit", async (e) => {

        e.preventDefault();

        const mensaje =
                document.getElementById("mensaje");

        try {

            const response = await fetch(
                contextPath + "/EditarPerfilServlet",
                {
                    method: "POST",

                    headers: {
                        "Content-Type":
                        "application/x-www-form-urlencoded"
                    },

                    body: new URLSearchParams({

                        nombre:
                            document.getElementById("txt_nombre").value,

                        telefono:
                            document.getElementById("txt_numero").value,

                        correo:
                            document.getElementById("txt_email").value,

                        direccion:
                            document.getElementById("txt_direccion").value
                    })
                }
            );

            const data = await response.json();

            if(data.success){

                mensaje.innerText =
                    "Perfil actualizado correctamente";

                document.getElementById(
                    "tituloBienvenida"
                ).innerText =
                    "Bienvenido "
                    + document.getElementById(
                        "txt_nombre"
                    ).value;

            } else {

                mensaje.innerText = data.message;

            }

        } catch(error){

            console.log(error);

            mensaje.innerText =
                "Error de conexión";

        }

    });

});