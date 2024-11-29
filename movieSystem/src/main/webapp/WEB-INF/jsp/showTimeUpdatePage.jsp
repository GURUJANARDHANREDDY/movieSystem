<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Show Time</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO3pFKhMhUOSADmMMB-KFWAa8-w0mrABocYUXf9bwWVp8O4D_ACwdeggU&s');
            background-size: cover;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 700px;
            margin: 50px auto;
        }
        h2 {
            text-align: center;
            color: #444;
            font-size: 2em;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 8px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 1em;
        }
        .form-actions {
            text-align: center;
        }
        .form-actions button {
            padding: 12px 25px;
            border: none;
            border-radius: 6px;
            background-color: #007bff;
            color: white;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-actions button:hover {
            background-color: #0056b3;
        }
        .back-link {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            font-size: 1em;
        }
        .back-link:hover {
            text-decoration: underline;
        }
        .text-center {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Show Time</h2>
    <form:form modelAttribute="showTime" action="/showTimeUpdation" method="post">
        <div class="form-group">
            <label for="showTimeId">Show Time ID</label>
            <form:input path="showTimeId" id="showTimeId" readonly="true" />
        </div>
        <div class="form-group">
            <label for="showTimeName">Show Time Name</label>
            <form:input path="showTimeName" id="showTimeName" readonly="true" />
        </div>
        <div class="form-group">
            <label for="showTimePremierePrice">Premiere Price</label>
            <form:input path="showTimePremierePrice" id="showTimePremierePrice" required="true" type="number" step="0.01" />
        </div>
        <div class="form-group">
            <label for="showTimeRoyalPrice">Royal Price</label>
            <form:input path="showTimeRoyalPrice" id="showTimeRoyalPrice" readonly="true" />
        </div>
        <div class="form-actions">
            <button type="submit">Update Show Time</button>
        </div>
    </form:form>
    <div class="text-center mt-4">
        <a href="/showTimeReport" class="back-link">Back to Show Time Report</a>
    </div>
</div>

</body>
</html>
