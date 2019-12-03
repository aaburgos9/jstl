<%-- 
    Document   : Update
    Created on : 2/11/2019, 01:58:22 PM
    Author     : Andres
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <sql:setDataSource var = "Gaseosas"  driver="org.postgresql.Driver"
                       url = "jdbc:postgresql://localhost:5432/Gaseosas"
                       user = "andres"  password = "toradora"/>

    <sql:update dataSource = "${Gaseosas}" var = "result">
        UPDATE public."Pool" SET "Ref"=?, "Sabor"=?, "Precio"=?, "Cantidad"=?, estado=True, "Presentacion"=?
        WHERE id =${param.id}
        <sql:param value="${Integer.parseInt(param.Ref)}" />
        <sql:param value="${param.Sabor}" />
        <sql:param value="${Integer.parseInt(param.Precio)}" />
        <sql:param value="${Integer.parseInt(param.Cantidad)}" />
        <sql:param value="${param.Presentacion}" />
    </sql:update>
    
    <c:redirect url="/index.jsp" >

    </c:redirect>
</html>
