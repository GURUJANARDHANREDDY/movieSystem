<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Show Time</title>
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
            max-width: 800px;
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
        .btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 1em;
        }
        .btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<header>Movie Booking</header>

<div class="content">
    <h2>Book Your Tickets</h2>
    <form action="/bookSeats" method="POST">
        <input type="hidden" name="movieId" value="${movie.movieId}" />
        <input type="hidden" name="movieName" value="${movie.movieName}" />
        
        <table>
            <thead>
                <tr>
                    <th>Show Time</th>
                    <th>Royal Seats Available</th>
                    <th>Premier Seats Available</th>
                    <th>Seat Type</th>
                    <th>Number of Seats</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="show" items="${movieShowList}">
                    <tr>
                        <td>
                            <!-- Dropdown for show time -->
                            <input type="radio" name="selectedShowTime" value="${show.showTimeName}" /> ${show.showTimeName}
                        </td>
                        <td>${show.royalSeatNumber - show.royalBooked}</td>
                        <td>${show.premierSeatNumber - show.premierBooked}</td>
                        <td>
                            <!-- Dropdown for seat type -->
                            <select name="seatType_${show.showTimeName}">
                                <option value="royal">Royal</option>
                                <option value="premier">Premier</option>
                            </select>
                        </td>
                        <td>
                            <!-- Input for number of seats -->
                            <input type="number" name="numberOfSeats_${show.showTimeName}" min="1" 
                                   max="${show.royalSeatNumber - show.royalBooked}" required />
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <button type="submit" class="btn">Confirm Booking</button>
    </form>
</div>

</body>
</html>
