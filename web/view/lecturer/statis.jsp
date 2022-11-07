<%-- 
    Document   : statis
    Created on : Nov 3, 2022, 10:18:53 PM
    Author     : tuann
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <div class="container">
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
                    <a href="#">logout</a> |
                    <a href="attend"></a>

                    <span class="campus">CAMPUS: FPTU-Hòa lạc</span>
                </div>
            </div>
                        <div class="footer">
                    <span>
                        Mọi thắc mắc xin liên hệ:
                    </span>
                    <span>
                        Phòng dịch vụ sinh viên Email: <a href="#">dichvusinhvien@fpt.edu.vn</a> Điện thoại: (024)7308.13.13
                    </span>
                </div>
    </body>
</html>
