<%-- 
    Document   : timetable
    Created on : Oct 13, 2022, 7:25:42 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
	View Schedule
</title><link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" /><link rel="Stylesheet" href="../fu.css" type="text/css" /><link rel="Stylesheet" href="../JavaScript/jquery.css" type="text/css" /><link rel="Stylesheet" href="../JavaScript/jquery-ui.css" type="text/css" /><link rel="Stylesheet" href="../JavaScript/jquery.alerts.css" type="text/css" />
    
    <script src="../JavaScript/jquery.min.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery_002.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery_003.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery-1.8.3.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery-ui.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery.alerts.js" type="text/javascript"></script>
    
    <link rel="Stylesheet" href="../Content/bootstrap.css" type="text/css" /><link rel="Stylesheet" href="../Content/bootstrap.min.css" type="text/css" /><link rel="Stylesheet" href="../Content/bootstrap-theme.min.css" type="text/css" />

    <style type="text/css">
        .style1 {
            font-weight: bold;
        }
    </style>

</head>

<body>
    <div class="container">

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D5FDD5A8" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdADz3dEbMB+jaoJHh8h1CBfil1XYALReTroFJdjTvD/QOPK1gsq074Y2ujrILA8To2JbD267NDPR9RMnY08SdFfla9gKY8YnupVlFlqmszjA0KsuIdIn4QHhoQNvrWLqhu1pYSIyv68kt2nzn6eRc6IZMABIfE9keuuy5VzdSJoDlCDDarFJkh0XsarzAy8B0HqOimTcb2/iolFYKe+qDIgEgQAZnPTJ14zMFs5WO+1Jx425g742rvsJy6NWyvJ1f1k9DuqAbcSSduGGTZXEnCjl7t1bxwRMDBjM/ltH2/1qLPf1lziVZTVsGh8/QsOwQLirUAv7izDPjGHWv0cxtdFyyzeffAxCYSMnGzb8nSa+F4M6EJT/XgIQcEVR+4VdWDcLUinbPJeq8FT02AiMqRVAfVMQZ9G2edaZisToeqPDRa4NA4/MMS11kVoCIRsPPD50d9giOK4H79knwi2YQ7GaFXhn/6m64A2WKlNXZaR1dFgUtOkiMGqKxiUDESWPHJ+r78Oy43G3VefQJiryUUCXt6nq8zgY3SCNyNJvH5UXPFLExSsRuaDifXn3xREG0xxHEify/2pZqMOcC4hK7iHOGKHgkBvgOpx6GjywCEGi1BgO2fh6aVlgspRNs2BYbqNvgfXO4f5YOXhW+JkxiZiV/ji/d9j1uq90BZRQ2hvL8r0cYGDxpS7aFTmaD29B3uAsNVzFx9T0MaYiA1XarslwwKcJ9fzDj2YvDcaBWEZMVyCxERUSg84f4yLXR5F+aV+n3wyHMvalECWwVzOsG44QnO4gTty9iF/lxaJIIwEc5sRSBjQP0AE1v0SPqXQMmamChxyc2ijzS5KPt1XBvTrS1eVQFBggGV/apGjFZGDIFqBzNoKv/ZKQLF3Q5n6gKtFG+j39/RauqtaG2iEWj0hXRnNmFBrit25bwUc1AnfcGxKARoJ+YWfki4PcG/VF1o+b9dcnpDhAochHtqdWlrTrtROX4Vjz4ZrD5AYT4Jw6hHb+2sFpx4umg+7d1Sh6DX1VxlIyV5RAzJGZ+CtloaSDAJsucT3JFOJuXIFcmAuYsZvlPyqsUzMx0Vl12PH8bOVtoGeLne2montjUcNIqxpYDgE5w4Pz9jpMXo2c3dbm8x+ChFxzg4JJofBf4KFGPUu/lVrhbJalAEWPy3yZzR9xhBs6E2lrzxeN9XoMfEfdDi/QvgDWa+U7GB8EP1e+0f1Gu7ptBEFkuMzJnGucyBjYUEQKoT8Thxu2WYeF6Trc3GusC7iRLH5o3/9+k6QP/sZB1xyfoblEFsqkXwPDZnjYk/UYWSn5eGAU44/96i2NP8w==" />
</div>
                    <div id="ctl00_divUser" style="float: right; margin-right: 16px;">
                        <a href="?view=user">
                            <span id="ctl00_lblLogIn" class="label label-success">luctdhe161925</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
                <span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                    </div>
                    <ol class="breadcrumb">
                        <li>
                            <span id="ctl00_lblNavigation"><a href='../Student.aspx'>Home</a>&nbsp;|&nbsp;<b>View Schedule</b></span></li>
                    </ol>
                    <table>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <div>
                                    
    <style>
        div.online-indicator {
            display: inline-block;
            width: 15px;
            height: 15px;
            margin-right: 5px;
  
            background-color: #0fcc45;
            border-radius: 50%;
  
            position: relative;
        }
        span.blink {
            display: block;
            width: 15px;
            height: 15px;
  
            background-color: #0fcc45;
            opacity: 0.7;
            border-radius: 50%;
  
            animation: blink 1s linear infinite;
        }

        h3.online-text {
            display: inline;
  
            font-family: 'Rubik', sans-serif;
            font-weight: 400;
            text-shadow: 0px 3px 6px rgba(150, 150, 150, 0.2);
  
            position: relative;
            cursor: pointer;
        }

        /*Animations*/

        @keyframes blink {
            100% { transform: scale(2, 2); 
                opacity: 0;
            }
        }
    </style>
    
    <div id="ctl00_mainContent_ghichu">
        <p>
            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br />
            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br />
            Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br />
            Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br/>
            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br/>
			Little UK (LUK) thuộc tầng 5 tòa nhà Delta
        </p>
    </div>
    <table>
        <thead>
            <tr>

                <th rowspan="2">
                    <span class="auto-style1"><strong>Year</strong></span>
                    <select name="ctl00$mainContent$drpYear" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpYear\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpYear">
	<option value="2019">2019</option>
	<option value="2020">2020</option>
	<option value="2021">2021</option>
	<option selected="selected" value="2022">2022</option>
	<option value="2023">2023</option>

