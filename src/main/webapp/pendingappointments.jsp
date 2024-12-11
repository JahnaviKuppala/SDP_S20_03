<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pending Appointments</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e7f1fb;
            color: #333;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            height: 100%;
            min-height: 100vh;
        }

        /* Header Styles */
        header {
            width: 100%;
            background-color: #2c3e50;
            color: white;
            padding: 20px 0;
            position: sticky;
            top: 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        header .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            margin: 0;
            font-size: 28px;
            font-weight: 600;
            text-transform: uppercase;
        }

        header nav a {
            color: #f0f0f0;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #3498db;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-size: 16px;
        }

        header nav a:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

        /* Appointments Container */
        .appointments-container {
            width: 85%;
            margin-top: 40px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            justify-items: center;
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Individual Appointment Card */
        .appointment-card {
            background: #fff;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            width: 100%;
            max-width: 300px;
            padding: 25px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            opacity: 0;
            animation: fadeInCard 0.5s forwards;
        }

        .appointment-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
        }

        .appointment-card:nth-child(odd) {
            animation-delay: 0.2s;
        }

        .appointment-card:nth-child(even) {
            animation-delay: 0.4s;
        }

        @keyframes fadeInCard {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Header for Appointment Card */
        .appointment-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .appointment-header h2 {
            font-size: 22px;
            color: #34495e;
        }

        .status-pending {
            background-color: #f39c12;
            color: white;
            padding: 8px 12px;
            border-radius: 20px;
            font-size: 14px;
            text-transform: uppercase;
            font-weight: 600;
        }

        /* Body of Appointment Card */
        .appointment-body p {
            font-size: 16px;
            margin: 10px 0;
        }

        .appointment-body p strong {
            color: #3498db;
        }

        /* Button Styling */
        .btn-view {
            display: inline-block;
            padding: 10px 18px;
            background-color: #2ecc71;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-size: 16px;
            text-align: center;
            margin-top: 15px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn-view:hover {
            background-color: #27ae60;
            transform: scale(1.05);
        }

        /* Footer Styles */
        footer {
            width: 100%;
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: 40px;
            position: relative;
            bottom: 0;
        }
    </style>
</head>
<body>

    <header>
        <div class="container">
            <h1>Pending Appointments</h1>
            <nav>
                <a href="/home">Home</a>
                <a href="/logout">Logout</a>
            </nav>
        </div>
    </header>

    <div class="appointments-container">
        <!-- Example of a Pending Appointment Card -->
        <div class="appointment-card">
            <div class="appointment-header">
                <h2>Appointment ID: 1234</h2>
                <span class="status-pending">Pending</span>
            </div>
            <div class="appointment-body">
                <p><strong>Patient Name:</strong> John Doe</p>
                <p><strong>Doctor:</strong> Dr. Smith</p>
                <p><strong>Scheduled Date:</strong> 10th December 2024</p>
                <a href="/viewAppointment?id=1234" class="btn-view">View Details</a>
            </div>
        </div>

        <!-- Another Pending Appointment -->
        <div class="appointment-card">
            <div class="appointment-header">
                <h2>Appointment ID: 5678</h2>
                <span class="status-pending">Pending</span>
            </div>
            <div class="appointment-body">
                <p><strong>Patient Name:</strong> Jane Smith</p>
                <p><strong>Doctor:</strong> Dr. Brown</p>
                <p><strong>Scheduled Date:</strong> 12th December 2024</p>
                <a href="/viewAppointment?id=5678" class="btn-view">View Details</a>
            </div>
        </div>

        <!-- Another Pending Appointment -->
        <div class="appointment-card">
            <div class="appointment-header">
                <h2>Appointment ID: 9101</h2>
                <span class="status-pending">Pending</span>
            </div>
            <div class="appointment-body">
                <p><strong>Patient Name:</strong> Mary Johnson</p>
                <p><strong>Doctor:</strong> Dr. White</p>
                <p><strong>Scheduled Date:</strong> 15th December 2024</p>
                <a href="/viewAppointment?id=9101" class="btn-view">View Details</a>
            </div>
        </div>

        <!-- Another Pending Appointment -->
        <div class="appointment-card">
            <div class="appointment-header">
                <h2>Appointment ID: 1122</h2>
                <span class="status-pending">Pending</span>
            </div>
            <div class="appointment-body">
                <p><strong>Patient Name:</strong> Peter Parker</p>
                <p><strong>Doctor:</strong> Dr. Stone</p>
                <p><strong>Scheduled Date:</strong> 18th December 2024</p>
                <a href="/viewAppointment?id=1122" class="btn-view">View Details</a>
            </div>
        </div>
        
        <div class="appointment-card">
            <div class="appointment-header">
                <h2>Appointment ID: 5123</h2>
                <span class="status-pending">Pending</span>
            </div>
            <div class="appointment-body">
                <p><strong>Patient Name:</strong> Geetha</p>
                <p><strong>Doctor:</strong> Dr. Jai</p>
                <p><strong>Scheduled Date:</strong> 22th December 2024</p>
                <a href="/viewAppointment?id=5678" class="btn-view">View Details</a>
            </div>
        </div>
        
        <div class="appointment-card">
            <div class="appointment-header">
                <h2>Appointment ID: 5193</h2>
                <span class="status-pending">Pending</span>
            </div>
            <div class="appointment-body">
                <p><strong>Patient Name:</strong> Harshitha</p>
                <p><strong>Doctor:</strong> Dr. Hari</p>
                <p><strong>Scheduled Date:</strong> 31st December 2024</p>
                <a href="/viewAppointment?id=5678" class="btn-view">View Details</a>
            </div>
        </div>
        
    </div>

    <footer>
        <div class="container">
            <p>&copy; 2024 Healthcare System. All rights reserved.</p>
        </div>
    </footer>

</body>
</html>
