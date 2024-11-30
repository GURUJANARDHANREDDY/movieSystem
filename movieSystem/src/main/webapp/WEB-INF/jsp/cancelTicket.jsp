<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cancel Ticket</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to bottom right, #1e90ff, #87cefa);
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
    form {
        background: rgba(255, 255, 255, 0.1);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
    }
    h2 {
        font-size: 2rem;
        margin-bottom: 20px;
        text-transform: uppercase;
    }
    input[type="text"] {
        width: 80%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        font-size: 1rem;
        outline: none;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    }
    button {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 1rem;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    button:hover {
        background-color: #45a049;
    }
    button:focus {
        outline: none;
    }
</style>
</head>
<body>
    <div class="container">
        <form action="/aboutCancel">
            <h2>Enter the Ticket ID</h2>
            <input type="text" name="ticket" placeholder="Enter your Ticket ID"><br/>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