</select>
                    <br />
                    Week
                    <select name="ctl00$mainContent$drpSelectWeek" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpSelectWeek\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpSelectWeek">
	<option value="1">03/01 To 09/01</option>
	<option value="2">10/01 To 16/01</option>
	<option value="3">17/01 To 23/01</option>
	<option value="4">24/01 To 30/01</option>
	<option value="5">31/01 To 06/02</option>
	<option value="6">07/02 To 13/02</option>
	<option value="7">14/02 To 20/02</option>
	<option value="8">21/02 To 27/02</option>
	<option value="9">28/02 To 06/03</option>
	<option value="10">07/03 To 13/03</option>
	<option value="11">14/03 To 20/03</option>
	<option value="12">21/03 To 27/03</option>
	<option value="13">28/03 To 03/04</option>
	<option value="14">04/04 To 10/04</option>
	<option value="15">11/04 To 17/04</option>
	<option value="16">18/04 To 24/04</option>
	<option value="17">25/04 To 01/05</option>
	<option value="18">02/05 To 08/05</option>
	<option value="19">09/05 To 15/05</option>
	<option value="20">16/05 To 22/05</option>
	<option value="21">23/05 To 29/05</option>
	<option value="22">30/05 To 05/06</option>
	<option value="23">06/06 To 12/06</option>
	<option value="24">13/06 To 19/06</option>
	<option value="25">20/06 To 26/06</option>
	<option value="26">27/06 To 03/07</option>
	<option value="27">04/07 To 10/07</option>
	<option value="28">11/07 To 17/07</option>
	<option value="29">18/07 To 24/07</option>
	<option value="30">25/07 To 31/07</option>
	<option value="31">01/08 To 07/08</option>
	<option value="32">08/08 To 14/08</option>
	<option value="33">15/08 To 21/08</option>
	<option value="34">22/08 To 28/08</option>
	<option value="35">29/08 To 04/09</option>
	<option value="36">05/09 To 11/09</option>
	<option value="37">12/09 To 18/09</option>
	<option value="38">19/09 To 25/09</option>
	<option value="39">26/09 To 02/10</option>
	<option value="40">03/10 To 09/10</option>
	<option selected="selected" value="41">10/10 To 16/10</option>
	<option value="42">17/10 To 23/10</option>
	<option value="43">24/10 To 30/10</option>
	<option value="44">31/10 To 06/11</option>
	<option value="45">07/11 To 13/11</option>
	<option value="46">14/11 To 20/11</option>
	<option value="47">21/11 To 27/11</option>
	<option value="48">28/11 To 04/12</option>
	<option value="49">05/12 To 11/12</option>
	<option value="50">12/12 To 18/12</option>
	<option value="51">19/12 To 25/12</option>
	<option value="52">26/12 To 01/01</option>

