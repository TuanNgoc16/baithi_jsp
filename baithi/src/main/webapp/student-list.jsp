<%--
  Created by IntelliJ IDEA.
  User: tuanngoc
  Date: 5/31/2023
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        .button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            display: inline-block;
            margin-top: 10px;
        }

        .add-button {
            margin-left: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        table tr:first-child {
            background-color: #f5f5f5;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
<h1>Students list</h1>
<a href="students?action=new" class="button add-button">Add new Student</a>

<table>
    <tr>
        <td>ID</td>
        <td>Student Name</td>
        <td>Grade</td>
        <td>Scores</td>
        <td>Actions</td>
    </tr>
    <c:forEach var="std" items="${studentList}">
        <tr>
            <td>${std.id}</td>
            <td>${std.name}</td>
            <td>${std.grade}</td>
            <td>${std.scores}</td>
            <td>
                <a class="button" href="students?action=edit&id=${std.id}">Edit</a>
                <a class="button" href="students?action=delete&id=${std.id}"
                   onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
