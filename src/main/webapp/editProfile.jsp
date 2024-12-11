<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .edit-profile-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f4f4f4;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .edit-profile-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .edit-profile-header h2 {
            color: #2c3e50;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-size: 16px;
            color: #7f8c8d;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }

        .form-group input[type="submit"] {
            width: auto;
            background-color: #f39c12;
            color: white;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #e67e22;
        }

        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <div class="edit-profile-container">
        <!-- Edit Profile Header -->
        <div class="edit-profile-header">
            <h2>Edit Your Profile</h2>
        </div>

        <!-- Edit Profile Form -->
        <form action="updateProfileServlet" method="POST">
            <!-- Name Field -->
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" value="Kuppala Jahnavi" required>
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" value="kuppalajahnavi@example.com" required>
            </div>

            <!-- Phone Field -->
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="phone" value="+91 9876543210" required>
            </div>

            <!-- Address Field -->
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" required>123, Main Street, City, State, ZIP</textarea>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Update Profile">
            </div>
        </form>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
