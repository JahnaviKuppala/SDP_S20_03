<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Confirmation</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .confirmation-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .confirmation-container h2 {
            color: #2c3e50;
        }

        .confirmation-container p {
            font-size: 18px;
            margin: 10px 0;
        }

        .confirmation-container .details {
            font-weight: bold;
            margin: 20px 0;
            color: #2980b9;
        }

        .confirmation-container .btn {
            padding: 12px 20px;
            background-color: #f39c12;
            color: white;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 20px;
        }

        .confirmation-container .btn:hover {
            background-color: #e67e22;
        }

        .confirmation-container .edit-btn {
            background-color: #3498db;
        }

        .confirmation-container .edit-btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <!-- Appointment Confirmation Section -->
    <div class="confirmation-container">
        <h2>Appointment Confirmed!</h2>
        <p>Thank you for booking your appointment with MediBuddy. Here are your appointment details:</p>

        <div class="details">
            <p><strong>Doctor:</strong> <%= request.getParameter("doctor") %></p>
            <p><strong>Date:</strong> <%= request.getParameter("date") %></p>
            <p><strong>Time:</strong> <%= request.getParameter("time") %></p>
            <p><strong>Patient Name:</strong> <%= request.getParameter("patientName") %></p>
            <p><strong>Contact Number:</strong> <%= request.getParameter("contact") %></p>
        </div>

        <p>You will receive a reminder for your appointment closer to the date.</p>
        
        <!-- Button to go back to home page -->
        <a href="index.jsp" class="btn">Go to Home</a>

        <!-- Edit Appointment Option -->
        <a href="editappointment.jsp?appointmentId=<%= request.getParameter("appointmentId") %>" class="btn edit-btn">Edit Appointment</a>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
