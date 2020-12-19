
<%@page import="com.ipn.mx.modelo.dto.CategoriaDTO" %>
<%@page import="com.ipn.mx.modelo.dao.CategoriaDAO" %>
<%@page import="java.util.List" %>
<%@page errorPage="error.jsp?de=listaDeCategorias.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" >

        <title>JSP Page</title>
    </head>
    <body>
        <table class="table">
            <thead>
                <tr>
                    <th>Clave de nuestra categoria</th>
                    <th>Nombre de nuestra categoria</th>
                    <th>Descripcion de nuestra categoria</th>
                </tr>

            </thead>
            <%CategoriaDAO dao = new CategoriaDAO();
                List lista = dao.readAll();
                if (lista != null) {
                    for (int i = 0; i < lista.size(); i++) {
                        CategoriaDTO dto = (CategoriaDTO) lista.get(i);%>
            <tbody>
                <tr>
                    <td> <%= dto.getEntidad().getIdCategoria()%></td>
                    <td><%= dto.getEntidad().getNombreCategoria()%></td>
                    <td><%= dto.getEntidad().getDescripcionCategoria()%></td>
                    <td><a href="eliminarCategoria.jsp?id=<%= dto.getEntidad().getIdCategoria()%>">Eliminar</a></td>
                </tr>
            </tbody>
            <%}}%>
        </table>
    </body>
</html>
