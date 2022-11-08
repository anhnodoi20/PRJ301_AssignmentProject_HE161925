<%-- 
    Document   : groupstudent
    Created on : Nov 8, 2022, 8:22:41 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>Image</th>
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

</body>
</html>
