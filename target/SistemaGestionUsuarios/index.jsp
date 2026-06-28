<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Sistema de Gestión de Usuarios</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #0f172a, #1e293b);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background: #1e293b;
        padding: 50px;
        border-radius: 18px;
        text-align: center;
        width: 420px;
        box-shadow: 0 15px 40px rgba(0,0,0,0.6);
        border: 1px solid #334155;
    }

    h1 {
        color: #f8fafc;
        margin-bottom: 10px;
    }

    p {
        color: #cbd5e1;
        margin-bottom: 30px;
    }

    .btn {
        display: block;
        margin: 10px auto;
        padding: 12px;
        width: 80%;
        border-radius: 10px;
        text-decoration: none;
        font-weight: bold;
        transition: 0.3s;
    }

    .login {
        background: #38bdf8;
        color: #0f172a;
    }

    .login:hover {
        background: #0ea5e9;
    }

    .register {
        background: #22c55e;
        color: #0f172a;
    }

    .register:hover {
        background: #16a34a;
    }

    .tag {
        margin-top: 20px;
        font-size: 12px;
        color: #94a3b8;
    }
</style>

</head>

<body>

<div class="card">

    <h1>Sistema de Gestión de Usuarios</h1>

    <p>Bienvenido al sistema de autenticación segura</p>

    <a class="btn login" href="login.jsp">Iniciar Sesión</a>
    <a class="btn register" href="registro.jsp">Registrarse</a>

    <div class="tag">
        Versión 1.0 • Sistema Web Java + MySQL
    </div>

</div>

</body>
</html>