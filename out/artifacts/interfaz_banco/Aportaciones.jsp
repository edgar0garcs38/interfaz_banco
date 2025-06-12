<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: israe
  Date: 10/6/2025
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Aportaciones</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Aportciones.css">
</head>
<body class="container mt-5">

<div class="card p-4">
    <h2 class="text-center">MÓDULO DE APORTACIONES</h2>
    <p class="text-center">Cada socio puede ingresar su aporte con fecha y valor</p>

    <form method="post" action="AportacionesServlet" class="mb-4">
        <div class="row g-2">
            <div class="col-md-6">
                <label class="form-label">Fecha:</label>
                <input type="date" name="fecha" class="form-control" required>
            </div>
            <div class="col-md-6">
                <label class="form-label">Valor:</label>
                <input type="number" name="valor" class="form-control" required min="1">
            </div>
        </div>
        <div class="text-center mt-3">
            <button type="submit" class="btn btn-primary">Ingresar</button>
        </div>
    </form>

    <h4>Registro de Aportaciones</h4>
    <table class="table table-bordered text-center">
        <thead class="table-secondary">
        <tr>
            <th>Fecha</th>
            <th>Valor</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>

        <!--aqui va el codigo que quite-->

        </tbody>
    </table>
</div>

</body>
</html>

