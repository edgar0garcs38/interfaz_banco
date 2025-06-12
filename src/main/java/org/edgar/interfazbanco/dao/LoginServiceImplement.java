package org.edgar.interfazbanco.dao;

import org.edgar.interfazbanco.models.Usuario;
import org.edgar.interfazbanco.util.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginServiceImplement implements LoginService {

    @Override
    public Usuario autenticar(String cedula, String clave) {
        Usuario usuario = null;
        String sql = "SELECT * FROM usuarios WHERE cedula = ? AND clave = ?";

        try (Connection conn = Conexion.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, cedula);
            stmt.setString(2, clave);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                usuario = new Usuario();
                usuario.setCedula(rs.getString("cedula"));
                usuario.setClave(rs.getString("clave"));
                usuario.setRol(rs.getString("rol"));
                usuario.setNombres(rs.getString("nombres"));
                usuario.setApellidos(rs.getString("apellidos"));
                usuario.setId(rs.getInt("idUsuarios")); // o el nombre real de tu columna ID
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usuario;
    }
}
