<%@page import="com.emergentes.modelo.Tarea"%>
<%
    Tarea reg = (Tarea) request.getAttribute("miobjtar");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestor de Tareas</title>
        <style>
            body {
                background: #E4FBF8;

            }
            table{
                border-collapse: collapse;
                border-color: yellow;
            }
            th{
                border-top-width: 15px;
                border-color: yellow;
                font-size: 20px;
                background-color: goldenrod;
            }
            td{
                border-color: yellow;
                background-color: khaki;
            }

        </style>
    </head>
    <body>
    <center>
        <h1>Gestor de Tareas</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="<%= reg.getTarea()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="Enviar"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
