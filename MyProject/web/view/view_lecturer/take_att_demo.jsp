<%-- 
    Document   : take_att_demo
    Created on : Oct 24, 2022, 8:40:17 PM
    Author     : win
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Take Attendance</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="bootstrap.min.css" rel="stylesheet">	
        <style>

            .a {
                margin-top:10px;
                margin-bottom: 50px;

            }
            .a1 {
                float: right;
                margin-right: 20px;
            }
            .a1 a, .a1 span {
                border: none;
                outline: none;
                padding: 4px;
                color: white;
                background-color: #333;
                border-radius: 5px;
            }

            .a2 {
                text-decoration: none;
            }
            .b table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            td {
                text-align: left;
                padding: 8px;
            }
            .b td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }
            .b th {
                background-color: blue;
            }
            .save {
                margin-top: 20px;
                text-align: center;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1><span>FPT University Academic Portal</span> </h1>
                </div>
                <div class="col-md-4">
                    <table>
                        <tr>
                            <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>

                        </tr>
                        <tr>
                            <td><a href="">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" />
                                </a>
                            </td>
                            <td><a href="">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" />
                                </a>
                            </td>

                        </tr>
                    </table>
                </div>
            </div>



            <div class="a">
                <div class="a1">
                    <a href="">
                        <span>leacturer</span>
                    </a> | 
                    <span> CAMPUS: FPTU-Hòa Lạc</span>
                </div>
                <div class="a2">
                    <span>
                        <a href="timetable?lid=${requestScope.ses.lecturer.id}">Timetable of lecture</a>                   
                    </span>
                </div>
            </div>
            <div>
                <h1>Take Attendance</h1>  
            </div>
            <div>
                <p> <span>Attendance for</span>
                    <b>${requestScope.ses.lecturer.name}</b> at ${requestScope.ses.timeslot.description} on ${requestScope.ses.date}, Fall2022, at ${requestScope.ses.room.name}.
                    This is the session number ${requestScope.ses.id +1 } of the course.
                </p>
            </div>


            <div class="b">
                <form action="take_attandance" method="POST">
                    <input type="hidden" name="sesid" value="${param.id}"/>
                    <table>
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>StudentID</th>
                                <th>GroupID</th>
                                <th>FULLNAME</th>
                                <th>PRESENT</th>
                                <th>ABSENT</th>
                                <th>COMMENT</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.ses.attandances}" var="a" varStatus="loop">
                                <tr>
                                    <td>${loop.index+1}</td>
                                    <td>${a.student.id}
                                        <input type="hidden" name="stdid" value="${a.student.id}"/>
                                    </td>
                                    <td>${requestScope.ses.group.id}</td>
                                    <td>${a.student.name}</td>
                                    <td><input type="radio"
                                               <c:if test="${a.present}">
                                                   checked="checked"
                                               </c:if>
                                               name="present${a.student.id}" value="present" /></td>
                                    <td><input type="radio"
                                               <c:if test="${!a.present}">
                                                   checked="checked"
                                               </c:if>
                                               name="present${a.student.id}" value="absent" /></td>
                                    <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                                </tr>   

                            </c:forEach> 
                        </tbody>
                    </table>
                    <div class="save">
                        <input  type="submit" value="Save"/>
                    </div>
                </form> 
            </div>
    </body>
</html>
