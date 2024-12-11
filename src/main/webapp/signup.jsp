<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css"> <!-- External CSS file -->
    <style>
        body {
            background: linear-gradient(to right, #a1c4fd, #c2e9fb); /* Soft pastel blue gradient */
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            margin: 50px auto;
            max-width: 400px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            font-size: 26px;
            color: #4e74a7;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            margin: 10px 0 5px;
            color: #555;
        }

        input[type="text"], input[type="password"], input[type="date"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .radio-group {
            display: flex;
            justify-content: space-between;
            margin: 5px 0 15px;
        }

        input[type="radio"] {
            width: auto;
        }

        .buttons {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-top: 20px;
        }

        .buttons input[type="submit"], .buttons input[type="reset"] {
            background-color: #4e74a7;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .buttons input[type="submit"]:hover {
            background-color: #3b5b83;
        }

        .buttons input[type="reset"] {
            background-color: #ddd;
            color: black;
        }

        .buttons input[type="reset"]:hover {
            background-color: #bbb;
        }

        .message {
            text-align: center;
            margin-top: 20px;
        }

        .message a {
            color: #4e74a7;
            text-decoration: none;
        }

        .message a:hover {
            text-decoration: underline;
        }

        .error-message {
            text-align: center;
            color: red;
            margin-bottom: 20px;
        }

        @media (max-width: 480px) {
            .form-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="form-container">
        <h2>Signup Form</h2>

        <%-- Display any error messages --%>
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/signup" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label>Gender</label>
            <div class="radio-group">
                <label><input type="radio" name="pgender" value="Male" required /> Male</label>
                <label><input type="radio" name="pgender" value="Female" required /> Female</label>
                <label><input type="radio" name="pgender" value="Others" required /> Others</label>
            </div>

            <label for="pdob">Date of Birth:</label>
            <input type="date" id="pdob" name="pdob" required>

            <label for="ppwd">Password:</label>
            <input type="password" id="ppwd" name="ppwd" placeholder="Create a password" required>

            <label for="plocation">Location:</label>
            <input type="text" id="plocation" name="plocation" placeholder="Enter your city/town" required>

            <label for="pnumber">Contact Number:</label>
            <input type="number" id="pnumber" name="pnumber" placeholder="Enter your contact number" required>

            <div class="buttons">
                <input type="submit" value="Register">
                <input type="reset" value="Clear">
            </div>
        </form>

        <div class="message">
            <p>Already have an account? <a href="${pageContext.request.contextPath}/login.jsp">Login here</a>.</p>
        </div>
    </div>
</body>
</html>