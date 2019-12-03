<%-- 
    Document   : Delete
    Created on : 2/11/2019, 12:40:14 PM
    Author     : Andres
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var = "Gaseosas"  driver="org.postgresql.Driver"
                       url = "jdbc:postgresql://localhost:5432/Gaseosas"
                       user = "andres"  password = "toradora"/>
        <sql:update dataSource="${Gaseosas}" var="count">
           DELETE FROM public."Pool"
	WHERE  id =${param.id}
        </sql:update>
     
   <c:redirect url="/index.jsp" >
        
            </c:redirect>
    </body>
</html>