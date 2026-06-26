<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Login - Sistema de Gestión de Usuarios</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #0f172a;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background: #1e293b;
        padding: 50px;
        border-radius: 18px;
        width: 360px;
        box-shadow: 0 15px 40px rgba(0,0,0,0.6);
        border: 1px solid #334155;
        text-align: center;
    }

    h1 {
        color: #f8fafc;
        margin-bottom: 20px;
    }

    input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: none;
        border-radius: 10px;
        outline: none;
        background: #0f172a;
        color: #f8fafc;
        border: 1px solid #334155;
    }

    .btn {
        width: 100%;
        padding: 12px;
        margin-top: 15px;
        border: none;
        border-radius: 10px;
        background: #38bdf8;
        color: #0f172a;
        font-weight: bold;
        cursor: pointer;
    }

    .btn:hover {
        background: #0ea5e9;
    }

    .error {
        background: #ef4444;
        color: white;
        padding: 10px;
        border-radius: 8px;
        margin-bottom: 15px;
        font-size: 14px;
    }

    a {
        display: block;
        margin-top: 15px;
        color: #94a3b8;
        text-decoration: none;
        font-size: 13px;
    }

    a:hover {
        color: #38bdf8;
    }
</style>

</head>

<body>

<div class="card">

    <h1>Iniciar Sesión</h1>

    <!-- 🔥 ERROR -->
    <%
        String error = request.getParameter("error");
        if (error != null) {
    %>
        <div class="error">
            ❌ Usuario o contraseña incorrectos
        </div>
    <%
        }
    %>

    <!-- LOGIN FORM -->
    <form action="LoginServlet" method="post">

        <input type="text" name="usuario" placeholder="Usuario" required>

        <input type="password" name="clave" placeholder="Contraseña" required>

        <button class="btn" type="submit">Entrar</button>

    </form>

    <a href="registro.jsp">¿No tienes cuenta? Regístrate</a>

</div>

</body>
</html>