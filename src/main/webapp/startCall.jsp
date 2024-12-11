<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start Video Call</title>
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
            max-width: 900px;
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
            margin-bottom: 30px;
            color: #555;
        }
        .video-call-area {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #000;
            color: white;
            border-radius: 8px;
            padding: 20px;
            height: 500px;
            margin-bottom: 30px;
            position: relative;
        }
        .video-call-area video {
            width: 100%;
            height: 100%;
            border-radius: 8px;
        }
        .controls {
            position: absolute;
            bottom: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .control-btn {
            background-color: #f39c12;
            color: white;
            border: none;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            font-size: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s, transform 0.3s;
        }
        .control-btn:hover {
            background-color: #e67e22;
            transform: translateY(-2px);
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
            <a href="Videocall.jsp">VideoCall</a>
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
        <h1>Start Your Video Call</h1>
        <p>Connect with your doctor through a secure video call.</p>
        <div class="video-call-area">
            <video id="video" autoplay></video>
            <div class="controls">
                <button class="control-btn" id="mute-btn">&#x1F507;</button>
                <button class="control-btn" id="video-btn">&#x1F4FA;</button>
                <button class="control-btn" id="start-call-btn">&#x1F4F1;</button>
                <button class="control-btn" id="end-call-btn">&#x2716;</button>
            </div>
        </div>
        <p>Make sure you are in a quiet environment and have a stable internet connection.</p>
    </div>

    <footer>
        <p>&copy; 2024 MediBuddy. All rights reserved.</p>
    </footer>

    <!-- Add JavaScript for video call functionality -->
    <script>
        const videoElement = document.getElementById('video');
        let stream = null;

        // Get user media (webcam and microphone)
        async function startVideo() {
            try {
                stream = await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
                videoElement.srcObject = stream;
            } catch (error) {
                console.error('Error accessing media devices.', error);
            }
        }

        // Handle mute button
        document.getElementById('mute-btn').addEventListener('click', function() {
            if (stream) {
                const audioTrack = stream.getAudioTracks()[0];
                audioTrack.enabled = !audioTrack.enabled;
                this.textContent = audioTrack.enabled ? '🔊' : '🔇';
            }
        });

        // Handle video button
        document.getElementById('video-btn').addEventListener('click', function() {
            if (stream) {
                const videoTrack = stream.getVideoTracks()[0];
                videoTrack.enabled = !videoTrack.enabled;
                this.textContent = videoTrack.enabled ? '📹' : '📷';
            }
        });

        // Handle start call button
        document.getElementById('start-call-btn').addEventListener('click', function() {
            startVideo();
        });

        // Handle end call button
        document.getElementById('end-call-btn').addEventListener('click', function() {
            if (stream) {
                stream.getTracks().forEach(track => track.stop());
                videoElement.srcObject = null;
            }
        });

        // Automatically start video on page load
        window.addEventListener('load', startVideo);
    </script>
</body>
</html>
