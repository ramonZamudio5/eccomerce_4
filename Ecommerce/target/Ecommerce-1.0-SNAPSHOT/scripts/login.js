document.getElementById("loginForm")
.addEventListener("submit", async function(e){

    e.preventDefault();

    const correo = document.getElementById("txt_email").value;
    const contrasenia = document.getElementById("password").value;

    try {

        const response = await fetch("login", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: new URLSearchParams({
                correo: correo,
                contrasenia: contrasenia
            })
        });

        const data = await response.json();

        if(data.success){

            window.location.href = data.redirect;

        } else {

            alert(data.message);

        }

    } catch(error){

        alert("Error de conexión");

    }

});