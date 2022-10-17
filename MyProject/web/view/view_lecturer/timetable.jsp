<%-- 
    Document   : timtable
    Created on : Oct 16, 2022, 10:15:54 PM
    Author     : win
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table</title>
    </head>
    <body>
        Lecturer: <input type="text" readonly="readonly" />
        <form action="timetable" method="GET">
            <input type="hidden" name="lid" />
            From: <input type="date" name="from" />
            To: <input type="date" name="to" />
            <input type="submit" value="View"/> 
        </form>
        
    </body>
</html>
