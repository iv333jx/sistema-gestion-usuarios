package controlador;

import dao.UsuarioDAO;
import modelo.Usuario;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        // Verificar qué datos llegan del formulario
        System.out.println("===== DATOS RECIBIDOS =====");
        System.out.println("Nombre: " + nombre);
        System.out.println("Apellido: " + apellido);
        System.out.println("Correo: " + correo);
        System.out.println("Usuario: " + usuario);
        System.out.println("Clave: " + clave);

        Usuario u = new Usuario(nombre, apellido, correo, usuario, clave);

        UsuarioDAO.registrar(u);

        response.sendRedirect("login.jsp");
    }
}