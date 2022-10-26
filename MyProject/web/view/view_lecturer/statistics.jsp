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
        <title>Statistics Report Attendance</title>
    <style>
        .table{
            width: 100%;
            text-align: center;
        }
        
        
    </style>
        
        
    </head>
    <body>
        <a href="timetable?lid="> Back to time table</a>
        <br/>
        
        Statistics Report Attendance of Group: ${requestScope.group.id} <br/>
        
        <c:forEach  items="${requestScope.group.sessions}" var="ses"  begin="0" end="0">
                Lecturer: ${ses.lecturer.name} <br/>
                Subject: ${ses.group.subject.name} <br/>
                Room: ${ses.room.name}
        </c:forEach>
        
            <table class="table" border="1px">
                <tr>
                    <td>No.</td>
                    <td>Group</td>
                    <td>Student ID</td>
                    <td>Full Name</td>
                    <!-- need a loop to present all ses -->
                    <c:forEach items="${requestScope.group.sessions}" var="ses">
                        <td> session ${ses.index}</td>
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
                                    <c:forEach items="${requestScope.key}" var="map"  >
                                    <c:if test="${map.key eq std.id}">
                                        <td>${map.value}%</td>
                                    </c:if>
                                </c:forEach>   
                    </c:forEach>    
                </tr>   
            </table>
    </body>
</html>