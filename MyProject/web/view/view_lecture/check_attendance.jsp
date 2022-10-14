<%-- 
    Document   : check_attendance
    Created on : Oct 14, 2022, 10:17:49 AM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
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
                        <a href='#'>Timetable of lecture</a>|
                        <a href="">Take Attendance</a>|
                        
                    </span>
                </div>
            </div>
            <div>
                <h1>Take Attendance</h1>  
            </div>
            <div>
                <p> <span>Attendance for</span>
                    <b>NganNTT</b> at slot 6 on Tuesday 11/10/2022, Fall2022, at room DE_301.
                    This is the session number 3 of the course.
                </p>
            </div>
           
            
            <div class="b">
                <table>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>GROUP</th>
                            <th>ROLLNUMBER</th>
                            <th>FULLNAME</th>
                            <th>ABSENT</th>
                            <th>PRESENT</th>
                            <th>COMMENT</th>
                            <th>SHOW IMAGE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE161925</font></td>
                            <td>Tran Dinh Luc</td>
                            <td><input type="radio" name="present1" value="absent"/> Absent</td>
                            <td><input type="radio" name="present1" value="present"/> Present </td>
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE166666</font></td>
                            <td>Tran Dinh Bien</td>
                            <td><input type="radio" name="present2" value="absent"/> Absent</td>
                            <td><input type="radio" name="present2" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE167777</font></td>
                            <td>Nguyen Van Kien</td>
                            <td><input type="radio" name="present3" value="absent"/> Absent</td>
                            <td><input type="radio" name="present3" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p id="show image" onclick="show()">Show Image</p>
                            </td>
                        </tr>
                            <tr>
                            <td>4</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE168888</font></td>
                            <td>Nguyen Van Dat</td>
                            <td><input type="radio" name="present4" value="absent"/> Absent</td>
                            <td><input type="radio" name="present4" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                            </td>
                        </tr>
                            <tr>
                            <td>5</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE169999</font></td>
                            <td>G</td>
                            <td><input type="radio" name="present5" value="absent"/> Absent</td>
                            <td><input type="radio" name="present5" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                            </td>
                        </tr>
                            <tr>
                            <td>6</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE160000</font></td>
                            <td>H</td>
                            <td><input type="radio" name="present6" value="absent"/> Absent</td>
                            <td><input type="radio" name="present6" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                            </td>
                        </tr>
                            <tr>
                            <td>7</td>
                            <td><font color="#333">SE1645</font></td>
                            <td><font color="#333">HE161111</font></td>
                            <td>I</td>
                            <td><input type="radio" name="present7" value="absent"/> Absent</td>
                            <td><input type="radio" name="present7" value="present"/> Present </td>
                        
                            <td><input type="text"/></td>
                            <td>
                                <p>Show Image</p>
                               
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div  class="save" >
                     <input  type="submit" value="save"/>
                </div>             
                
            </div>
                
            
            
        </div>
    </body>
</html>
