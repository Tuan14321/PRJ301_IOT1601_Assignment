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
        <title>JSP Page</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            th{
                background-color: rgb(107, 144, 218);
            }
        </style>
    </head>
    <body>
        Student ID: <input name="Id" type="text"/><br>
        From: <input type="date" name="from"/>           
        To: <input type="date" name="to"/>    <br>
        <input type="Submit" value="Search"/>
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
                    <td>Slot 1</td>
                    <td><a>PRN(211)</a> at DE-C301 (Not yet)</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 2</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 3</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 4</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 5</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 6</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
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
    </body>
</html>
