package controlador;

import dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class EliminarUsuarioServlet extends HttpServlet {

    protected void doGet(javax.servlet.http.HttpServletRequest request,
            javax.servlet.http.HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        UsuarioDAO.eliminar(id);

        response.sendRedirect("usuarios.jsp");
    }

}