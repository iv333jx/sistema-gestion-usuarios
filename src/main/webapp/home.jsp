<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String usuario=(String)session.getAttribute("usuario");

if(usuario==null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html lang="es">

<head>

<meta charset="UTF-8">
<title>Panel Principal | Sistema de Gestión de Usuarios</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
}

body{

background:#0f172a;
color:white;

}

header{

background:#1e293b;
padding:20px 40px;
display:flex;
justify-content:space-between;
align-items:center;
border-bottom:1px solid #334155;

}

header h2{

color:white;

}

.logout{

background:#ef4444;
padding:10px 18px;
border-radius:8px;
color:white;
text-decoration:none;
font-weight:bold;
transition:.3s;

}

.logout:hover{

background:#dc2626;

}

.container{

width:90%;
max-width:1100px;
margin:40px auto;

}

.welcome{

margin-bottom:35px;

}

.welcome h1{

font-size:30px;
margin-bottom:10px;

}

.welcome p{

color:#cbd5e1;

}

.cards{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:25px;

}

.card{

background:#1e293b;
padding:30px;
border-radius:15px;
border:1px solid #334155;
transition:.3s;
cursor:pointer;

}

.card:hover{

transform:translateY(-6px);
border-color:#22c55e;

}

.card h3{

margin-bottom:10px;

}

.card p{

color:#94a3b8;

}

.link{

text-decoration:none;
color:white;

}

</style>

</head>

<body>

<header>

<h2>Sistema de Gestión de Usuarios</h2>

<a href="LogoutServlet" class="logout">

Cerrar sesión

</a>

</header>

<div class="container">

<div class="welcome">

<h1>¡Bienvenido, <%= usuario %>!</h1>

<p>Has iniciado sesión correctamente.</p>

</div>

<div class="cards">

<a href="usuarios.jsp" class="link">

<div class="card">

<h3>👤 Usuarios</h3>

<p>Consultar, editar y eliminar usuarios registrados.</p>

</div>

</a>

<a href="#" class="link">

<div class="card">

<h3>📋 Registros</h3>

<p>Visualizar la información registrada en el sistema.</p>

</div>

</a>

<a href="#" class="link">

<div class="card">

<h3>⚙ Configuración</h3>

<p>Administrar opciones generales del sistema.</p>

</div>

</a>

</div>

</div>

</body>

</html>
