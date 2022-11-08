<%-- 
    Document   : take_att_sus
    Created on : Nov 8, 2022, 5:19:37 AM
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
                        <span>${sessionScope.account.displayname}</span>
                    </a> | 
                    <span> CAMPUS: FPTU-Hòa Lạc</span>
                </div>
                <div class="a2">
                    <span>
                        <a href="timetable" style="text-decoration: none">Timetable of lecture</a>                   
                    </span>
                </div>
            </div>
            <div>
                <h1>Take Attendance</h1>  
            </div>
            <h2 style="color: green"> Take attendance successful!</h2>


            <div>
                <br />
                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span>Phòng dịch vụ sinh viên</span>: Email: <a href="">dichvusinhvien@fe.edu.vn</a>.
                Điện thoại: 035xxxxxxx <span> </span>
                <br />
            </div>                         

        </div>
    </body>
</html>
