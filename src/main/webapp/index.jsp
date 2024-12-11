<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Doctor Consultation</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #4062a3;
            padding: 15px 30px;
            color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }
        .navbar a:hover {
            text-decoration: underline;
        }
        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .navbar .nav-links, .navbar .auth-links {
            display: flex;
            align-items: center;
        }
        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://res.cloudinary.com/drcoh3sol/image/upload/v1732600615/d03xwyjavu7d9y0tbwil.webp') no-repeat center center;
            background-size: cover;
            color: white;
            text-align: center;
            padding: 100px 20px;
            min-height: 600px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .hero h1 {
            font-size: 50px;
            margin: 10px 0;
            font-weight: bold;
        }
        .hero p {
            font-size: 22px;
            margin: 5px 0;
        }
        .specialties {
            background-color: #fff;
            padding: 50px 20px;
            text-align: center;
        }
        .specialties h2 {
            font-size: 36px;
            margin-bottom: 30px;
            color: #4062a3;
        }
        .specialties p {
            font-size: 18px;
            margin-bottom: 30px;
            color: #555;
        }
        .specialty-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .specialty-card {
            background-color: #f4f4f9;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 200px;
            text-align: center;
        }
        .specialty-card img {
            width: 80px;
            height: 80px;
            margin-bottom: 15px;
        }
        .specialty-card h3 {
            font-size: 18px;
            color: #4062a3;
            margin-bottom: 10px;
        }
        .cta-buttons {
            display: flex;
            justify-content: center;
            margin-top: 30px;
            gap: 15px;
        }
        .cta-buttons a {
            display: inline-block;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, transform 0.3s;
        }
        .cta-buttons .call-us {
            background-color: #3498db;
            color: white;
        }
        .cta-buttons .call-us:hover {
            background-color: #2980b9;
            transform: translateY(-3px);
        }
        .cta-buttons .health-checkup {
            background-color: #1abc9c;
            color: white;
        }
        .cta-buttons .health-checkup:hover {
            background-color: #16a085;
            transform: translateY(-3px);
        }
        .cta-buttons .book-appointment {
            background-color: #e67e22;
            color: white;
        }
        .cta-buttons .book-appointment:hover {
            background-color: #d35400;
            transform: translateY(-3px);
        }
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: 30px;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">
            <a href="index.jsp">MediBuddy</a>
        </div>
        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="appointments.jsp">Appointments</a>
            <a href="doctors.jsp">Doctors</a>
            <a href="Videocall.jsp">Video Call</a>
            <a href="pharmacy.jsp">Pharmacy</a>
            <a href="profile.jsp">Profile</a>
            <c:if test="${sessionScope.user.role == 'admin'}">
                <a href="admin.jsp">Admin</a>
            </c:if>
        </div>
        <div class="auth-links">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    Welcome, ${sessionScope.user.username} | <a href="logout.jsp">Logout</a>
                </c:when>
                <c:otherwise>
                    <a href="login.jsp">Login</a> | <a href="signup.jsp">Signup</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to MediBuddy</h1>
        <p>Your trusted platform for virtual medical consultations.</p>
        <p>Embrace a life of well-being with our reliable support and expertise.</p>
        <p>Together, let's navigate the path to better health and a brighter future.</p>
    </div>
    <!-- Specialties Section -->
    <div class="specialties">
        <h2>Explore Our Centres of Clinical Excellence</h2>
        <p>Learn about the world-class health care we provide at our dedicated centres for several key specialties and super specialties.</p>
        <div class="specialty-grid">
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732675508/C_eqsix4.webp" alt="Cardiology">
                <h3>Cardiology</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732675561/D_msqavu.png" alt="Dentistry">
                <h3>Dentistry</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732675364/2N_xqqjwu.png" alt="Neurology">
                <h3>Neurology</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732675670/O_cbdkkk.png" alt="Orthopedics">
                <h3>Orthopedics</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732675796/G-removebg-preview_yepmvc.png" alt="Gastroenterology">
                <h3>Gastroenterology</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732675941/Gi-removebg-preview_o5lzkz.png" alt="Gynecology">
                <h3>Gynecology</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676018/D-removebg-preview_ptb2nf.png" alt="Dermatology">
                <h3>Dermatology</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676336/OP-removebg-preview_ft2k6x.png" alt="Ophthalmology">
                <h3>Ophthalmology</h3>
            </div>
            <div class="specialty-card">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676144/U-removebg-preview_wyxzqx.png" alt="Urology">
                <h3>Urology</h3>
            </div>
        </div>
        <div class="cta-buttons">
            <a href="call_us.jsp" class="call-us">Call Us</a>
            <a href="health_checkup.jsp" class="health-checkup">Health Checkup</a>
            <a href="book_appointment.jsp" class="book-appointment">Book an Appointment</a>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
