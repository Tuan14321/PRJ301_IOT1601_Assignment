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
        <link rel="stylesheet" href="../css/attendance.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <jsp:include page="../../components/header.jsp"></jsp:include>

                <div class="list">
                    <h1>Single Activity Attendance</h1>
                    Take attendance for Group: ${requestScope.ses.group.name} <br/>
                Subject: ${requestScope.ses.group.subject.name} <br/>
                Room: ${requestScope.ses.room.name} <br/>
                Date: ${requestScope.ses.date} - ${requestScope.ses.slot.description}<br/>
                Attended: <span style="color: red;"> ${requestScope.ses.attanded?"Yes":"No"} </span>
                <form action="attend" method="post">
                    <table class="table ">
                        <input type="hidden" name="sesid" value="${param.id}"/>
                        <thead>
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">Code</th>
                                <th scope="col">Name</th>
                                <th scope="col">Image</th>
                                <th scope="col">Status</th>
                                <th scope="col">Comment</th>
                                <th scope="col">Taker</th>
                                <th scope="col">Record Time</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${requestScope.btn ne 0}">
                                <c:forEach items="${requestScope.ses.atts}" var="a" varStatus="loop">
                                    <tr>
                                        <td>${loop.index + 1}</td>
                                        <td>${a.student.id}</td>
                                <input type="hidden" name="stdid" value="${a.student.id}"/>
                                <td>${a.student.name}</td>
                                <td>
                                    <img src="https://st.quantrimang.com/photos/image/2017/04/08/anh-dai-dien-FB-200.jpg" alt="alt"/>
                                </td>
                                <td>${requestScope.ses.attanded?"Yes":"No"}</td>
                                <td>${a.description}</td>
                                <td>${requestScope.ses.lecturer.name}</td>
                                <td>${a.record_time}</td>
                                </tr> 
                            </c:forEach>
                        </c:if>
                        <c:forEach items="${requestScope.ses.atts}" var="a" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${a.student.id}</td>
                            <input type="hidden" name="stdid" value="${a.student.id}"/>
                            <td>${a.student.name}</td>
                            <td>
                                <img src="https://st.quantrimang.com/photos/image/2017/04/08/anh-dai-dien-FB-200.jpg" alt="alt"/>
                            </td>
                            <td><input type="radio"
                                       <c:if test="${a.present}">
                                           checked="checked"
                                       </c:if>
                                       name="status${a.student.id}" value="present" /> Present<br>
                                <input type="radio"
                                       <c:if test="${!a.present}">
                                           checked="checked"
                                       </c:if>
                                       name="status${a.student.id}" value="absent" /> Absent</td>
                            <td><input type="text" name="comment${a.student.id}" value="${a.description}" /></td>
                            <td><a href="#">${requestScope.ses.lecturer.name}</a></td>
                            <td>${a.record_time}</td>
                            </tr> 
                        </c:forEach>
                        </tbody>
                    </table>
                    <input class="btn-Save btn btn-outline-primary" type="submit" value="save"/>
                </form>

                <jsp:include page="../../components/footer.jsp"></jsp:include>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
