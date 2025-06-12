package org.edgar.interfazbanco.controller;

import org.edgar.interfazbanco.dao.LoginService;
import org.edgar.interfazbanco.dao.LoginServiceImplement;
import org.edgar.interfazbanco.models.Usuario;
import org.edgar.interfazbanco.service.LoginServiceSessionImplement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private final LoginService loginService = new LoginServiceImplement();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cedula = request.getParameter("cedula");
        String clave = request.getParameter("clave");

        Usuario usuario = loginService.autenticar(cedula, clave);

        if (usuario != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            LoginServiceSessionImplement.iniciarSesion(usuario);

            switch (usuario.getRol()) {
                case "ADMIN":
                    response.sendRedirect("admin/dashboard.jsp");
                    break;
                case "SOCIO":
                    response.sendRedirect("socio/dashboard.jsp");
                    break;
                case "CLIENTE":
                    response.sendRedirect("cliente/dashboard.jsp");
                    break;
                default:
                    response.sendRedirect("login.jsp?error=rol");
            }

        } else {
            response.sendRedirect("login.jsp?error=credenciales");
        }
    }
}
