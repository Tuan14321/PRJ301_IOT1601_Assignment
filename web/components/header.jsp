<%-- 
    Document   : header
    Created on : Nov 8, 2022, 2:25:08 AM
    Author     : tuann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="title">
            <h1>
                <span>FPT University Academic Portal</span>
            </h1>
        </div >

        <div class="header">
            <div class="left-header">
                <a  href="#">Home</a> |
                <a>View Schedule</a> |
                <a href="../lecturer/timetable">Timetable</a> |
                <a href="course">Course</a> |
                <a href="attend">Attend</a>

            </div>
            <div class="right-header">
                <a href="#">${requestScope.ses.lecturer.name}</a> |
                <a href="logout">logout</a> |
                <a href="attend"></a>

                <span class="campus">CAMPUS: FPTU-Hòa lạc</span>
            </div>
        </div>
    </body>
</html>
