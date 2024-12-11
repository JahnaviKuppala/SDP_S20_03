<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Confirmation</title>
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
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            String doctor = request.getParameter("doctor");
            String name = request.getParameter("name");
            String date = request.getParameter("date");
            String time = request.getParameter("time");

            // Database connection
            String url = "jdbc:mysql://localhost:3306/your_database";
            String user = "your_db_user";
            String password = "your_db_password";
            Connection conn = null;
            PreparedStatement ps = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
                String sql = "INSERT INTO appointments (doctor, patient_name, appointment_date, appointment_time) VALUES (?, ?, ?, ?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, doctor);
                ps.setString(2, name);
                ps.setDate(3, Date.valueOf(date));
                ps.setTime(4, Time.valueOf(time));
                ps.executeUpdate();
        %>
                <h2>Appointment Confirmed</h2>
                <p>Thank you, <%= name %>. Your appointment with <%= doctor %> on <%= date %> at <%= time %> has been booked successfully.</p>
        <% 
            } catch (Exception e) {
                e.printStackTrace();
        %>
                <h2>Appointment Booking Failed</h2>
                <p>There was an error booking your appointment. Please try again later.</p>
        <% 
            } finally {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            }
        %>
    </div>
</body>
</html>
