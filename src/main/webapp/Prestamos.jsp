<%--
  Created by IntelliJ IDEA.
  User: israe
  Date: 11/6/2025
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Préstamos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Prestamos.css">
</head>
<body>

<div class="prestamo-box">
    <div class="prestamo-title">MODULO DE PRESTAMOS</div>
    <div class="prestamo-subtitle">FORMULARIO PARA SOLICITAR PRESTAMOS</div>

    <form method="post" action="PrestamoServlet">
        <label for="tipo" class="form-label">TIPOS DE PRESTAMOS:</label>
        <select class="form-select" id="tipo" name="tipo">
            <option value="consumo">CREDITO DE CONSUMO</option>
            <option value="educativo">CREDITO EDUCATIVO</option>
            <option value="emergente">CREDITO EMERGENTE</option>
        </select>

        <div class="row">
            <div class="col-md-6">
                <label class="form-label">MONTO:</label>
                <input type="number" name="monto" class="form-control" required min="0">
            </div>
            <div class="col-md-6">
                <label class="form-label">PLAZO:</label>
                <input type="number" name="plazo" class="form-control" required min="1">
            </div>
        </div>

        <label class="form-label">INTERES(%):</label>
        <input type="number" step="0.01" name="interes" class="form-control" required min="0">

        <div class="text-center">
            <button type="submit" class="btn btn-solicitar">SOLICITAR</button>
        </div>
    </form>
</div>

</body>
</html>
