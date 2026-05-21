<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.OperacionesTexto" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Utilitario de Texto</title>
</head>
<body>

    <h1>Utilitario de Texto</h1>
    <a href="index.jsp">Volver</a>

    <form method="post" action="texto.jsp">
        <p>
            <label>Cadena de texto:</label><br>
            <input type="text" name="cadena" required>
        </p>
        <p>
            <label>Posición de carácter (base 0):</label><br>
            <input type="number" name="posicion"required>
        </p>
        <button type="submit">Analizar</button>
    </form>

    <%
        String cadena = request.getParameter("cadena");
        String pPosicion = request.getParameter("posicion");

        if (cadena != null) {
            OperacionesTexto ot = new OperacionesTexto(cadena);
            int posicion = Integer.parseInt(pPosicion);
    %>
        <h2>Resultados</h2>
        <p>Longitud: <%= ot.obtenerCantidadDeCaracteres() %></p>
        <p>Mayúsculas: <%= ot.aMayusculas() %></p>
        <p>Carácter en posición <%= posicion %>: <%= ot.obtenerCaracter(posicion) %></p>
        <p>Reemplazar vocales: <%= ot.reemplazarCaracteres() %></p>
        <p>¿Es palíndromo? <%= ot.esPalindromo() ? "Sí" : "No" %></p>
    <%
        }
    %>
</body>
</html>