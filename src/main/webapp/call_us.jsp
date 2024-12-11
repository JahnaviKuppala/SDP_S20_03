<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #74ebd5, #9face6);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .contact-container {
            text-align: center;
            padding: 20px;
            border-radius: 15px;
            background: rgba(0, 0, 0, 0.6);
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.3);
            animation: fadeIn 2s ease-in-out;
        }
        .contact-container h1 {
            margin-bottom: 20px;
            font-size: 2.5rem;
            color: #ffb900;
        }
        .contact-container p {
            margin: 15px 0;
            font-size: 1.2rem;
        }
        .contact-container .icon {
            font-size: 2rem;
            margin: 10px;
            color: #ffb900;
            transition: transform 0.3s, color 0.3s;
        }
        .contact-container .icon:hover {
            transform: scale(1.2);
            color: #fff;
        }
        .contact-btn {
            padding: 10px 20px;
            background: #ffb900;
            color: #000;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 1rem;
            transition: transform 0.3s, background 0.3s;
        }
        .contact-btn:hover {
            background: #fff;
            transform: scale(1.1);
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="contact-container">
        <h1>Contact Us</h1>
        <p>Have questions or need assistance? We're here to help!</p>
        <p><i class="fas fa-phone icon"></i> +1 234 567 890</p>
        <p><i class="fas fa-envelope icon"></i> support@example.com</p>
        <p><i class="fas fa-map-marker-alt icon"></i> 1234 Elm Street, Springfield</p>
        <button class="contact-btn" onclick="location.href='home.jsp'">Go Back to Home</button>
    </div>
</body>
</html>
