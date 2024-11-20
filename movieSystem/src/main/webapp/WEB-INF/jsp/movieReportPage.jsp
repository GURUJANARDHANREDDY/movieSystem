<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Report</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background Image */
        body {
            background-image: url('https://img.freepik.com/free-vector/cinema-stage-background-with-clapperboard-popcorn-chairs_1017-38722.jpg?uid=R128034498&ga=GA1.1.1443282485.1731505884&semt=ais_hybrid');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }

        /* Responsive container for movie cards */
        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* Adjust for responsiveness */
            gap: 20px;
            margin: 50px auto;
            padding: 20px;
        }

        /* Movie card styling */
        .movie-card {
            background-color: rgba(0, 0, 0, 0.8); /* Dark background with transparency */
            color: #ffffff; /* White text for visibility */
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3); /* Subtle shadow for depth */
            text-align: center;
        }

        .movie-card h3 {
            color: #ffd700; /* Gold for movie titles */
            font-size: 1.5rem;
        }

        .movie-card p {
            margin: 5px 0;
            font-size: 1rem;
        }

        .btn-custom {
            margin-top: 10px;
        }

        /* Return to Index */
        .return-link {
            text-align: center;
            margin-top: 20px;
        }

        .return-link a {
            font-size: 1.2rem;
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .return-link a:hover {
            background-color: #0056b3;
        }

        /* Responsiveness for mobile */
        @media (max-width: 576px) {
            .movie-card {
                padding: 15px;
                font-size: 0.9rem;
            }
        }

        /* Attribution */
        .attribution {
            text-align: center;
            font-size: 12px;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <c:forEach items="${movieList}" var="movie">
        <div class="movie-card">
            <h3>${movie.movieName}</h3>
            <p><strong>Movie Number:</strong> ${movie.movieId}</p>
            <p><strong>Language:</strong> ${movie.language}</p>
            <p><strong>Genre:</strong> ${movie.genre}</p>
            <p><strong>Duration:</strong> ${movie.duration}</p>
            <p><strong>Rating:</strong> ${movie.ratings}</p>

            <div>
                <c:forEach items="${movieMap}" var="showTime">
                    <c:if test="${movie.movieId == showTime.key}">
                        <c:forEach items="${showTime.value}" var="show">
                            <p><strong>Show Time Name:</strong> ${show.showTimeName}</p>
                            <p><strong>Royal Seats:</strong> ${show.royalSeatNumber} (Booked: ${show.royalBooked})</p>
                            <p><strong>Premier Seats:</strong> ${show.premierSeatNumber} (Booked: ${show.premierBooked})</p>
                        </c:forEach>
                    </c:if>
                </c:forEach>
            </div>

            <a href="/movieDeletion/${movie.movieId}" class="btn btn-danger btn-custom">Delete Movie</a>
            <a href="/updateMovie/${movie.movieId}" class="btn btn-warning btn-custom">Update Movie</a>
            <a href="/updateMovieShow/${movie.movieId}" class="btn btn-info btn-custom">Update Show Time</a>
        </div>
    </c:forEach>
</div>

<!-- Return to Index -->
<div class="return-link">
    <a href="/index">Return to Index</a>
</div>

<!-- Attribution -->
<div class="attribution">
    Image by <a href="https://thumbs.dreamstime.com/b/movie-film-strip-reel-popcorn-background-cinema-concept-321870052.jpg" target="_blank" style="color: white;">blank</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
