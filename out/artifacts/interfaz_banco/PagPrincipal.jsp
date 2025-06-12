<%--
  Created by IntelliJ IDEA.
  User: israe
  Date: 10/6/2025
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Banco Estudiantil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/PagPrincipal.css">
</head>
<body>

<div class="container mt-5">
    <div class="card card-custom">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/No_image_available.svg/240px-No_image_available.svg.png" width="50" alt="Logo" />
            <h5 class="mb-0">KERLY PILCO</h5>
            <strong>2562468</strong>
        </div>

        <div class="mb-3">
            <div class="btn-group w-100" role="group">
                <!-- CAMBIA LA RUTA DE href SEGÚN TU PROYECTO -->
                <a href="cuenta.html" class="btn btn-secondary">CUENTA</a>
                <a href="tarjetas.html" class="btn btn-light">TARGETAS</a>
            </div>
        </div>

        <div class="saldo-box mb-3">
            <strong>KERLY PILCO</strong>
            <div class="d-flex justify-content-between mt-2">
                <span>CUENTA TRANSACCIONAL</span>
                <div>
                    <small>SALDO DISPONIBLE</small>
                    <h4 class="text-success m-0">15.2</h4>
                </div>
            </div>
        </div>

        <div class="row text-center mb-3">
            <div class="col-6 col-md-3 mb-3">
                <!-- CAMBIA href A LA RUTA DE VALIDACIÓN -->
                <a href="validaciones.jsp" class="icon-box text-decoration-none text-dark">
                    <img src="https://cdn-icons-png.flaticon.com/512/190/190411.png" alt="Validación" />
                    <strong>VALIDACION</strong>
                </a>
            </div>
            <div class="col-6 col-md-3 mb-3">
                <!-- CAMBIA href A LA RUTA DE PRÉSTAMOS -->
                <a href="prestamos.html" class="icon-box text-decoration-none text-dark">
                    <img src="https://cdn-icons-png.flaticon.com/512/2910/2910791.png" alt="Préstamos" />
                    <strong>PRESTAMOS</strong>
                </a>
            </div>
            <div class="col-6 col-md-3 mb-3">
                <!-- CAMBIA href A LA RUTA DE APORTACIONES -->
                <a href="aportaciones.jsp" class="icon-box text-decoration-none text-dark">
                    <img src="https://cdn-icons-png.flaticon.com/512/2460/2460164.png" alt="Aportaciones" />
                    <strong>APORTACIONES</strong>
                </a>
            </div>
            <div class="col-6 col-md-3 mb-3">
                <!-- CAMBIA href A LA RUTA DE REPORTES PDF -->
                <a href="reportes.jsp" class="icon-box text-decoration-none text-dark">
                    <img src="https://cdn-icons-png.flaticon.com/512/337/337946.png" alt="Reportes PDF" />
                    <strong>REPORTES PDF</strong>
                </a>
            </div>
        </div>

        <!-- CAMBIA LA RUTA DEL CIERRE DE SESIÓN SEGÚN TU LÓGICA -->
        <a href="logout.html" class="btn btn-danger w-100">CERRAR SESIÓN</a>
    </div>
</div>

<!-- Bootstrap Bundle JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>