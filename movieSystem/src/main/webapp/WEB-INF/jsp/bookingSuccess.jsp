<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Success</title>
    
    <!-- Bootstrap CDN for styling -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
        }

        header {
            background-color: #28a745;
            color: white;
            padding: 20px 0;
            font-size: 1.8em;
            text-align: center;
            border-bottom: 3px solid #ffffff;
        }

        .content {
            margin: 40px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 800px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }

        .success-msg {
            color: #28a745;
            font-size: 1.6em;
            margin-bottom: 20px;
        }

        .transaction-id {
            font-size: 1em;
            color: #6c757d;
            margin-bottom: 20px;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            border-radius: 50px;
            padding: 12px 30px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #343a40;
            color: white;
            padding: 20px;
            position: absolute;
            width: 100%;
            bottom: 0;
            text-align: center;
            font-size: 0.9em;
        }

        .footer-links {
            color: #adb5bd;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer-links:hover {
            color: #ffffff;
        }

        /* Responsive design tweaks */
        @media (max-width: 767px) {
            header {
                font-size: 1.5em;
            }

            .content {
                padding: 20px;
                width: 95%;
            }
        }

        /* Add a nice smooth background effect */
        body {
            background: linear-gradient(145deg, #f7f7f7, #e0e0e0);
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>Booking Successful!</header>

    <!-- Content Section -->
    <div class="content">
        <p class="success-msg">Your booking has been confirmed!</p>
        <p class="transaction-id">Transaction ID: ${ticket.transactionId}</p>

        <!-- Booking Information Table -->
        <table class="table">
            <tr>
                <th>Movie Name</th>
                <td>${ticket.movieName}</td>
            </tr>
            <tr>
                <th>Show Time</th>
                <td>${ticket.showTimeName}</td>
            </tr>
            <tr>
                <th>Seat Type</th>
                <td>${ticket.seatType}</td>
            </tr>
            <tr>
                <th>Number of Seats</th>
                <td>${ticket.numberOfSeatBooking}</td>
            </tr>
            <tr>
                <th>Total Amount (INR)</th>
                <td>${ticket.amountPayable}</td> <!-- Amount in INR -->
            </tr>
            <tr>
                <th>Status</th>
                <td>${ticket.status}</td>
            </tr>
        </table>

        <!-- "Back" Button -->
        <a href="/index" class="btn btn-custom">Back to Home</a>

        <p class="mt-3">Thank you for booking with us!</p>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Movie Booking System. All rights reserved.</p>
        <p>
            <a href="/privacy" class="footer-links">Privacy Policy</a> | 
            <a href="/terms" class="footer-links">Terms of Service</a>
        </p>
    </footer>

    <!-- Bootstrap JS and Popper.js for functionality -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
