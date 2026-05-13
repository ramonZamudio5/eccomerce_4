document.getElementById("loginForm")
.addEventListener("submit", async function(e){
    e.preventDefault();
    const correo = document.getElementById("txt_email").value;
    const contrasenia = document.getElementById("password").value;
    try {
        const params = new URLSearchParams();
        params.append("correo", correo);
        params.append("contrasenia", contrasenia);
        const url = window.location.origin + contextPath + "/login";
        const response = await fetch(url, {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: params
        });
        const data = await response.json();
        if(data.success){
            localStorage.setItem("token", data.token);
            window.location.href = data.redirect;
        } else {
            alert(data.message);
        }
    } catch(error){
        console.log(error);
        alert("Error de conexión");
    }
});