</select>
                </th>

                <div id="ctl00_mainContent_divNameDay"><th  align='center'>Mon</th><th  align='center'>Tue</th><th  align='center'>Wed</th><th  align='center'>Thu</th><th  align='center'>Fri</th><th  align='center'>Sat</th><th  align='center'>Sun</th></div>
            </tr>
            <tr>
                <div id="ctl00_mainContent_divShowDate"><th  align='center'>10/10</th><th  align='center'>11/10</th><th  align='center'>12/10</th><th  align='center'>13/10</th><th  align='center'>14/10</th><th  align='center'>15/10</th><th  align='center'>16/10</th></div>
                
            </tr>
        </thead>
        <tbody>
            <div id="ctl00_mainContent_divContent"><tr><td>Slot 0 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Slot 1 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Slot 2 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Slot 3 </td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1018829'>LAB211-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=wLrYZRZkveAHzBAvk7vcFg%3d%3d&SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d' target='_blank'>View Materials</a><br/> at AL-R201 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(10:50-12:20)</span><br/></p></td><td>-</td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1018839'>LAB211-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=wLrYZRZkveAHzBAvk7vcFg%3d%3d&SessionNo=newYZN3qFQ03aWiXQF8XRQ%3d%3d' target='_blank'>View Materials</a><br/> at AL-R201 - <a class='label label-default' href='https://meet.google.com/oxp-ffcc-mmw' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:50-12:20)</span><br/></p></td><td>-</td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1018849'>LAB211-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=wLrYZRZkveAHzBAvk7vcFg%3d%3d&SessionNo=yZZBT4vgbimNawN8%2fLK0Mw%3d%3d' target='_blank'>View Materials</a><br/> at AL-R201 - <a class='label label-default' href='https://meet.google.com/oxp-ffcc-mmw' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:50-12:20)</span><br/></p></td><td>-</td><td>-</td></tr><tr><td>Slot 4 </td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1033498'>IOT102-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=MWrjFciA68ZB9nulo6TW1A%3d%3d&SessionNo=F9EHvqN%2bdUjlw7x5OhB%2faQ%3d%3d' target='_blank'>View Materials</a><br/> at DE-311 <a > <a class='label label-primary' href='https://fu.edunext.vn?CampusCode=APHL&subjectCode=IOT102&semester=Fall2022&ClassName=SE1645&SessionN0=1'>-EduNext </a><br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(12:50-14:20)</span><br/></p></td><td>-</td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1033508'>IOT102-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=MWrjFciA68ZB9nulo6TW1A%3d%3d&SessionNo=TOzW%2b2PecME5SIRGC1cQKQ%3d%3d' target='_blank'>View Materials</a><br/> at DE-311 - <a class='label label-default' href='https://meet.google.com/upp-hszc-zev' target='_blank'>Meet URL</a><a > <a class='label label-primary' href='https://fu.edunext.vn?CampusCode=APHL&subjectCode=IOT102&semester=Fall2022&ClassName=SE1645&SessionN0=2'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(12:50-14:20)</span><br/></p></td><td>-</td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1033518'>IOT102-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=MWrjFciA68ZB9nulo6TW1A%3d%3d&SessionNo=VdF9zrq%2bg8qFJrK2mtWogw%3d%3d' target='_blank'>View Materials</a><br/> at DE-311 - <a class='label label-default' href='https://meet.google.com/upp-hszc-zev' target='_blank'>Meet URL</a><a > <a class='label label-primary' href='https://fu.edunext.vn?CampusCode=APHL&subjectCode=IOT102&semester=Fall2022&ClassName=SE1645&SessionN0=3'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(12:50-14:20)</span><br/></p></td><td>-</td><td>-</td></tr><tr><td>Slot 5 </td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1025752'>PRJ301-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d' target='_blank'>View Materials</a><br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td>-</td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1025753'>PRJ301-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&SessionNo=newYZN3qFQ03aWiXQF8XRQ%3d%3d' target='_blank'>View Materials</a><br/> at DE-C203 - <a class='label label-default' href='https://meet.google.com/gkh-fjwj-hgx' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1028881'>JPD123-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=6dnCI8K184zSh7%2fYYXk2ZQ%3d%3d&SessionNo=newYZN3qFQ03aWiXQF8XRQ%3d%3d' target='_blank'>View Materials</a><br/> at DE-C301 - <a class='label label-default' href='https://meet.google.com/rzn-awdz-ccs' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1025754'>PRJ301-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&SessionNo=yZZBT4vgbimNawN8%2fLK0Mw%3d%3d' target='_blank'>View Materials</a><br/> at DE-C203 - <a class='label label-default' href='https://meet.google.com/gkh-fjwj-hgx' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td>-</td><td>-</td></tr><tr><td>Slot 6 </td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1020929'>MAS291-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d' target='_blank'>View Materials</a><br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1028871'>JPD123-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=6dnCI8K184zSh7%2fYYXk2ZQ%3d%3d&SessionNo=kIpDEdUxtpjrvnJByUa6DA%3d%3d' target='_blank'>View Materials</a><br/> at DE-C301 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1020939'>MAS291-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=newYZN3qFQ03aWiXQF8XRQ%3d%3d' target='_blank'>View Materials</a><br/> at DE-C203 - <a class='label label-default' href='https://meet.google.com/pdg-wwyu-umf' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1028891'>JPD123-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=6dnCI8K184zSh7%2fYYXk2ZQ%3d%3d&SessionNo=yZZBT4vgbimNawN8%2fLK0Mw%3d%3d' target='_blank'>View Materials</a><br/> at DE-C301 - <a class='label label-default' href='https://meet.google.com/rzn-awdz-ccs' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p><a href='../Schedule/ActivityDetail.aspx?id=1020949'>MAS291-<a class='label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=yZZBT4vgbimNawN8%2fLK0Mw%3d%3d' target='_blank'>View Materials</a><br/> at DE-C203 - <a class='label label-default' href='https://meet.google.com/pdg-wwyu-umf' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td>-</td><td>-</td></tr><tr><td>Slot 7 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Slot 8 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr></div>
        </tbody>
    </table>
    <p>
        <b>More note / Chú thích thêm</b>:
    </p>
    <div id="ctl00_mainContent_divfoot"><ul><li>(<font color='green'>attended</font>): LucTDHE161925 had attended this activity / Trần Đình Lực đã tham gia hoạt động này</li><li>(<font color='red'>absent</font>): LucTDHE161925 had NOT attended this activity / Trần Đình Lực đã vắng mặt buổi này</li>   <li>(-): no data was given / chưa có dữ liệu</li> </ul></div>
    <p>
    </p>
    

                                </div>
                            </td>
                        </tr>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <br />

                                <table width="100%" style="border: 1px solid transparent;" id="cssTable">

                                    <tr>
                                        <td>
                                            <div id="ctl00_divSupport">
                                                <br />
                                                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
        Điện thoại: <span class="style1"
            style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(024)7308.13.13 </span>
                                                <br />

                                            </div>

                                            
                                            
                                              
											  
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <p style="text-align: center">
                                                © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
        <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                <span id="ctl00_lblHelpdesk"></span>
                                            </p>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-10421012-13']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>

    <script type="text/javascript">
        var isClose = false;

        //this code will handle the F5 or Ctrl+F5 key
        //need to handle more cases like ctrl+R whose codes are not listed here
        document.onkeydown = checkKeycode;
        function checkKeycode(e) {
            var keycode;
            if (window.event)
                keycode = window.event.keyCode;
            else if (e)
                keycode = e.which;
            if (keycode == 116) {
                isClose = true;
            }
        }
        function somefunction() {
            isClose = true;
        }

        //<![CDATA[

        function bodyUnload() {

            if (!isClose) {
                var request = GetRequest();
                request.open("GET", "LogOut.aspx", true);
                request.send();
            }
        }
        function GetRequest() {
            var request = null;
            if (window.XMLHttpRequest) {
                //incase of IE7,FF, Opera and Safari browser
                request = new XMLHttpRequest();
            }
            else {
                //for old browser like IE 6.x and IE 5.x
                request = new ActiveXObject('MSXML2.XMLHTTP.3.0');
            }
            return request;
        }
        //]]>
    </script>

</body>
</html>

