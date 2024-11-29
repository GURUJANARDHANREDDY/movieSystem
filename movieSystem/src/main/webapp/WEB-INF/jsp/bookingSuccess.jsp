<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
            text-align: center;
        }
        header {
            background-color: #28a745;
            color: white;
            padding: 20px 0;
            font-size: 1.8em;
        }
        .content {
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f8f9fa;
        }
        .success-msg {
            color: #28a745;
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        .transaction-id {
            font-size: 0.9em;
            color: #6c757d;
        }
        footer {
            margin-top: 30px;
            padding: 10px 0;
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body>
    <header>Booking Successful!</header>
    <div class="content">
        <p class="success-msg">Your booking has been confirmed!</p>
        <p class="transaction-id">Transaction ID: ${ticket.transactionId}</p>
        <table>
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
                <th>Total Amount</th>
                <td>$${ticket.amountPayable}</td>
            </tr>
            <tr>
                <th>Status</th>
                <td>${ticket.status}</td>
            </tr>
        </table>
        <p>Thank you for booking with us!</p>
    </div>
    <footer>&copy; 2024 Movie Booking System. All rights reserved.</footer>
</body>
</html>
