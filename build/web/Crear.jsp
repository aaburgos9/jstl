<%-- 
    Document   : Crear
    Created on : 1/11/2019, 10:37:02 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
    </head>

     <body>
        <div class="container">
    <center>
        <h1>Añadir Producto</h1>
       

        <form action="Model/insertar.jsp" method="post">
            <table class="table table-info" width="60%">

                <tbody>
                    <tr>
                        <td><label>Ref</label></td>
                        <td><input class="form-control" type="number"  name="Ref"/></td>

                    </tr>
                    <tr>
                        <td><label>Sabor</label></td>
                        <td><input class="form-control" type="text" name="Sabor"/></td>
                    </tr>
                     <tr>
                        <td><label>Cantidad</label></td>
                        <td><input class="form-control" type="number" name="Cantidad"/></td>
                    </tr>
                    <tr>
                        <td><label>Precio</label></td>
                        <td><input class="form-control" type="number" name="Precio"/></td>
                    </tr>
                    <tr>
                        <td><label>Presentacion</label></td>
                        <td><input class="form-control" type="text" name="Presentacion"/></td>
                    </tr>
                    <tr>
                        <td><input class="btn btn-outline-success" type="submit" value="Guardar" /></td>
                     
                    </tr>
                </tbody>
                
            </table>
        </form><td><button class="btn btn-outline-info"><a href="index.jsp">Regresar</a></button></td>
    </center>
</div>
    </body>
</html>
