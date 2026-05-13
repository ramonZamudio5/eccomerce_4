async function logout(){
    try {
        const response = await fetch(contextPath + "/logout", {
            method: "POST"
        });
        const data = await response.json();
        if(data.success){
            localStorage.removeItem("token");
            window.location.href = "Login.jsp";
        }
    } catch(error){
        alert("Error al cerrar sesión");
    }

}
