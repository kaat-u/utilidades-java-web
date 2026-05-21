<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.OperacionesNumericas" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Utilitario Numérico</title>
</head>
<body>

    <h1>Utilitario Numérico</h1>
    <a href="index.jsp"> Volver</a>

    <form method="post" action="numerico.jsp">
        <p>
            <label>Número entero:</label><br>
            <input type="number" name="entero" required>
        </p>
        <p>
            <label>Número real:</label><br>
            <input type="number" name="real" step="any" required>
        </p>
        <button type="submit">Calcular</button>
    </form>

    <%
        String pEntero = request.getParameter("entero");
        String pReal = request.getParameter("real");

        if (pEntero != null && pReal != null) {
            int entero = Integer.parseInt(pEntero);
            double real = Double.parseDouble(pReal);
            OperacionesNumericas on = new OperacionesNumericas(entero, real);
    %>
        <h2>Resultados</h2>
        <p>Cantidad de dígitos: <%= on.cantidadDigitos() %></p>
        <p>Potencia al cuadrado: <%= on.potencia() %></p>
        <p>Raíz cuadrada: <%= on.raizCuadrada() %></p>
        <p>Redondeo: <%= on.redondear() %></p>
        <p>Máximo entre entero y real: <%= on.maximo() %></p>
        <p>Área del círculo: <%= on.areaCirculo() %></p>
        <p><strong>Interpretación:</strong> <%= on.interpretar() %></p>
    <%
        }
    %>

</body>
</html>