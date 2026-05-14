
document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("formResenia");

    form.addEventListener("submit", async (e) => {

        e.preventDefault();

        const idProducto =
            document.getElementById("idProducto").value;

        const estrellas =
            document.getElementById("rating").value;

        const comentario =
            document.getElementById("comentario").value;

        try {

            const formData = new URLSearchParams();

            formData.append("idProducto", idProducto);
            formData.append("estrellas", estrellas);
            formData.append("comentario", comentario);

            const response = await fetch(
                contextPath + "/crearResenia",
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

                alert(data.message);

                window.location.href =
                    contextPath + "/Catalogo.jsp";

            } else {

                alert(data.message);

            }

        } catch (error) {

            console.error(error);

            alert("Error de conexión");

        }

    });

});