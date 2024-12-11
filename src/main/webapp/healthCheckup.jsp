<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Checkup | Apollo Hospitals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #4062a3;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .header h1 {
            margin: 0;
            font-size: 36px;
        }
        .content {
            padding: 20px;
        }
        .checkup-options {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .checkup-card {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .checkup-card h3 {
            color: #4062a3;
            font-size: 24px;
            margin: 0 0 10px;
        }
        .checkup-card p {
            font-size: 16px;
            color: #333;
        }
        .checkup-card a {
            text-decoration: none;
            color: #fff;
            background-color: #4062a3;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            display: block;
            margin-top: 15px;
        }
        .checkup-card a:hover {
            background-color: #274b7b;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Health Checkup Plans</h1>
    </div>
    
    <div class="content">
        <p>Choose from a range of health checkup options designed to meet your healthcare needs:</p>

        <div class="checkup-options">
            <!-- Checkup Plan 1 -->
            <div class="checkup-card">
                <h3>Basic Health Checkup</h3>
                <p>This checkup includes essential health tests to give you an overview of your health status.</p>
                <a href="bookAppointment.jsp?plan=basic">Book Now</a>
            </div>

            <!-- Checkup Plan 2 -->
            <div class="checkup-card">
                <h3>Comprehensive Health Checkup</h3>
                <p>Get a more detailed assessment with advanced tests to ensure thorough monitoring of your health.</p>
                <a href="bookAppointment.jsp?plan=comprehensive">Book Now</a>
            </div>

            <!-- Checkup Plan 3 -->
            <div class="checkup-card">
                <h3>Advanced Health Checkup</h3>
                <p>Our most thorough checkup plan, including specialized tests for a complete understanding of your health.</p>
                <a href="bookAppointment.jsp?plan=advanced">Book Now</a>
            </div>
        </div>
    </div>
</body>
</html>
