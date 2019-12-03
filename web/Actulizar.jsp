<%-- 
    Document   : Update
    Created on : 1/11/2019, 10:37:33 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page import = "javax.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actulizar</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
<html>
   <head>
      <title>JSTL fmt:parseNumber Tag</title>
   </head>
     <body>
                 <sql:setDataSource var = "Gaseosas"  driver="org.postgresql.Driver"
                       url = "jdbc:postgresql://localhost:5432/Gaseosas"
                       user = "andres"  password = "toradora"/>
        <sql:query dataSource="${Gaseosas}" var="result">
          SELECT * FROM public."Pool"
    WHERE  id =${param.id}
        </sql:query>
        <div class="container">
    <center>
        <h1>Actulizar Producto</h1>
       

        <form action="Model/Update.jsp" method="post">
            <table  class="table table-info" width="60%" >

                <tbody>
                     <c:forEach var="Gaseosas" items="${result.rows}">
                    <tr>
                <input type="hidden" value="${param.id}" name="id"/>
                        <td><label>Ref</label></td>
                        <td><input class="form-control" type="number" value="${Gaseosas.Ref}" name="Ref"/></td>

                    </tr>
                    <tr>
                        <td><label>Sabor</label></td>
                        <td><input class="form-control" type="text" value="${Gaseosas.Sabor}" name="Sabor"/></td>
                    </tr>
                     <tr>
                        <td><label>Cantidad</label></td>
                        <td><input class="form-control" type="number" value="${Gaseosas.Cantidad}" name="Cantidad"/></td>
                    </tr>
                    <tr>
                        <td><label>Precio</label></td>
                        <td><input class="form-control" type="number" value="${Gaseosas.Precio}" name="Precio"/></td>
                    </tr>
                    <tr>
                        <td><label>Presentacion</label></td>
                        <td><input class="form-control" type="text" value="${Gaseosas.Presentacion}" name="Presentacion"/></td>
                    </tr>
                    <tr>
                        <td><input class="btn btn-outline-success" type="submit" value="Guardar" /></td>
                        <td><button class="btn btn-outline-info"><a href="index.jsp">Regresar</a></button></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>
    </center>
    </body>
</html>
