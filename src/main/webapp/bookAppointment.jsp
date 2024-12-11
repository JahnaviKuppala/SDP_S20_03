<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .container label {
            font-size: 14px;
            display: block;
            margin-bottom: 6px;
        }
        .container input, .container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .container button {
            width: 100%;
            padding: 10px;
            background-color: #f39c12;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: #e67e22;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Book an Appointment with <c:out value="${param.doctor}"/></h2>
        <form action="submitAppointment" method="POST">
            <!-- Hidden field to pass the doctor's name -->
            <input type="hidden" name="doctor" value="<c:out value="${param.doctor}"/>">

            <!-- Patient Name -->
            <label for="name"> Your Name:</label>
            <input type="text" id="name" name="name" required>

            <!-- Appointment Date -->
            <label for="date">Appointment Date:</label>
            <input type="date" id="date" name="date" required>

            <!-- Appointment Time -->
            <label for="time">Appointment Time:</label>
            <input type="time" id="time" name="time" required>

            <!-- Submit Button -->
            <button type="submit">Book Appointment</button>
        </form>
    </div>
</body>
</html>
