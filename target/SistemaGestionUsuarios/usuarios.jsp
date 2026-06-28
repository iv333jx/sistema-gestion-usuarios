<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String usuarioSesion = (String) session.getAttribute("usuario");

if (usuarioSesion == null) {
    response.sendRedirect("login.jsp");
    return;
}

List<Usuario> lista = UsuarioDAO.listarUsuarios();
%>

<!DOCTYPE html>
<html lang="es">

<head>

<meta charset="UTF-8">
<title>Usuarios Registrados</title>

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

.container{
width:95%;
margin:40px auto;
}

table{
width:100%;
border-collapse:collapse;
background:#1e293b;
border-radius:10px;
overflow:hidden;
}

th{
background:#22c55e;
padding:15px;
}

td{
padding:15px;
text-align:center;
border-bottom:1px solid #334155;
}

tr:hover{
background:#273549;
}

.btnVolver{
background:#22c55e;
padding:10px 20px;
color:white;
text-decoration:none;
border-radius:8px;
font-weight:bold;
}

.btnVolver:hover{
background:#16a34a;
}

.editar{
background:#3b82f6;
color:white;
padding:8px 14px;
border-radius:6px;
text-decoration:none;
margin-right:5px;
}

.editar:hover{
background:#2563eb;
}

.eliminar{
background:#ef4444;
color:white;
padding:8px 14px;
border-radius:6px;
text-decoration:none;
}

.eliminar:hover{
background:#dc2626;
}

</style>

</head>

<body>

<header>

<h2>Usuarios Registrados</h2>

<a href="home.jsp" class="btnVolver">

Volver al Inicio

</a>

</header>

<div class="container">

<table>

<tr>

<th>ID</th>
<th>Nombre</th>
<th>Apellido</th>
<th>Correo</th>
<th>Usuario</th>
<th>Acciones</th>

</tr>

<%
for(Usuario u : lista){
%>

<tr>

<td><%=u.getId()%></td>

<td><%=u.getNombre()%></td>

<td><%=u.getApellido()%></td>

<td><%=u.getCorreo()%></td>

<td><%=u.getUsuario()%></td>

<td>

<a class="editar"
href="editar.jsp?id=<%=u.getId()%>">

✏ Editar

</a>

<a class="eliminar"
href="EliminarUsuarioServlet?id=<%=u.getId()%>"
onclick="return confirm('¿Está seguro de eliminar este usuario?');">

🗑 Eliminar

</a>

</td>

</tr>

<%
}
%>

</table>

</div>

</body>

</html>