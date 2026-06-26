package controlador;

import dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 🔹 datos del formulario
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        // 🔹 validar en base de datos
        if (UsuarioDAO.validar(usuario, clave)) {

            // 🔐 crear sesión
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);

            // ✔ ir al home
            response.sendRedirect("home.jsp");

        } else {

            // ❌ error de login
            response.sendRedirect("login.jsp?error=1");
        }
    }
}