<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* Body styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        /* Heading styles */
        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        /* Form styles */
        form {
            margin: 20px auto;
            max-width: 400px;
            background-color: #fff;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        input[type="submit"],
        a.button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            display: inline-block;
            margin-top: 10px;
        }

        a.button {
            margin-left: 10px;
        }
    </style>
</head>
<body>
<h1>Student form</h1>

<c:choose>
    <c:when test="${empty student.id}">
        <form action="students?action=create" method="POST">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name">
            <label for="grade">Grade:</label>
            <input type="text" id="grade" name="grade">
            <label for="scores">Scores: </label>
            <input type="text" id="scores" name="scores">
            <br><br>
            <input type="submit" value="Create">
            <a href="students" class="button">Cancel</a>
        </form>
    </c:when>

    <c:otherwise>
        <form action="students?action=update" method="POST">
            <input type="hidden" name="id" value="${student.id}">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" value="${student.name}">
            <br><br>
            <label for="grade">Grade:</label>
            <input type="text" id="grade" name="grade" value="${student.grade}">
            <br><br>
            <label for="scores">Scores:</label>
            <input type="text" id="scores" name="scores" value="${student.scores}">
            <br><br>
            <input type="submit" value="Update">
            <a href="students" class="button">Cancel</a>
            <br><br>
        </form>
        <form action="students?action=delete" method="POST">
            <input type="hidden" name="id" value="${student.id}">
            <input type="submit" value="Delete">
        </form>
    </c:otherwise>
</c:choose>
</body>
</html>
