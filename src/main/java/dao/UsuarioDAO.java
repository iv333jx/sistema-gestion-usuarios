package dao;

import modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    // Registrar usuario
    public static void registrar(Usuario u) {

        try {

            Connection con = Conexion.getConnection();

            String sql = "INSERT INTO usuarios(nombre, apellido, correo, usuario, clave) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, u.getNombre());
            ps.setString(2, u.getApellido());
            ps.setString(3, u.getCorreo());
            ps.setString(4, u.getUsuario());
            ps.setString(5, u.getClave());

            ps.executeUpdate();

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Validar login
    public static boolean validar(String usuario, String clave) {

        try {

            Connection con = Conexion.getConnection();

            String sql = "SELECT * FROM usuarios WHERE usuario=? AND clave=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, usuario);
            ps.setString(2, clave);

            ResultSet rs = ps.executeQuery();

            boolean existe = rs.next();

            con.close();

            return existe;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // Listar usuarios
    public static List<Usuario> listarUsuarios() {

        List<Usuario> lista = new ArrayList<>();

        try {

            Connection con = Conexion.getConnection();

            String sql = "SELECT * FROM usuarios";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Usuario u = new Usuario();

                u.setId(rs.getInt("id"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellido"));
                u.setCorreo(rs.getString("correo"));
                u.setUsuario(rs.getString("usuario"));
                u.setClave(rs.getString("clave"));

                lista.add(u);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return lista;
    }

    // Buscar usuario por ID
    public static Usuario buscarPorId(int id) {

        Usuario u = null;

        try {

            Connection con = Conexion.getConnection();

            String sql = "SELECT * FROM usuarios WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                u = new Usuario();

                u.setId(rs.getInt("id"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellido"));
                u.setCorreo(rs.getString("correo"));
                u.setUsuario(rs.getString("usuario"));
                u.setClave(rs.getString("clave"));
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return u;
    }

    // Actualizar usuario
    public static void actualizar(Usuario u) {

        try {

            Connection con = Conexion.getConnection();

            String sql = "UPDATE usuarios SET nombre=?, apellido=?, correo=?, usuario=?, clave=? WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, u.getNombre());
            ps.setString(2, u.getApellido());
            ps.setString(3, u.getCorreo());
            ps.setString(4, u.getUsuario());
            ps.setString(5, u.getClave());
            ps.setInt(6, u.getId());

            ps.executeUpdate();

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Eliminar usuario
    public static void eliminar(int id) {

        try {

            Connection con = Conexion.getConnection();

            String sql = "DELETE FROM usuarios WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}