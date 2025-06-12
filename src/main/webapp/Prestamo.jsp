<%--
  Created by IntelliJ IDEA.
  User: fmend
  Date: 10/6/2025
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Prestamos</title>
</head>
<body>
<h2>MÓDULO DE PRÉSTAMOS</h2>
<form action="prestamo" method="post">
    <label>Tipos de Préstamos:</label><br>
    <select name="tipo">
        <option value="Consumo">Crédito de Consumo</option>
        <option value="Educativo">Crédito Educativo</option>
        <option value="Emergente">Crédito Emergente</option>
    </select><br><br>

    <label>Monto:</label><br>
    <input type="number" name="monto" step="0.01"><br><br>

    <label>Plazo:</label><br>
    <input type="number" name="plazo"><br><br>

    <label>Interés (%):</label><br>
    

    <input type="submit" value="Solicitar">
</form>

<%
    String mensaje = (String) request.getAttribute("mensaje");
    if (mensaje != null) {
%>
<p><%= mensaje %></p>
<%
    }
%>


</body>
</html>
