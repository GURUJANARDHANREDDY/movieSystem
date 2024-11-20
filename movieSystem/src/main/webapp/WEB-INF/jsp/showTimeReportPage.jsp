<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Show Time Report</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        /* Global Body Styling */
        body {
            background-image: url('https://cdn.pixabay.com/photo/2016/09/14/08/18/film-1668918_640.jpg');
            background-size: cover;
            background-position: center;
            font-family: 'Arial', sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.7);
        }

        /* Title and Report Section */
        .container {
            background: rgba(0, 0, 0, 0.8); /* Darker overlay for better contrast */
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.8);
            width: 80%;
            max-width: 1200px;
            color: #f0f0f0;
            border: 2px solid #ffcc00; /* Add a gold border */
        }

        .report-title {
            font-size: 36px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            color: #ffcc00; /* Gold color for title */
        }

        /* Table Styles */
        .table {
            background-color: transparent;
            border-collapse: separate;
            border-spacing: 0 10px;
        }

        .table th {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            text-align: center;
            border-radius: 10px;
        }

        .table td {
            background-color: #f8f9fa;
            color: #495057;
            text-align: center;
            border-radius: 8px;
        }

        /* Table Rows Hover Effect */
        .table tr:hover {
            background-color: #f1f1f1;
            color: #007bff;
            transform: scale(1.02);
            transition: 0.3s;
        }

        /* Action Links Styling */
        .action-link {
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
            display: inline-block;
        }

        .btn-delete {
            background-color: #dc3545;
            color: white;
        }

        .btn-delete:hover {
            background-color: #c82333;
            text-decoration: none;
        }

        .btn-update {
            background-color: #17a2b8;
            color: white;
        }

        .btn-update:hover {
            background-color: #138496;
            text-decoration: none;
        }

        /* Link Back to Home Page Styling */
        .back-link {
            font-size: 20px;
            color: #ffcc00;
            font-weight: bold;
            text-decoration: none;
            margin-top: 20px;
            display: block;
            text-align: center;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 95%;
                padding: 20px;
            }

            .report-title {
                font-size: 28px;
            }

            .table th, .table td {
                font-size: 14px;
            }

            .action-link {
                font-size: 12px;
                padding: 6px 12px;
            }
        }

        /* Animation for Table Rows */
        .table tr {
            transition: transform 0.2s ease;
        }

        .table tr:hover {
            transform: translateY(-5px);
        }
    </style>
</head>
<body>

<div class="container">
    <div class="text-center mb-4">
        <h1 class="report-title">Show Time Report</h1>
    </div>

    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Premium Price</th>
                    <th>Royal Price</th>
                    <th>Show Time Deletion</th>
                    <th>Show Time Updation</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${showTimeList}" var="showtime">
                    <tr>
                        <td>${showtime.showTimeId}</td>
                        <td>${showtime.showTimeName}</td>
                        <td>${showtime.showTimePremierePrice}</td>
                        <td>${showtime.showTimeRoyalPrice}</td>
                        <td>
                            <a href="/showTimeDeletion/${showtime.showTimeId}" class="action-link btn-delete">Delete</a>
                        </td>
                        <td>
                            <a href="/showTimeUpdation/${showtime.showTimeId}" class="action-link btn-update">Update</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="text-center">
        <a href="/index" class="back-link">Go To Home Page</a>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
