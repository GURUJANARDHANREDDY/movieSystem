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
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Title styling */
        .page-title {
            text-align: center;
            font-size: 2rem;
            color: #007bff;
            margin-top: 20px;
        }

        /* Container for movie cards */
        .container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin: 50px auto;
            padding: 20px;
        }

        /* Movie card styling */
        .movie-card {
            background-color: rgba(0, 0, 0, 0.8);
            color: #ffffff;
            border-radius: 10px;
            padding: 15px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
            height: auto;
            width: 100%;
            max-width: 1000px;
            position: relative;
        }

        .movie-card h3 {
            color: #ffd700;
            font-size: 1.5rem;
        }

        .movie-card p {
            margin: 5px 0;
            font-size: 1rem;
        }

        /* Movie image styling */
        .movie-card img {
            width: 100%;
            max-width: 1000px;
            max-height: 1500px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
            cursor: pointer;
        }

        /* Play button container styling */
        .play-button-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            z-index: 1;
        }

        .play-button-container .play-button {
            font-size: 3rem;
            color: #ffffff;
            margin-bottom: 5px;
            pointer-events: none;
        }

        .play-button-container .watch-trailer {
            font-size: 1rem;
            color: #ffffff;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 5px 10px;
            border-radius: 5px;
            font-weight: bold;
            pointer-events: none;
        }

        /* Movie action buttons */
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
        @media (max-width: 992px) {
            .container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 576px) {
            .container {
                grid-template-columns: 1fr;
            }

            .movie-card img {
                max-height: 800px;
            }
        }
    </style>

    <script>
        // Function to redirect to YouTube video when the image is clicked
        function playVideoOnYouTube(videoUrl) {
            window.open(videoUrl, '_blank');
        }
    </script>
</head>
<body>

<!-- Title Section -->
<div class="page-title">
    <h1>Movie Report</h1>
</div>

<div class="container">
    <c:forEach items="${movieList}" var="movie">
        <div class="movie-card">
            <!-- Play button and "Watch Trailer" overlay -->
            <div class="play-button-container">
                <div class="play-button">▶</div>
                <div class="watch-trailer">Watch Trailer</div>
            </div>

            <!-- Display Movie Image -->
            <a href="javascript:void(0);" onclick="playVideoOnYouTube('${movie.videoUrl}')">
                <img 
                    id="image-${movie.movieId}"
                    src="${movie.url != null ? movie.url : 'https://via.placeholder.com/800x1200'}" 
                    alt="${movie.movieName}" 
                    class="img-fluid">
            </a>
            <h3>${movie.movieName}</h3>
            <p><strong>Movie Number:</strong> ${movie.movieId}</p>
            <p><strong>Language:</strong> ${movie.language}</p>
            <p><strong>Genre:</strong> ${movie.genre}</p>
            <p><strong>Duration:</strong> ${movie.duration}</p>
            <p><strong>Rating:</strong> ${movie.ratings}</p>

            <!-- Movie Show Times -->
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

        </div>
    </c:forEach>
</div>

<!-- Return to Index -->
<div class="return-link">
    <a href="/index">Return to Index</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
