<%-- 
    Document   : timetable.jsp
    Created on : Oct 11, 2022, 7:33:50 AM
    Author     : tuann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table</title>
        <link rel="stylesheet" href="css/timetable.css"/>
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
                    <a href="timetable">Timetable</a> |
                    <a href="course">Course</a> |
                    <a href="attend">Attend</a>
                </div>
                <div class="right-header">
                    <a href="#">tuantvhe151027</a> |
                    <a href="#">logout</a> |
                    <span class="campus">CAMPUS: FPTU-Hòa lạc</span>
                </div>
            </div>

            <div class="view">
                <div> Campus: <select>
                        <option>Fu-HL</option>
                        <option>Fu-HCM</option>
                        <option>Fu-CT</option>
                    </select><br>
                </div>
                <div>
                    Lecture: <input type="text"> <button type="button">View</button>
                </div>
            </div>


            <div>
                <table>
                    <thead>
                        <tr>
                            <th>
                                Year: <select>
                                    <option>2023</option>
                                    <option>2022</option>
                                    <option>2021</option>
                                    <option>2020</option>
                                    <option>2019</option>
                                </select><br>
                            </th>
                            <th>Mon</th>
                            <th>Tue </th>
                            <th>Wed</th>
                            <th>Thu</th>
                            <th>Fri</th>
                            <th>Sat</th>
                            <th>Sun</th>
                        </tr>
                        <tr>
                            <th>Week: <select>
                                    <option>03/10-09/10</option>
                                    <option>10/10-16/10</option>
                                </select><br>
                            </th>
                            <th>10/10</th>
                            <th>11/10</th>
                            <th>12/10</th>
                            <th>13/10</th>
                            <th>14/10</th>
                            <th>15/10</th>
                            <th>16/10</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Slot 0</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 1</td>
                            <td>-</td>
                            <td>
                                <a href="course">
                                    PRJ301
                                </a> <br>
                                at DE-416 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(7:30-9:30)</span>
                            </td>
                            <td>-</td>
                            <td>
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-416 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(7:30-9:30)</span>
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 2</td>
                            <td>-</td>
                            <td>   
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-416 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(9:100-10:40)</span></td>
                            <td>-</td>
                            <td>
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-416 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(9:100-10:40)</span>
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 3</td>
                            <td>-</td>
                            <td>    
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-416 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(10:50-12:20)</span></td>
                            <td>-</td>
                            <td>
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-416 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(10:50-12:20)</span>
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 4</td>
                            <td></td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-C204 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(12:50-14:20)</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Slot 5</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-C204 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(14:20-16:00)</span>

                            </td>
                        </tr>
                        <tr>
                            <td>Slot 6</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>
                                <a href="#">
                                    PRJ301
                                </a> <br>
                                at DE-C204 <br>
                                <span class="notyet">(Not yet)</span> <br>
                                <span class="timeslot">(16:10-17:40)</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Slot 7</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 8</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
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
