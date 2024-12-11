<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book an Appointment</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Appointment Form Styles */
        .appointment-form {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .appointment-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .appointment-form label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
        }

        .appointment-form input, .appointment-form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .appointment-form button {
            width: 100%;
            padding: 12px;
            background-color: #f39c12;
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .appointment-form button:hover {
            background-color: #e67e22;
        }

        .appointment-form .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <!-- Appointment Form Section -->
    <div class="appointment-form">
        <h2>Book Your Appointment</h2>

        <form action="appointmentConfirmation.jsp" method="post">
            <div>
                <label for="doctor">Select Doctor</label>
                <select name="doctor" id="doctor" required>
                    <option value="">-- Select a Doctor --</option>
                    <!-- Populate this dropdown with available doctors from the database -->
                    <option value="Dr. John Doe">Dr. John Doe</option>
                    <option value="Dr. Jane Smith">Dr. Jane Smith</option>
                    <option value="Dr. Alex Brown">Dr. Alex Brown</option>
                </select>
            </div>

            <div>
                <label for="date">Select Date</label>
                <input type="date" id="date" name="date" required>
            </div>

            <div>
                <label for="time">Select Time</label>
                <input type="time" id="time" name="time" required>
            </div>

            <div>
                <label for="patientName">Your Name</label>
                <input type="text" id="patientName" name="patientName" required>
            </div>

            <div>
                <label for="contact">Your Contact</label>
                <input type="text" id="contact" name="contact" required>
            </div>

            <div>
                <button type="submit">Book Appointment</button>
            </div>

            <!-- Error message section -->
            <div class="error">
                <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
            </div>
        </form>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
