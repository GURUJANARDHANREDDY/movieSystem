<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Bookings</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        button {
            padding: 5px 10px;
            color: #fff;
            background-color: #d9534f;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <h1>View Bookings</h1>

    <!-- Display Success Message -->
    <c:if test="${not empty successMessage}">
        <p style="color: green;">${successMessage}</p>
    </c:if>

    <table>
        <thead>
            <tr>
                <th>Transaction ID</th>
                <th>Movie Name</th>
                <th>Show Time</th>
                <th>Seats</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="booking" items="${bookings}">
                <tr>
                    <td>${booking.transactionId}</td>
                    <td>${booking.movieName}</td>
                    <td>${booking.showTimeName}</td>
                    <td>${booking.numberOfSeatBooking}</td>
                    <td>${booking.status}</td>
                    <td>
                        <!-- Cancel Form -->
                        <form action="${pageContext.request.contextPath}/cancelBooking" method="POST" style="display: inline;">
                            <input type="hidden" name="transactionId" value="${booking.transactionId}" />
                            <button type="submit">Cancel</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
