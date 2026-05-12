document.addEventListener("DOMContentLoaded", () => {

    document.getElementById("registerForm")
    .addEventListener("submit", async function(e){

        e.preventDefault();

        const nombre = document.getElementById("txt_nombre").value;
        const telefono = document.getElementById("txt_numero").value;
        const correo = document.getElementById("txt_email").value;
        const direccion = document.getElementById("txt_direccion").value;
        const contrasenia = document.getElementById("password").value;
        const confirmar = document.getElementById("password_confirm").value;

        const mensaje = document.getElementById("mensaje");

        mensaje.innerText = "";

        if(contrasenia !== confirmar){

            mensaje.innerText = "Las contraseñas no coinciden";
            return;

        }

        try {

            const params = new URLSearchParams();

            params.append("nombre", nombre);
            params.append("telefono", telefono);
            params.append("correo", correo);
            params.append("direccion", direccion);
            params.append("contrasenia", contrasenia);

            const url = window.location.origin + contextPath + "/register";

            const response = await fetch(url, {

                method: "POST",

                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },

                body: params

            });

            const data = await response.json();

            if(data.success){

                mensaje.style.color = "green";
                mensaje.innerText = "Usuario registrado correctamente";

                setTimeout(() => {

                    window.location.href = "Login.jsp";

                }, 1500);

            } else {

                mensaje.style.color = "red";
                mensaje.innerText = data.message;

            }

        } catch(error){

            console.log(error);

            mensaje.style.color = "red";
            mensaje.innerText = "Error de conexión";

        }

    });

});