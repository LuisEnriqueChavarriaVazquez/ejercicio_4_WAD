
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">

            <div class="row">
                <div class="col s12 m6">
                    <div class="card blue-grey darken-1">
                        <div class="card-content white-text">
                            <span class="card-title">Datos e indicaciones</span>.
                            <p>Despliegue de los datos registrados.</p>
                        </div>
                    </div>
                </div>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Id usuario</th>
                        <th>Nombre del usuario</th>
                        <th>Descripcion de los datos</th>
                        <th>Edición de datos</th>
                        <th>Borrar datos</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${listaDeCategorias}">
                        <tr>
                            <td>
                                <a class="btn btn-primary btn-xs" href="CategoriaServlet?accion=ver&id=<c:out value="${dto.entidad.idCategoria}" />">
                                    <c:out value="${dto.entidad.idCategoria}" />
                                </a>
                            </td>
                            <td>
                                <c:out value="${dto.entidad.nombreCategoria}" />
                            </td>
                            <td>
                                <c:out value="${dto.entidad.descripcionCategoria}" />
                            </td>
                            <td>
                                <a class="btn btn-success btn-xs" href="CategoriaServlet?accion=actualizar&id=<c:out value="${dto.entidad.idCategoria}" />">
                                    Editar la opción
                                </a>
                            </td>
                            <td>
                                <a class="btn btn-danger btn-xs" href="CategoriaServlet?accion=eliminar&id=<c:out value="${dto.entidad.idCategoria}" />">
                                    Eliminar la opción
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>

        </div>
    </body>
</html>
