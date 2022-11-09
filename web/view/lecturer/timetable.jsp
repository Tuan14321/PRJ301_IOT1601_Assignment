<%-- 
    Document   : timetable
    Created on : Nov 2, 2022, 10:03:23 PM
    Author     : tuann
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="helper" class="util.DateTimeHelper"/>

        <title>JSP Page</title>
        <title>Time Table</title>
        <link rel="stylesheet" href="../css/timetable.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <jsp:include page="../../components/header.jsp"></jsp:include>
            Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
            <form action="timetable" method="GET">
                <input type="hidden" name="lid" value="${param.lid}"/>
                From: <input type="date" name="from" value="${requestScope.from}"/>
                To: <input type="date" name="to" value="${requestScope.to}"/>
                <input type="submit" value="View"/> 
            </form>
                <table class="table table-striped mt-5">
                <tr>
                    <td> </td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>${d}<br/>${helper.getDayNameofWeek(d)}</td>
                        </c:forEach>
                </tr>
                <c:forEach items="${requestScope.slots}" var="slot">
                    <tr>
                        <td>${slot.description}</td>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <td>
                                <c:forEach items="${requestScope.sessions}" var="ses">
                                    <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.slot.id eq slot.id)}">
                                        <a href="attend?id=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                        <br/>
                                        ${ses.room.name}
                                        <c:if test="${ses.attanded}">
                                            <img src="../img/male-icon.png" alt=""/>
                                        </c:if>
                                        <c:if test="${!ses.attanded}">
                                            <img src="../img/female-icon.png" alt=""/>
                                        </c:if>
                                    </c:if>

                                </c:forEach>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
            <jsp:include page="../../components/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
