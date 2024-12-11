<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - MediBuddy</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
    <style>
        /* Global Styles */
        /* Global Styles */
body {
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #a1c4fd, #c2e9fb); /* Cool gradient background */
    color: #333;
}

.login-container {
    width: 100%;
    max-width: 350px; /* Fixed width to avoid resizing issues */
    margin: 120px auto;
    padding: 25px;
    background-color: #ffffff;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    animation: fadeIn 1s ease-in-out;
    border: 1px solid #e0e0e0;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.login-container h2 {
    text-align: center;
    font-size: 26px;
    margin-bottom: 18px;
    color: #5e5e5e;
}

.login-container label {
    font-size: 14px;
    display: block;
    margin-bottom: 6px;
    color: #5e5e5e;
}

/* Equal width for input fields */
.login-container input,
.login-container select {
    width: calc(100% - 24px); /* Ensures the fields are slightly smaller and aligned */
    padding: 12px;
    margin-bottom: 16px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 6px;
    outline: none;
    transition: all 0.3s;
    background-color: #f9fafb;
}

.login-container input:focus,
.login-container select:focus {
    border-color: #64b5f6;
    box-shadow: 0 0 5px rgba(100, 181, 246, 0.5);
}

.login-container button {
    width: 100%;
    padding: 12px;
    background-color: #64b5f6;
    color: white;
    font-size: 18px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.login-container button:hover {
    background-color: #42a5f5;
}

.signup-link {
    text-align: center;
    margin-top: 12px;
}

.signup-link a {
    color: #64b5f6;
    text-decoration: none;
    font-weight: bold;
}

.signup-link a:hover {
    text-decoration: underline;
}

.error-message {
    text-align: center;
    color: red;
    margin-top: 10px;
    font-size: 14px;
}

@media (max-width: 480px) {
    .login-container {
        width: 90%;
    }

    .login-container h2 {
        font-size: 24px;
    }
}
        
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login to MediBuddy</h2>
        
        <form action="loginServlet" method="POST">
            <!-- Display Error Message if Any -->
            <c:if test="${not empty errorMessage}">
                <div class="error-message">${errorMessage}</div>
            </c:if>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <label for="role">Select Role</label>
            <select id="role" name="role" required>
                <option value="" disabled selected>Choose your role</option>
                <option value="admin">Admin</option>
                <option value="doctor">Doctor</option>
                <option value="patient">Patient</option>
                <option value="pharmacist">Pharmacist</option>
            </select>

            <button type="submit">Login</button>
        </form>

        <div class="signup-link">
            <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>
        </div>
    </div>
</body>
</html> 