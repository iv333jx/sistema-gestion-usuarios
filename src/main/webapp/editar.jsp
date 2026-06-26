<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String usuarioSesion = (String) session.getAttribute("usuario");

if(usuarioSesion == null){
    response.sendRedirect("login.jsp");
    return;
}

int id = Integer.parseInt(request.getParameter("id"));

Usuario u = UsuarioDAO.buscarPorId(id);
%>

<!DOCTYPE html>
<html lang="es">

<head>

<meta charset="UTF-8">
<title>Editar Usuario</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
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
border:1px solid #334155;
box-shadow:0 10px 30px rgba(0,0,0,.45);

}

h2{

color:white;
text-align:center;
margin-bottom:25px;

}

input{

width:100%;
padding:14px;
margin-bottom:15px;
background:#0f172a;
border:1px solid #334155;
border-radius:8px;
color:white;
outline:none;

}

input:focus{

border-color:#22c55e;

}

button{

width:100%;
padding:14px;
background:#22c55e;
border:none;
border-radius:8px;
color:white;
font-size:15px;
font-weight:bold;
cursor:pointer;

}

button:hover{

background:#16a34a;

}

a{

display:block;
text-align:center;
margin-top:15px;
color:#94a3b8;
text-decoration:none;

}

a:hover{

color:#22c55e;

}

</style>

</head>

<body>

<div class="card">

<h2>Editar Usuario</h2>

<form action="EditarUsuarioServlet" method="post">

<input type="hidden" name="id" value="<%=u.getId()%>">

<input type="text"
name="nombre"
value="<%=u.getNombre()%>"
required>

<input type="text"
name="apellido"
value="<%=u.getApellido()%>"
required>

<input type="email"
name="correo"
value="<%=u.getCorreo()%>"
required>

<input type="text"
name="usuario"
value="<%=u.getUsuario()%>"
required>

<input type="password"
name="clave"
value="<%=u.getClave()%>"
required>

<button type="submit">

Guardar Cambios

</button>

</form>

<a href="usuarios.jsp">

Volver

</a>

</div>

</body>

</html>