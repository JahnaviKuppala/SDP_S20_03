<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Checkup</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #f6d365, #fda085);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .checkup-container {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 900px;
            animation: slideIn 1.5s ease-out;
        }
        .checkup-container h1 {
            text-align: center;
            color: #ff7f50;
            margin-bottom: 20px;
            font-size: 2.5rem;
        }
        .checkup-container p {
            font-size: 1rem;
            line-height: 1.6;
            color: #555;
        }
        .services-list {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .service {
            background: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 200px;
            margin: 15px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .service:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }
        .service i {
            font-size: 2.5rem;
            color: #ff7f50;
            margin-bottom: 10px;
        }
        .service h3 {
            font-size: 1.2rem;
            margin: 10px 0;
            color: #333;
        }
        .service p {
            font-size: 0.9rem;
            color: #777;
        }
        .book-btn {
            display: block;
            background: #ff7f50;
            color: #fff;
            padding: 10px 20px;
            margin: 20px auto;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 1rem;
            text-align: center;
            transition: background 0.3s, transform 0.3s;
        }
        .book-btn:hover {
            background: #e5673e;
            transform: scale(1.1);
        }
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="checkup-container">
        <h1>Health Checkup Packages</h1>
        <p>Choose from our comprehensive health checkup packages designed to suit your needs. Early detection can save lives!</p>
        
        <div class="services-list">
            <div class="service">
                <i class="fas fa-heartbeat"></i>
                <h3>Cardiac Checkup</h3>
                <p>Includes ECG, blood tests, and a cardiologist consultation.</p>
            </div>
            <div class="service">
                <i class="fas fa-flask"></i>
                <h3>Full Body Checkup</h3>
                <p>Comprehensive tests to assess your overall health.</p>
            </div>
            <div class="service">
                <i class="fas fa-eye"></i>
                <h3>Eye Checkup</h3>
                <p>Vision tests and detailed eye examination.</p>
            </div>
            <div class="service">
                <i class="fas fa-user-md"></i>
                <h3>General Consultation</h3>
                <p>Consult with our expert physicians for your health concerns.</p>
            </div>
        </div>

        <button class="book-btn" onclick="location.href='book_appointment.jsp'">Book an Appointment</button>
    </div>
</body>
</html>
