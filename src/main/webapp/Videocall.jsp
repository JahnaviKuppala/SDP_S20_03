<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Call - Meet Your Doctor Online</title>
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
        .navbar .nav-links,
        .navbar .auth-links {
            display: flex;
            align-items: center;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        .container h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #4062a3;
        }
        .container p {
            font-size: 18px;
            margin-bottom: 40px;
            color: #555;
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-bottom: 40px;
        }
        .feature {
            background: #4062a3;
            color: white;
            border-radius: 10px;
            padding: 20px;
            width: 200px;
            margin: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
        }
        .feature img {
            width: 60px;
            height: 60px;
            margin-bottom: 15px;
        }
        .feature h3 {
            margin-bottom: 10px;
            font-size: 20px;
        }
        .start-call-btn {
            display: inline-block;
            padding: 10px 30px;
            background-color: #f39c12;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, transform 0.3s;
        }
        .start-call-btn:hover {
            background-color: #e67e22;
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
            <a href="pharmacy.jsp">Pharmacy</a>
            <a href="profile.jsp">Profile</a>
        </div>

        <div class="auth-links">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    Welcome, ${sessionScope.user.username} | 
                    <a href="logout.jsp">Logout</a>
                </c:when>
                <c:otherwise>
                    <a href="login.jsp">Login</a> | 
                    <a href="signup.jsp">Signup</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <div class="container">
        <h1>Meet Your Doctor Online</h1>
        <p>Experience the convenience of meeting your doctor online through a secure and easy-to-use video call platform.</p>
        <div class="features">
            <div class="feature">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732600615/d03xwyjavu7d9y0tbwil.webp" alt="Easy to Use">
                <h3>Easy to Use</h3>
                <p>Our platform is designed to be user-friendly.</p>
            </div>
            <div class="feature">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732687431/wvmfbnfthzc9guihn2li.avif" alt="Secure">
                <h3>Secure</h3>
                <p>Your privacy and data are protected.</p>
            </div>
            <div class="feature">
                <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732687542/i4hbag9h5u4yd77nbfiw.png" alt="Available 24/7">
                <h3>Available 24/7</h3>
                <p>Consult with doctors anytime, anywhere.</p>
            </div>
        </div>
        <a href="startCall.jsp" class="start-call-btn">Start Video Call</a>
    </div>

    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>
</body>
</html>
