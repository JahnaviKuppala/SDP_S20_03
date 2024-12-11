<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #a1c4fd, #c2e9fb);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .appointment-container {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 600px;
            animation: fadeIn 1.5s ease-in-out;
        }
        .appointment-container h1 {
            text-align: center;
            color: #6c63ff;
            margin-bottom: 20px;
            font-size: 2rem;
        }
        .appointment-container form {
            display: flex;
            flex-direction: column;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-size: 1rem;
            margin-bottom: 5px;
            display: block;
        }
        .form-group input, 
        .form-group select, 
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
        }
        .form-group input:focus, 
        .form-group select:focus, 
        .form-group textarea:focus {
            outline: none;
            border-color: #6c63ff;
        }
        .submit-btn {
            padding: 10px 20px;
            background: #6c63ff;
            color: #fff;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 1rem;
            transition: transform 0.3s, background 0.3s;
        }
        .submit-btn:hover {
            background: #574bce;
            transform: scale(1.1);
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
    </style>
</head>
<body>
    <div class="appointment-container">
        <h1>Book Your Appointment</h1>
        <form action="confirm_appointment.jsp" method="post">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="service">Select Service</label>
                <select id="service" name="service" required>
                    <option value="" disabled selected>Select a health checkup package</option>
                    <option value="Cardiac Checkup">Cardiac Checkup</option>
                    <option value="Full Body Checkup">Full Body Checkup</option>
                    <option value="Eye Checkup">Eye Checkup</option>
                    <option value="General Consultation">General Consultation</option>
                </select>
            </div>
            <div class="form-group">
                <label for="date">Preferred Date</label>
                <input type="date" id="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="comments">Additional Comments (Optional)</label>
                <textarea id="comments" name="comments" rows="3" placeholder="Any specific requirements"></textarea>
            </div>
            <button type="submit" class="submit-btn">Book Appointment</button>
        </form>
    </div>
</body>
</html>
