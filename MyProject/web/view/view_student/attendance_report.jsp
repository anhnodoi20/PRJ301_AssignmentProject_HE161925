<%-- 
    Document   : attendance_report
    Created on : Oct 14, 2022, 9:11:32 AM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
	View attendance report
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
        <div class="row">
            <div class="col-md-12">
                <form name="aspnetForm" method="post" action="./ViewAttendstudent.aspx?id=HE161925&amp;campus=3&amp;term=37&amp;course=27412" id="aspnetForm">
                    <table>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <div>
                                    
   
  <table>
<tbody>
 <tr><td valign="top"><h3>Select a campus/program, term, course ...</h3>
 

    
    
<table summary='Select a course'>
<thead><tr><th scope='col'>Campus/program</th><th scope='col'>Term</th><th scope='col'>Course</th></tr></thead>
<tbody><tr><td valign='top'><div id="ctl00_mainContent_divCampus"><table><tr><td><b>FU-HL</b></td></tr></table></div></td>
<td valign='top'><div id="ctl00_mainContent_divTerm"><table><tr><td><a href="?id=HE161925&campus=3&term=18">Summer2017</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=19">Fall2017</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=20">Spring2018</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=21">Summer2018</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=22">Fall2018</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=23">Spring2019</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=24">Summer2019</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=25">Fall2019</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=26">Spring2020</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=27">Summer2020</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=28">Fall2020</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=29">Spring2021</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=30">Summer2021</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=31">Fall2021</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=32">Spring2022</a></td></tr><tr><td><a href="?id=HE161925&campus=3&term=33">Summer2022</a></td></tr><tr><td><b>Fall2022</b></td></tr></table></div></td>
<td valign='top'><div id="ctl00_mainContent_divCourse"><table><tr><td><a href="?id=HE161925&campus=3&term=37&course=27182">OOP with Java Lab(LAB211)</a>(SE1710,start 05/09/2022)</td></tr><tr><td><a href="?id=HE161925&campus=3&term=37&course=27252">Statistics and Probability(MAS291)</a>(SE1645,start 05/09/2022)</td></tr><tr><td><b>Java Web Application Development(PRJ301)(SE1645,start 05/09/2022)</b></td></tr><tr><td><a href="?id=HE161925&campus=3&term=37&course=27514">Elementary Japanese 1-A1.2(JPD123)</a>(SE1645,start 06/09/2022)</td></tr><tr><td><a href="?id=HE161925&campus=3&term=37&course=28088">Introduction to Software Engineering(SWE201c)</a>(SE1645,start 17/09/2022)</td></tr><tr><td><a href="?id=HE161925&campus=3&term=37&course=27695">Internet of Things(IOT102)</a>(SE1645,start 10/10/2022)</td></tr></table></div></td>
</tbody>
</table>
 </td>
 
 <div id="ctl00_mainContent_divDetail"> <td valign='top'><h3>... then see report<br /><br /></h3><table class='table table-bordered table1'><tr><thead> <th>No.</th><th>Date</th><th>Slot</th><th>Room</th><th>Lecturer</th><th>Group Name</th><th>Attedance status</th><th>Lecturer's comment</th></tr></thead><tbody><tr><td>1</td><td><span class='label label-primary'>Monday 05/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>2</td><td><span class='label label-primary'>Wednesday 07/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>3</td><td><span class='label label-primary'>Friday 09/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>4</td><td><span class='label label-primary'>Monday 12/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>5</td><td><span class='label label-primary'>Wednesday 14/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>6</td><td><span class='label label-primary'>Friday 16/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>7</td><td><span class='label label-primary'>Monday 19/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>8</td><td><span class='label label-primary'>Wednesday 21/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>9</td><td><span class='label label-primary'>Friday 23/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>10</td><td><span class='label label-primary'>Monday 26/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>11</td><td><span class='label label-primary'>Wednesday 28/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>12</td><td><span class='label label-primary'>Friday 30/09/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>13</td><td><span class='label label-primary'>Monday 03/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>14</td><td><span class='label label-primary'>Wednesday 05/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>15</td><td><span class='label label-primary'>Friday 07/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>16</td><td><span class='label label-primary'>Monday 10/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>17</td><td><span class='label label-primary'>Wednesday 12/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=green>Present</font></td><td></td></tr><tr><td>18</td><td><span class='label label-primary'>Friday 14/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>19</td><td><span class='label label-primary'>Saturday 15/10/2022</span></td><td><span class='label label-danger'>1_(7:30-9:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>20</td><td><span class='label label-primary'>Saturday 15/10/2022</span></td><td><span class='label label-danger'>2_(9:10-10:40)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>21</td><td><span class='label label-primary'>Saturday 15/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>22</td><td><span class='label label-primary'>Monday 17/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>23</td><td><span class='label label-primary'>Wednesday 19/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>24</td><td><span class='label label-primary'>Friday 21/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>25</td><td><span class='label label-primary'>Monday 31/10/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>26</td><td><span class='label label-primary'>Wednesday 02/11/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>27</td><td><span class='label label-primary'>Friday 04/11/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>28</td><td><span class='label label-primary'>Monday 07/11/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr><tr><td>29</td><td><span class='label label-primary'>Wednesday 09/11/2022</span></td><td><span class='label label-danger'>5_(14:30-16:00)</span></td><td>DE-C203</td><td>SonNT5</td><td>SE1645</td><td><font color=black>Future</font></td><td></td></tr></tbody><tfoot><tr><td colspan='7'><b>Absent</b>: 0% absent so far (0 absent on 29 total).</td></tr></tfoot> </table></td</div>
 </tr>
</tbody></table>  
    



                                </div>
                            </td>
                        </tr>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <br />

                                <table width="100%" style="border: 1px solid transparent;" id="cssTable">

                               
                                </table>

                            </td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </div>
     <a href="timetable"> Roll Back Timetable</a>
</body>
</html>

