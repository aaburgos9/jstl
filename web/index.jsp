<%-- 
    Document   : index
    Created on : 1/11/2019, 07:55:40 PM
    Author     : Andress
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!DOCTYPE html>
<html>
    <head>

        <title>List</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <style type="text/css">
          .btn-circle.btn-xl {
    width: 70px;
    height: 70px;
    padding: 10px 16px;
    border-radius: 35px;
    font-size: 24px;
    line-height: 1.33;
}

.btn-circle {
    width: 30px;
    height: 30px;
    padding: 6px 0px;
    border-radius: 15px;
    text-align: center;
    font-size: 12px;
    line-height: 1.42857;
}

        </style>
    </head>
    <body>
    <sql:setDataSource var = "Gaseosas"  driver="org.postgresql.Driver"
                       url = "jdbc:postgresql://localhost:5432/Gaseosas"
                       user = "andres"  password = "toradora"/>
                           <button type="button" class="btn btn-info btn-circle btn-xl"><i class="fa fa-check"></i><a href="Crear.jsp">+</a></button>
    <div class="container">
    <center>
    <div><h1>Lista de Gaseosas</h1></div>
    <sql:query dataSource = "${Gaseosas}" var = "result">
        SELECT * FROM public."Pool"
        <a href="index.jsp"></a>
    </sql:query>
<table class="table table-white">
         <tr>
            <th>Ref</th>
            <th>Sabor</th>
            <th>presentacion</th>
            <th>Precio</th>
            <th>Cantidad</th>
            <th>Acciones</th>
            
         </tr>
         
         <c:forEach var = "Gaseosas" items = "${result.rows}">
            <tr>
               <td><c:out value = "${Gaseosas.Ref}"/></td>
               <td><c:out value = "${Gaseosas.Sabor}"/></td>
               <td><c:out value = "${Gaseosas.Presentacion}"/></td>
               <td><c:out value = "${Gaseosas.Precio}"/></td>
               <td><c:out value = "${Gaseosas.Cantidad}"/></td>
               <td><button class="btn btn-outline-danger"><a href="Model/Delete.jsp?id=<c:out value='${Gaseosas.id}'/>">Eliminar</a></button><button class="btn btn-outline-info"><a href="Actulizar.jsp?id=<c:out value='${Gaseosas.id}'/>">Actulizar</a></button></td>
            </tr>
         </c:forEach>
      </table>
    </center>
</div>
</body>


</html>
