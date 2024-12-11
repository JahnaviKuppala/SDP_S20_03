<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-color: #ecf0f1;
        }
        .profile-container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .profile-header h2 {
            color: #2c3e50;
            font-size: 28px;
            font-weight: bold;
        }
        .profile-header img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 15px;
            border: 2px solid #f39c12;
        }
        .profile-details {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-bottom: 30px;
        }
        .profile-details .detail {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 18px;
            color: #7f8c8d;
        }
        .profile-details .icon {
            font-size: 22px;
            color: #f39c12;
        }
        .medical-history, .upcoming-appointments, .recent-activity {
            margin-top: 30px;
        }
        .section-title {
            font-size: 22px;
            color: #34495e;
            border-bottom: 2px solid #f39c12;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        .section-content {
            padding: 10px 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .section-content ul {
            list-style: none;
            padding: 0;
        }
        .section-content ul li {
            margin-bottom: 10px;
            font-size: 16px;
            color: #34495e;
        }
        .edit-btn {
            display: block;
            width: 200px;
            margin: 30px auto 0;
            padding: 10px;
            background-color: #f39c12;
            color: white;
            text-align: center;
            font-size: 18px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .edit-btn:hover {
            background-color: #e67e22;
        }
        footer {
            text-align: center;
            padding: 20px 0;
            background-color: #2c3e50;
            color: white;
            margin-top: 50px;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnH/PR1h8V56DJi5Opl1xj+q7tFawlxF4C7FvX3gf1K8kP8dZlmeP6a0Nmij6bFV8BlW6o+g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="profile-container">
        <!-- Profile Header -->
        <div class="profile-header">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1729236064/fotor-20241018125034_ht3xya.png" alt="User Profile Picture">
            <h2>Your Profile</h2>
        </div>

        <!-- Profile Details -->
        <div class="profile-details">
            <div class="detail">
                <span class="icon"><i class="fas fa-user"></i></span>
                <span>Name:</span>
                <span>Kuppala Jahnavi</span>
            </div>
            <div class="detail">
                <span class="icon"><i class="fas fa-envelope"></i></span>
                <span>Email:</span>
                <span>kuppalajahnavi@example.com</span>
            </div>
            <div class="detail">
                <span class="icon"><i class="fas fa-phone"></i></span>
                <span>Phone:</span>
                <span>+91 9876543210</span>
            </div>
            <div class="detail">
                <span class="icon"><i class="fas fa-map-marker-alt"></i></span>
                <span>Address:</span>
                <span>123, Main Street, City, State, ZIP</span>
            </div>
        </div>

        <!-- Medical History -->
        <div class="medical-history">
            <div class="section-title">Medical History</div>
            <div class="section-content">
                <ul>
                    <li>Allergies: Penicillin</li>
                    <li>Medications: Metformin, Lisinopril</li>
                    <li>Previous Surgeries: Appendectomy (2015)</li>
                    <li>Chronic Conditions: Hypertension, Diabetes</li>
                </ul>
            </div>
        </div>

        <!-- Upcoming Appointments -->
        <div class="upcoming-appointments">
            <div class="section-title">Upcoming Appointments</div>
            <div class="section-content">
                <ul>
                    <li>Cardiologist - Dr. Smith - 25th Nov 2024</li>
                    <li>Dermatologist - Dr. Jones - 1st Dec 2024</li>
                </ul>
            </div>
        </div>

        <!-- Recent Activity -->
        <div class="recent-activity">
            <div class="section-title">Recent Activity</div>
            <div class="section-content">
                <ul>
                    <li>Booked an appointment with Cardiologist - Dr. Smith</li>
                    <li>Updated contact information</li>
                </ul>
            </div>
        </div>

        <!-- Edit Profile Button -->
        <a href="editProfile.jsp" class="edit-btn">Edit Profile</a>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
