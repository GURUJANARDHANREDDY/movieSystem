<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cancellation Successful</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to bottom right, #4CAF50, #8BC34A);
        margin: 0;
        padding: 0;
        color: #fff;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }
    h2 {
        font-size: 2.5rem;
        margin-bottom: 20px;
        text-transform: uppercase;
    }
    p {
        font-size: 1.2rem;
        margin-bottom: 20px;
    }
    a {
        text-decoration: none;
        font-size: 1rem;
        color: #fff;
        background-color: #ff5722;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #e64a19;
    }
</style>
</head>
<body>
    <div class="container">
        <div>
            <h2>Cancellation Successful</h2>
            <p>${message}</p>
            <a href="/index">Return to Home</a>
        </div>
    </div>
</body>
</html>
