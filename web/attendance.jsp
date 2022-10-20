<%-- 
    Document   : attendance
    Created on : Oct 13, 2022, 1:44:45 AM
    Author     : tuann
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance</title>
        <link rel="stylesheet" href="css/attendance.css"/>
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
                    <a href="attend">Timetable</a> |
                    <a href="course">Course</a> |
                    <a href="attend">Attend</a>

                </div>
                <div class="right-header">
                    <a href="#">tuantvhe151027</a> |
                    <a href="#">logout</a> |
                    <a href="attend"></a>

                    <span class="campus">CAMPUS: FPTU-Hòa lạc</span>
                </div>
            </div>

            <div class="list">
                <h1>Single Activity Attendance</h1>
                <span>Attendance for PRJ301 with Lecturer SonNT5 at Slot 1 on Wednesday 19/01/2022. Spring2022, in Room BE-301 at FU-HL</span>
                <table>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Group</th>
                            <th>Code</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Status</th>
                            <th>Comment</th>
                            <th>Taker</th>
                            <th>Record Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.ses.atts}" var="a" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${a.group.name}</td>
                                <td>${a.student.id}</td>
                                <td>${a.student.name}</td>
                                <td>
                                    <img src="https://st.quantrimang.com/photos/image/2017/04/08/anh-dai-dien-FB-200.jpg" alt="alt"/>
                                </td>
                        <form action="attend" method="post">
                            <td>
                                <input type="radio" name="status" value=""/> Absent <br>
                                <input type="radio" name="status" value=""/> Present
                            </td>
                            <td>
                                <input type="text" name="comment" value=""/>
                            </td>
                        </form>
                        <td><a href="#">sonnt5</a></td>
                        <td>1/19/2022 8:45 00 AM</td>
                        </tr> 
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="footer">
                <span>
                    Mọi thắc mắc xin liên hệ:
                </span>
                <span>
                    Phòng dịch vụ sinh viên Email: <a href="#">dichvusinhvien@fpt.edu.vn</a> Điện thoại: (024)7308.13.13
                </span>
            </div>
        </div>
    </body>
</html>
