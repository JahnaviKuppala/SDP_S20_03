<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Bar</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #4062a3;
            padding: 10px 20px;
            color: white;
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
            font-size: 20px;
            font-weight: bold;
        }

        .navbar .nav-links {
            display: flex;
        }

        .navbar .user-info {
            font-size: 14px;
        }

        .navbar .user-info a {
            color: #f39c12;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <!-- Logo -->
        <div class="logo">
            <a href="index.jsp">MediBuddy</a>
        </div>

        <!-- Navigation Links -->
        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="appointments.jsp">Appointments</a>
            <a href="doctors.jsp">Doctors</a>
            <a href="pharmacy.jsp">Pharmacy</a>
            <a href="Videocall.jsp">VideoCall</a>
            <a href="profile.jsp">Profile</a>
        </div>

        <!-- User Information -->
        <div class="user-info">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    Welcome, ${sessionScope.user.name} |
                    <a href="logout.jsp">Logout</a>
                </c:when>
                <c:otherwise>
                    <a href="login.jsp">Login</a> |
                    <a href="signup.jsp">Signup</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

</body>

</html>
