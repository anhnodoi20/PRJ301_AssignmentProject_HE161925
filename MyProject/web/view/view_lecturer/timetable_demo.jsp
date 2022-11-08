<%-- 
    Document   : timtable_demo
    Created on : Oct 17, 2022, 12:45:44 PM
    Author     : win
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="../../WEB-INF/tlds/customtag.tld" prefix="fpt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table</title>
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
            .header2{
                display: flex;
                justify-content: space-between;
                background-color: #F3F3F3;
                padding-bottom: 10px;
                padding-top: 10px;
            }
            #homee{
                margin-left: 20px;
            }
            #homee a{
                text-decoration: none;
            }
            .choose{
                margin-right: 20px;
                font-size: 11px;
                font-weight: 700;
            }
            .choose a {
                background-color: #0fcc45;
                padding: 3px;
                border-radius: 2px;
                text-decoration: none;
                color: white;
                font-weight: bold;
            }

            .choose span {
                background-color: #0fcc45;
                padding: 3px;
                border-radius: 2px;
                text-decoration: none;
                color: white;
                font-weight: bold;
            }
            .nd{
                font-size: 14px;
            }
            .nd h2{
                font-weight: normal;
                font-size: 25px;
                padding-left: 20px;
            }
            .content1 h2{
                margin-top: 50px;
                font-size: 30px;
            }
            .timetable {
                font-size: 14px;
                width: 100%;
            }
            .date{
                text-indent: initial;
            }
            .date tr{
                height: 23px;
                background-color: #6b90da;
                text-align: left;
            }
            .date th{
                font-weight: normal;
            }

            .gsub{
                color: #2A7BC0;
            }

            tbody td{
                box-sizing: border-box;
                border-bottom: 1px solid #f0f0f0;
                background-color: #fff;
                /*width: 13.5%;*/
            }
            #materials{
                background-color: #f0ad4e;
                color: white;
                font-size: 75%;
                border-radius: 0.25em;
                text-align: center;
                font-weight: 700;
                padding: 0.2em 0.6em 0.3em;
                text-decoration: none;

            }
            #meet{
                background-color: #777;
                font-weight: 700;
                font-size: 75%;
                border-radius: 0.25em;
                padding: 0.2em 0.6em 0.3em;
                color: white;
                text-decoration: none;
            }
            #sub{
                text-decoration: none;
                color: cornflowerblue;
            }
            #time{
                background-color: #5cb85c;
                display: inline;
                padding: 0.2em 0.6em 0.3em;
                font-size: 75%;
                font-weight: 700;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: 0.25em;
            }
            .last{
                font-size: 13px;
                font-weight: 100;
            }
            #last2{
                font-size: 13px;
                font-weight: 100;
            }
            #last2 a {
                color: #6b90da;
                text-decoration: none;

            }
            #last3{
                font-size: 13px;
                font-weight: 100;
            }
            #last3 p a {
                color: #6b90da;
                text-decoration: none;
            }
            .option{
                margin-left: auto;
                margin-right: auto;
            }
            .roomm{
                padding: 1px;
                margin-bottom: 0px;
                margin-top: 0px;

            }
            .format{
                text-align: center;
            }
            .datetime{
                text-align: center;
            }
            .slot{
                background-color: #32CD32;
                width: 70px;
                color: white;
                font-size: 10px;
                text-align: center;
                border-radius: 5px;
                margin-bottom: 5px;
                padding-bottom: 0.5px;
            }

        </style>

        <script>
            function removeStudent(id)
            {
                var result = confirm("Ban se logout a?");
                if(result)
                    window.location.href="logout";
            }   
        </script>
        
    </head>
    <body>
        <div class="container"> 
            <div class="header1">
                <div id="head">
                    <h1><span id="head">FPT University Academic Portal  </span></h1>
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
            <div>
                <div  class="header2">
                    <span id="homee"><a href="">Home</a>&nbsp;|&nbsp;<b>View Schedule</b></span>
                    <div class="choose">
                        <a href="">
                            <span> 
                                <fpt:FptTag name="${sessionScope.account.displayname}"/> 
                                <fpt:TaghasBody >  </fpt:TaghasBody>
                            </span></a> |<a href="logout" onclick="removeStudent()" style="color:white" >Logout</a>|
                        <span>CAMPUS: FPTU-Hòa Lạc</span>
                    </div>
                </div>
                <tr>
                <div class="nd">
                    <h2>Lecturer of week
                    </h2>

                    <div>
                        <p>
                            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br />
                            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br />
                            Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br />
                            Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br/>
                            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br/>
                            Little UK (LUK) thuộc tầng 5 tòa nhà Delta
                        </p>
                    </div>
                </div>

                <div>
                    <!--                        <form action="timetable" method="GET" class="format">
                                                <input type="hidden" name="lid" value="${sessionScope.account.lid}"/> 
                                            From:
                                            <input type="date" name="from" value="${requestScope.from}"/> 
                                            To:
                                            <input type="date" name="to" value="${requestScope.to}"/>
                                            <input type="submit" value="View"/> 
                                        </form>-->

                    <form action="timetable" method="GET" class="header">
                        <input type="hidden" name="lid" value="${param.lid}"/>
                        Year: <select name="year">
                            <option value="${requestScope.year}"> <c:out value = "${requestScope.year}"/></option>
                            <c:forEach var="i" begin="${requestScope.year}" end="${requestScope.year + 3}" >
                                <option value="${i-2}"> <c:out value = "${i-2}"/></option>
                            </c:forEach>
                        </select> <br/>
                        Week:<select name="week">
                            <option value=${requestScope.daymonth}>${requestScope.daymonth}</option>
                            <c:forEach items="${requestScope.daymonths}" var="daymonth" >
                                <option value="${daymonth}">${daymonth}</option>
                            </c:forEach>
                        </select> 
                        <input type="submit" value="View"/>
                    </form>


                </div>

                <table class="timetable">
                    <thead class="date">
                    <th  rowspan="2">
                        <c:forEach items="${requestScope.dates}" var="d">
                        <td class="datetime">${helper.getDayNameofWeek(d)} <br/> ${d}</td>
                        </c:forEach>
                    </th>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.slots}" var="slot">
                            <tr>
                                <td>
                                    <p>  Slot ${slot.id}      </p>
                                </td>
                                <c:forEach items="${requestScope.dates}" var="d">
                                    <td>
                                        <c:forEach items="${requestScope.sessions}" var="ses">
                                            <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">

                                                <a class="gsub" style="text-decoration: none" href="statistics?gid=${ses.group.id}&lid=${sessionScope.account.lid}&subid=${ses.group.subject.id}">
                                                    ${ses.group.name}-${ses.group.subject.name}
                                                </a>
                                                <p class="roomm"> ${ses.room.name} </p>
                                                <c:choose>
                                                    <c:when test="${ses.attandated}">
                                                        <p class="roomm" style="color: green">(attended)</p>
                                                    </c:when> 
                                                    <c:when test="${ses.attandated == 'false'}">
                                                        <p class="roomm" style="color: red">(Not Yet)</p>
                                                    </c:when> 
                                                    <c:otherwise>
                                                        <p class="roomm" style="color: red">(fucking shit)</p>
                                                    </c:otherwise>
                                                </c:choose>

                                                <a href="take_attandance?id=${ses.id}">
                                                    <p class="roomm" style="color: green"> <fpt:Test check="${ses.attandated}"/></p>     
                                                </a>
                                                <c:if test="${!ses.attandated}">
                                                    <div class="slot">
                                                        ${slot.description}
                                                    </div>   
                                                </c:if> 

                                            </c:if>  
                                        </c:forEach>
                                    </td>
                                </c:forEach>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
                <div class="last">
                    <div>
                        <p>
                            <b>More note / Chú thích thêm</b>:
                        </p>
                        <div>
                            <ul>
                                <li>(<font color='green'>attended</font>): ${requestScope.lecturer.name} had attended this activity / ${requestScope.lecturer.name} đã tham gia hoạt động này</li>
                                <li>(<font color='red'>Not Yet</font>): ${requestScope.lecturer.name} have NOT attended this activity / ${requestScope.lecturer.name} chưa tham gia buổi này</li>   
                                <li>(-): no data was given / chưa có dữ liệu</li> 
                            </ul>
                        </div>
                        <br/>
                    </div>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <table>
                                <tr>
                                    <td>
                                        <div id="last2">
                                            <div>
                                                <br />
                                                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span>Phòng dịch vụ sinh viên</span>: Email: <a href="">dichvusinhvien@fe.edu.vn</a>.
                                                Điện thoại: 035xxxxxxx <span> </span>
                                                <br />
                                            </div>                         
                                    </td>
                                </tr>
                                <tr>
                                    <td id="last3">
                                        <p style="text-align: center">

                                        </p>     </td>  
                                </tr>

                </div>
                </table>
            </div>
        </div>      

    </body>
</html>
