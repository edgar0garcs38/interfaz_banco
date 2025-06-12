package Controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

@WebServlet("/prestamo")
public class PrestamoServlet extends HttpServlet {
    private final String URL = "jdbc:mysql://localhost:3306/tu_basedatos";
    private final String USER = "root";
    private final String PASS = "tu_contraseña";

    //implementacion metodo post
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Obtenemos la sesión actual y verificamos si hay un usuario logueado
        HttpSession sesion = request.getSession(false);
        Usuario usuario = (Usuario) sesion.getAttribute("usuarioLogueado");

        if (usuario == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        int idUsuario = usuario.getId();
    }
        //Recogemos los datos del formulario
        String tipo = request.getParameter("tipo");
        String montoStr = request.getParameter("monto");


        // Validar que los campos se envien vacios o nulos
        if (tipo == null || tipo.isEmpty() || montoStr == null || montoStr.isEmpty()) {
            request.setAttribute("mensaje", "Debes seleccionar un tipo de préstamo y escribir el monto.");
            request.getRequestDispatcher("prestamos.jsp").forward(request, response);
            return;
    }
        try {
            //conbertimos los datos al tipo correspondiente
            double monto = Double.parseDouble(montoStr);

            // Calcular interés según tipo de préstamo
            double interes;
            switch (tipo) {
                case "Consumo": interes = 0; break;//valores por definir
                case "Educativo": interes = 0; break;
                case "Emergente": interes = 0; break;


        }
            // Conectar a la base y guardar préstamo
            Connection conn = DriverManager.getConnection(URL, USER, PASS);
            String sql = "INSERT INTO Prestamos (idUsuarios, Tipo_Prestamo, Monto, Interes, Fecha_Inicio, Fecha_Fin, Estado) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, idUsuario);
            stmt.setString(2, tipo);
            stmt.setDouble(3, monto);
            stmt.setDouble(4, interes);
            stmt.setTimestamp(5, Timestamp.valueOf(fechaInicio));
            stmt.setTimestamp(6, Timestamp.valueOf(fechaFin));
            stmt.setString(7, estado);

            int filas = stmt.executeUpdate();

            if (filas > 0) {
                request.setAttribute("mensaje", "Préstamo registrado correctamente.");
            } else {
                request.setAttribute("mensaje", "No se pudo guardar el préstamo.");
                stmt.close();
                conn.close();

            } catch (NumberFormatException e) {
                request.setAttribute("mensaje", " Monto inválido.");
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("mensaje", "Error de base de datos: " + e.getMessage());
            }

            request.getRequestDispatcher("prestamos.jsp").forward(request, response);

        }

}
