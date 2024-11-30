<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            text-align: center;
            padding-top: 50px;
        }
        .error-container {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
        .error-message {
            font-size: 1.2em;
            font-weight: bold;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <p class="error-message">${errorMessage}</p>
    </div>

    <a href="/movieReportLanguage" class="btn">Go Back and Try Again</a>

</body>
</html>
