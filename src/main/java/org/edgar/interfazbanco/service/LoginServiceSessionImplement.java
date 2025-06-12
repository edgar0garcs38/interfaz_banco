package org.edgar.interfazbanco.service;

import org.edgar.interfazbanco.models.Usuario;

public class LoginServiceSessionImplement {
    private static Usuario usuarioActual;

    public static void iniciarSesion(Usuario usuario) {
        usuarioActual = usuario;
    }

    public static void cerrarSesion() {
        usuarioActual = null;
    }

    public static Usuario getUsuarioActual() {
        return usuarioActual;
    }

    public static boolean estaAutenticado() {
        return usuarioActual != null;
    }
}
