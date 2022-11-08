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
            .container{
                margin-left: 180px;
                margin-right: 180px;
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                font-weight: normal;
                font-size: 13px;

            }
            .header1{
                display: flex;
                justify-content: space-between;
                margin-bottom: 30px;
            }
            #head{
                font-weight: normal;
            }
            .table{
                width: 100%;
                text-align: center;
                font-family: arial, sans-serif;
                border-collapse: collapse;
            }
            .thead td{
                background-color: blue;
                font-weight:bold ;
                padding: 7px;
                color:black;
            }

            .thead td a{
                color:black;
            }
            .a {
                width:100%;
                height: 30px;
                margin-top:10px;
                margin-bottom: 50px;
                background-color: gainsboro;
            }
            .a1 {
                margin-top: 7px;
                float: right;
                margin-right: 10px;
            }
            .a1 a, .a1 span {
                border: none;
                outline: none;
                padding: 4px;
                color: white;
                background-color: #0FCC45;
                border-radius: 5px;
            }

            .a2 {
                float:left;
                margin-top: 7px;
                margin-left: 5px;
                text-decoration: none;
            }




        </style>


    </head>
    <body>
        <div class="container">
            <div class="header1">
                <div id="head">
                    <h1><span id="head">FPT University Academic Portal</span></h1>
                </div>
                <div>
                    <table>
                        <tr>
                            <td><strong  style=" font-weight: bold; font-size: 13px;">FAP mobile app (myFAP) is ready at</strong></td>
                        </tr>
                        <tr>
                            <td><a href="https://apps.apple.com/app/id1527723314">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" /></a></td>

                        </tr>
                    </table> 
                </div>

            </div>

            <div class="a">
                <div class="a1">
                    <a href="" style="text-decoration: none">
                        <span>${sessionScope.account.displayname}</span>
                    </a> | <a href='logout' style="text-decoration: none" >logout</a> |
                    <span> CAMPUS: FPTU-Hòa Lạc</span>
                </div>
                <div class="a2">
                    <span>
                        <a href="timetable" style="text-decoration: none">Timetable of lecture</a>                   
                    </span>
                </div>
            </div>
            <div>        
                Statistics Report Attendance of Group: ${requestScope.group.id} <br/>
                <c:forEach  items="${requestScope.group.sessions}" var="ses"  begin="0" end="0">
                    Lecturer: ${ses.lecturer.name} <br/>
                    Subject: ${ses.group.subject.name} <br/>
                </c:forEach>
                    <br/>
            </div>
            <table class="table" border="1px">
                <tr class="thead">
                    <td>No.</td>
                    <td>Group</td>
                    <td>Student ID</td>
                    <td>Full Name</td>
                    <td> Percent Absent</td>
                    <!-- need a loop to present all ses -->

                    <c:forEach items="${requestScope.group.sessions}" var="ses">
                        <td>
                            <c:if test="${ses.attandated}" >
                                <a href="viewslot?id=${ses.id}"  style="text-decoration:none ">
                                    session ${ses.index}  <br/>
                                    (${ses.date}) 
                                </a> 
                            </c:if>
                            <c:if test="${!ses.attandated}" >
                                session ${ses.index}  <br/>
                                (${ses.date}) 
                            </c:if>
                        </td>
                    </c:forEach>

                </tr>

                <c:forEach items="${requestScope.group.students}" var="std" varStatus="loop"> <!-- vong lap so session -->
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>${requestScope.group.id}</td>
                        <td>${std.id}</td>
                        <td>${std.name}</td>
                        <c:forEach items="${requestScope.key}" var="map"  >
                            <c:if test="${map.key eq std.id}">
                                <td>${map.value}%</td>
                            </c:if>
                        </c:forEach>   
                        <!-- need a loop -->    
                        <c:forEach items="${requestScope.group.sessions}" var="a">  
                            <c:forEach items="${a.attandances}" var="b">
                                <c:if test="${b.student.id eq std.id}">
                                    <td style="font-weight: bold">
                                        <c:choose>
                                            <c:when test="${b.present}">
                                                <p style="color: green"> P </p>
                                            </c:when> 
                                            <c:when test="${!a.attandated}">
                                                <p style="color: #33333333"> Not yet </p>
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
            <br/>
            Giang vien sonnt5 da day ${requestScope.teached}/${requestScope.numberses} (${requestScope.perteached}%)      
            <div>
                <br />
                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span>Phòng dịch vụ sinh viên</span>: Email: <a href="">dichvusinhvien@fe.edu.vn</a>.
                Điện thoại: 035xxxxxxx <span> </span>
                <br />
            </div>       
        </div>
    </body>
</html>