<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%
    if (session.getAttribute("listTarea") == null) {
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("listTarea", lisaux);
    }
    ArrayList<Tarea> lista = (ArrayList<Tarea>) session.getAttribute("listTarea");
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
        <p>Nombre: Williams Quiñajo Fernandez</p>

        <a href="MainServlet?op=nuevo">Nuevo</a>

        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Tarea item : lista) {

            %>
            <tr>
                <td> <%= item.getId()%> </td>
                <td> <%= item.getTarea()%> </td>
                <td><input type="checkbox" name="completado"></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return(confirm('Esta seguro de eliminar la tarea N° <%= item.getId()%>'))">Eliminar</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </center>
</body>
</html>
