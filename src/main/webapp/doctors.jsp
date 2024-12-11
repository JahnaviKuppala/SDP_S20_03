<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Doctors</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .doctor-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px;
        }

        .doctor-card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 280px;
            margin: 20px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .doctor-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .doctor-card h3 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .doctor-card p {
            font-size: 16px;
            margin-bottom: 15px;
            color: #7f8c8d;
        }

        .doctor-card .btn {
            padding: 12px 20px;
            background-color: #f39c12;
            color: white;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .doctor-card .btn:hover {
            background-color: #e67e22;
        }

        .doctor-card:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <!-- Doctors List Section -->
    <div class="doctor-list">
        <!-- Sample Doctor Card 1 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676399/DO1_g2oedu.jpg" alt="Dr. John Doe">
            <h3>Dr. RAM</h3>
            <p>Cardiologist</p>
            <p>Specializing in heart diseases and surgeries.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20John%20Doe" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 2 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676533/DOC2_hossud.jpg" alt="Dr. Jane Smith">
            <h3>Dr. Sneha</h3>
            <p>Dermatologist</p>
            <p>Specializing in skin conditions and treatments.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Jane%20Smith" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 3 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676576/DO3_u5j72q.webp" alt="Dr. Michael Lee">
            <h3>Dr. Venkateswara Rao</h3>
            <p>Orthopedic Surgeon</p>
            <p>Specializing in bone, joint, and muscle treatments.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Michael%20Lee" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 4 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676661/DO4_l4l4wf.jpg" alt="Dr. Lisa Wong">
            <h3>Dr. Jahnavi</h3>
            <p>Pediatrician</p>
            <p>Specializing in children's health and developmental disorders.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Lisa%20Wong" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 5 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676726/DO5_gcvpne.jpg" alt="Dr. Alan Brown">
            <h3>Dr. Shanthi</h3>
            <p>Neurologist</p>
            <p>Specializing in brain and nervous system disorders.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Alan%20Brown" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 6 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676888/DO6_cmxumj.jpg" alt="Dr. Susan Clark">
            <h3>Dr. Susan Clark</h3>
            <p>Gynaecologist</p>
            <p>Specializing in women's health, pregnancy, and childbirth.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Susan%20Clark" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 7 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732676970/DO7_ya13vw.webp" alt="Dr. David Harris">
            <h3>Dr. Lavanya</h3>
            <p>Urologist</p>
            <p>Specializing in urinary tract health and male reproductive health.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20David%20Harris" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 8 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732677086/DO8_uvphmi.jpg" alt="Dr. Emily Davis">
            <h3>Dr. Dhanvik</h3>
            <p>Endocrinologist</p>
            <p>Specializing in hormone imbalances and endocrine disorders.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Emily%20Davis" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 9 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732677142/DO9_ronz7k.jpg" alt="Dr. Thomas Wilson">
            <h3>Dr. Jai</h3>
            <p>Psychiatrist</p>
            <p>Specializing in mental health and emotional well-being.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Thomas%20Wilson" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 10 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732677256/DO_dlmi3k.webp" alt="Dr. Maria Martinez">
            <h3>Dr. Mahi</h3>
            <p>Gastroenterologist</p>
            <p>Specializing in digestive disorders and gastrointestinal health.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Maria%20Martinez" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 11 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732677339/DO12_wezzud.jpg" alt="Dr. William Clark">
            <h3>Dr. Yash</h3>
            <p>Ophthalmologist</p>
            <p>Specializing in eye health, vision, and corrective surgeries.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20William%20Clark" class="btn">Book Appointment</a>
        </div>

        <!-- Sample Doctor Card 12 -->
        <div class="doctor-card">
            <img src="https://res.cloudinary.com/drcoh3sol/image/upload/v1732677375/DO11_diolss.jpg" alt="Dr. Sarah Lee">
            <h3>Dr.Anu</h3>
            <p>Rheumatologist</p>
            <p>Specializing in joint and autoimmune disorders.</p>
            <a href="bookAppointment.jsp?doctor=Dr.%20Sarah%20Lee" class="btn">Book Appointment</a>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 JahnaviRam. All rights reserved.</p>
    </footer>
</body>
</html>
