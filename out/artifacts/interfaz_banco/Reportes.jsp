<%--
  Created by IntelliJ IDEA.
  User: israe
  Date: 10/6/2025
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Generación de Reportes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Reporte.css">
</head>
<body class="container mt-5">

<div class="card p-4">
    <h2 class="text-center">GENERACIÓN DE REPORTES</h2>
    <p class="text-center">Generar reportes en PDF o Excel<br>Exportación de datos de préstamos y aportaciones</p>

    <form method="post" action="GenerarReporteServlet">
        <div class="mb-3 text-center">
            <label class="form-label">Formato:</label><br>
            <button name="formato" value="PDF" class="btn btn-primary me-2">PDF</button>
            <button name="formato" value="EXCEL" class="btn btn-secondary">EXCEL</button>
        </div>

        <div class="mb-3">
            <label class="form-label">Datos de Préstamos:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" name="tipoPrestamo" value="SEMANAL" class="form-check-input">
                <label class="form-check-label">Semanales</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" name="tipoPrestamo" value="MENSUAL" class="form-check-input">
                <label class="form-check-label">Mensuales</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" name="tipoPrestamo" value="ANUAL" class="form-check-input">
                <label class="form-check-label">Anuales</label>
            </div>
        </div>

        <div class="mb-3">
            <label class="form-label">Datos de Aportaciones:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" name="tipoAportacion" value="SEMANAL" class="form-check-input">
                <label class="form-check-label">Semanales</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" name="tipoAportacion" value="MENSUAL" class="form-check-input">
                <label class="form-check-label">Mensuales</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" name="tipoAportacion" value="ANUAL" class="form-check-input">
                <label class="form-check-label">Anuales</label>
            </div>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-success">Generar Reporte</button>
        </div>
    </form>
</div>

</body>
</html>