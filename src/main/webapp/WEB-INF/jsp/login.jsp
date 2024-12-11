<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css"> <!-- Add your custom styles here -->
    <style>
        body {
            background: linear-gradient(to right, #f0f0f0, #f7f7f7);
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .form-container {
            background-color: #fff;
            color: #333;
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

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .buttons {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-top: 20px;
        }

        .buttons input[type="submit"] {
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

            .buttons {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Login Form</h2>

        <%-- Display any error messages --%>
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <div class="buttons">
                <input type="submit" value="Login" />
            </div>
        </form>

        <div class="message">
            <p>Don't have an account? <a href="${pageContext.request.contextPath}/signup">Sign up here</a>.</p>
        </div>
    </div>
</body>
</html>
