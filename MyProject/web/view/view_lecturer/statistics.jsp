<%-- 
    Document   : statistics
    Created on : Oct 26, 2022, 1:15:35 AM
    Author     : win
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statistics</title>
    </head>
    <body>
        Take attendance for Group: ${requestScope.ses.group.name} <br/>
        Subject: ${requestScope.ses.group.subject.name} <br/>
        Room: ${requestScope.ses.room.name} <br/>
        Date: ${requestScope.ses.date} - ${requestScope.ses.slot.description}<br/>
        Attended: <span style="color: red;"> ${requestScope.ses.attanded?"Yes":"No"} </span>


        
            <input type="hidden" name="sesid" value="${param.id}"/>
            <table border="1px">
                <tr>
                    <td>No.</td>
                    <td>Group</td>
                    <td>Student ID</td>
                    <td>Full Name</td>
                    <!-- need a loop to present all ses -->
                    <c:forEach items="${requestScope.group.sessions}" var="ses">
                        <td> session ${ses.id}</td>
                    </c:forEach>
                    <td> Percent Absent</td>   
                       
                </tr>

                <c:forEach items="${requestScope.group.students}" var="std" varStatus="loop"> <!-- vong lap so session -->
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>${requestScope.group.id}</td>
                        <td>${std.id}</td>
                        <td>${std.name}</td>

                        <!-- need a loop -->    
                        <c:forEach items="${requestScope.group.sessions}" var="a">  
                                <c:forEach items="${a.attandances}" var="b">
                                    <c:if test="${b.student.id eq std.id}">
                                <td>
                                    <c:choose>
                                        <c:when test="${b.present}">
                                            <p style="color: green"> P </p>
                                        </c:when> 
                                        <c:otherwise>
                                            <p  style="color: red"> A </p>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                    </c:if>
                            </c:forEach>
                        </c:forEach>   
                                
                               
                                
                    </c:forEach>    
                </tr>   
            </table>
    </body>
</html>