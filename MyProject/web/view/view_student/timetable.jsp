<%-- 
    Document   : timetable
    Created on : Oct 13, 2022, 7:25:42 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
	TimeTable
</title>

    <style type="text/css">
        .style1 {
            font-weight: bold;
        }
    </style>

</head>

<body>
    <div class="container">
        
        <form action="" method="post">
           MSSV  <input name="mssv" type="text" />
           
            
            
            
            
            
        </form>
        <br/>
        <div>
<form name="aspnetForm" method="post" action="./ScheduleOfWeek.aspx" id="aspnetForm">        


<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D5FDD5A8" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdADz3dEbMB+jaoJHh8h1CBfil1XYALReTroFJdjTvD/QOPK1gsq074Y2ujrILA8To2JbD267NDPR9RMnY08SdFfla9gKY8YnupVlFlqmszjA0KsuIdIn4QHhoQNvrWLqhu1pYSIyv68kt2nzn6eRc6IZMABIfE9keuuy5VzdSJoDlCDDarFJkh0XsarzAy8B0HqOimTcb2/iolFYKe+qDIgEgQAZnPTJ14zMFs5WO+1Jx425g742rvsJy6NWyvJ1f1k9DuqAbcSSduGGTZXEnCjl7t1bxwRMDBjM/ltH2/1qLPf1lziVZTVsGh8/QsOwQLirUAv7izDPjGHWv0cxtdFyyzeffAxCYSMnGzb8nSa+F4M6EJT/XgIQcEVR+4VdWDcLUinbPJeq8FT02AiMqRVAfVMQZ9G2edaZisToeqPDRa4NA4/MMS11kVoCIRsPPD50d9giOK4H79knwi2YQ7GaFXhn/6m64A2WKlNXZaR1dFgUtOkiMGqKxiUDESWPHJ+r78Oy43G3VefQJiryUUCXt6nq8zgY3SCNyNJvH5UXPFLExSsRuaDifXn3xREG0xxHEify/2pZqMOcC4hK7iHOGKHgkBvgOpx6GjywCEGi1BgO2fh6aVlgspRNs2BYbqNvgfXO4f5YOXhW+JkxiZiV/ji/d9j1uq90BZRQ2hvL8r0cYGDxpS7aFTmaD29B3uAsNVzFx9T0MaYiA1XarslwwKcJ9fzDj2YvDcaBWEZMVyCxERUSg84f4yLXR5F+aV+n3wyHMvalECWwVzOsG44QnO4gTty9iF/lxaJIIwEc5sRSBjQP0AE1v0SPqXQMmamChxyc2ijzS5KPt1XBvTrS1eVQFBggGV/apGjFZGDIFqBzNoKv/ZKQLF3Q5n6gKtFG+j39/RauqtaG2iEWj0hXRnNmFBrit25bwUc1AnfcGxKARoJ+YWfki4PcG/VF1o+b9dcnpDhAochHtqdWlrTrtROX4Vjz4ZrD5AYT4Jw6hHb+2sFpx4umg+7d1Sh6DX1VxlIyV5RAzJGZ+CtloaSDAJsucT3JFOJuXIFcmAuYsZvlPyqsUzMx0Vl12PH8bOVtoGeLne2montjUcNIqxpYDgE5w4Pz9jpMXo2c3dbm8x+ChFxzg4JJofBf4KFGPUu/lVrhbJalAEWPy3yZzR9xhBs6E2lrzxeN9XoMfEfdDi/QvgDWa+U7GB8EP1e+0f1Gu7ptBEFkuMzJnGucyBjYUEQKoT8Thxu2WYeF6Trc3GusC7iRLH5o3/9+k6QP/sZB1xyfoblEFsqkXwPDZnjYk/UYWSn5eGAU44/96i2NP8w==" />
</div>
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
            <div id="ctl00_mainContent_divContent">
                <tr><td>Slot 0 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                <tr><td>Slot 1 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                <tr><td>Slot 2 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                <tr><td>Slot 3 </td><td><p>LAB211-<br/> at AL-R201 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(10:50-12:20)</span><br/></p></td><td>-</td><td><p>LAB211- <br/> at AL-R201 -  <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:50-12:20)</span><br/></p></td><td>-</td><td><p>LAB211- <br/> at AL-R201 - <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:50-12:20)</span><br/></p></td><td>-</td><td>-</td></tr>
                <tr><td>Slot 4 </td><td><p>IOT102-<br/> at DE-311 <a >  <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(12:50-14:20)</span><br/></p></td><td>-</td><td><p>IOT102-<br/> at DE-311 - <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(12:50-14:20)</span><br/></p></td><td>-</td><td><p>IOT102-<br/> at DE-311 - <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(12:50-14:20)</span><br/></p></td><td>-</td><td>-</td></tr>
                <tr><td>Slot 5 </td><td><p>PRJ301-<br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td>-</td><td><p>PRJ301-<br/> at DE-C203 -  <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td><p>JPD123-<br/> at DE-C301 -  <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td><p>PRJ301-<br/> at DE-C203 - <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(14:30-16:00)</span><br/></p></td><td>-</td><td>-</td></tr>
                <tr><td>Slot 6 </td><td><p>MAS291-<br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p>JPD123-<br/> at DE-C301 <a > <br/>(<font color=Green>attended</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p>MAS291-<br/> at DE-C203 -   <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p>JPD123-<br/> at DE-C301 - <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td><p>MAS291-<a class='label label-warning'></a><br/> at DE-C203 -   <br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(16:10-17:40)</span><br/></p></td><td>-</td><td>-</td></tr>
                <tr><td>Slot 7 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                <tr><td>Slot 8 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr></div>
        </tbody>
    </table>  

                                </div>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
   <a href="reportAttendance">Attendance Report</a>
</body>
</html>

