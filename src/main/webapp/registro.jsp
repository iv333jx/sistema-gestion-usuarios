<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>

<meta charset="UTF-8">
<title>Registro | Sistema de Gestión de Usuarios</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{

    background:#0f172a;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;

}

.card{

    width:420px;
    background:#1e293b;
    padding:35px;
    border-radius:18px;
    box-shadow:0 10px 30px rgba(0,0,0,.45);
    border:1px solid #334155;

}

h1{

    color:#fff;
    text-align:center;
    margin-bottom:25px;

}

input{

    width:100%;
    padding:14px;
    margin-bottom:15px;
    border:none;
    border-radius:8px;
    background:#0f172a;
    color:white;
    border:1px solid #334155;
    outline:none;

}

input:focus{

    border:1px solid #22c55e;

}

button{

    width:100%;
    padding:14px;
    border:none;
    border-radius:8px;
    background:#22c55e;
    color:white;
    font-size:15px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;

}

button:hover{

    background:#16a34a;

}

a{

    display:block;
    text-align:center;
    margin-top:18px;
    color:#94a3b8;
    text-decoration:none;
    font-size:14px;

}

a:hover{

    color:#22c55e;

}

</style>

</head>

<body>

<div class="card">

<h1>Crear Cuenta</h1>

<form action="RegistroServlet" method="post">

<input type="text"
       name="nombre"
       placeholder="Nombre"
       required>

<input type="text"
       name="apellido"
       placeholder="Apellido"
       required>

<input type="email"
       name="correo"
       placeholder="Correo electrónico"
       required>

<input type="text"
       name="usuario"
       placeholder="Usuario"
       required>

<input type="password"
       name="clave"
       placeholder="Contraseña"
       required>

<button type="submit">

Crear Cuenta

</button>

</form>

<a href="login.jsp">

¿Ya tienes cuenta? Iniciar sesión

</a>

</div>

</body>

</html>