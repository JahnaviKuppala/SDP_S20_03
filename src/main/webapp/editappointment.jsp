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

        /* Edit form style */
        .edit-form {
            margin-top: 20px;
            text-align: left;
        }

        .edit-form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .edit-form button {
            padding: 10px 20px;
            background-color: #2ecc71;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .edit-form button:hover {
            background-color: #27ae60;
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

        <!-- Edit Appointment Form -->
        <form class="edit-form" action="updateAppointment.jsp" method="post">
            <h3>Edit Your Appointment</h3>
            
            <!-- Hidden field to store the appointment ID (passed via query parameter) -->
            <input type="hidden" name="appointmentId" value="<%= request.getParameter("appointmentId") %>">
            
            <label for="doctor">Doctor:</label>
            <input type="text" id="doctor" name="doctor" value="<%= request.getParameter("doctor") %>" required>
            
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="<%= request.getParameter("date") %>" required>
            
            <label for="time">Time:</label>
            <input type="time" id="time" name="time" value="<%= request.getParameter("time") %>" required>
            
            <label for="patientName">Patient Name:</label>
            <input type="text" id="patientName" name="patientName" value="<%= request.getParameter("patientName") %>" required>
            
            <label for="contact">Contact Number:</label>
            <input type="text" id="contact" name="contact" value="<%= request.getParameter("contact") %>" required>

            <button type="submit">Update Appointment</button>
        </form>

        <!-- Button to go back to home page -->
        <a href="index.jsp" class="btn">Go to Home</a>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
