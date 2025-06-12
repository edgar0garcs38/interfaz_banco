package org.edgar.interfazbanco.dao;

import org.edgar.interfazbanco.models.Usuario;

public interface LoginService {
    Usuario autenticar(String cedula, String clave);
}