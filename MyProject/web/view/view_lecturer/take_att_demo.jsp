<%-- 
    Document   : take_att_demo
    Created on : Oct 24, 2022, 8:40:17 PM
    Author     : win
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Take Attendance</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            .header1 strong{
                font-size: 14px;

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
                    <a href="">
                        <span>${requestScope.ses.lecturer.name}</span>
                    </a> | 
                    <span> CAMPUS: FPTU-Hòa Lạc</span>
                </div>
                <div class="a2">
                    <span>
                        <a href="timetable?lid=${requestScope.ses.lecturer.id}" style="text-decoration: none">Timetable of lecture</a>                   
                    </span>
                </div>
            </div>
            <div>
                <h1>Take Attendance</h1>  
            </div>
            <div>
                <p> <span>Attendance for</span>
                    <b>${requestScope.ses.lecturer.name}</b> at Slot  ${requestScope.ses.timeslot.id} on ${requestScope.ses.date}, Fall, at ${requestScope.ses.room.name}.
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
        </div>
    </body>
</html>
