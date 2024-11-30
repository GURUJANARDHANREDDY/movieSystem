<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cancel Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        p {
            font-size: 16px;
        }
        a {
            color: #337ab7;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Cancel Booking</h1>
    <p>Your booking with Transaction ID <strong>${transactionId}</strong> has been successfully canceled.</p>
    <a href="${pageContext.request.contextPath}/viewBookings">Back to Bookings</a>
</body>
</html>
