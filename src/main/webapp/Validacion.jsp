<%--
  Created by IntelliJ IDEA.
  User: israe
  Date: 11/6/2025
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validación de Identidad</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Validacion.css">
</head>
<body>

<div class="val-box">
    <div class="val-header">
        MODULO DE VALIDACIÓN <br> DE IDENTIDAD
    </div>

    <p class="mt-3"><strong>INGRESO DE CÉDULA:</strong> EL SISTEMA VALIDA Y AUTOCOMPLETA DATOS PERSONALES</p>

    <div class="mb-3">
        <label for="cedula" class="form-label">NÚMERO DE CÉDULA:</label>
        <div class="d-flex align-items-center">
            <input type="text" class="form-control" id="cedula" value="1850385756">
            <button class="btn-validar">VALIDAR</button>
        </div>
    </div>

    <div>
        <label class="form-label">NOMBRE:</label>
        <div class="input-box">KERLY ANAIS PILCO BARRIONUEVO</div>

        <label class="form-label">FECHA DE NACIMIENTO:</label>
        <div class="input-box">17 /10 / 2025</div>

        <label class="form-label">DIRECCIÓN:</label>
        <div class="input-box">PILLARO, SAN MIGUELITO LA ESPERANZA</div>

        <div class="row-cols mt-3">
            <div>
                <label class="form-label">GÉNERO:</label>
                <div class="input-box">F</div>
            </div>
            <div>
                <label class="form-label">ESTADO CIVIL:</label>
                <div class="input-box">SOLTERA</div>
            </div>
        </div>
    </div>
</div>

</body>
</html>