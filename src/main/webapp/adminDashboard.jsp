<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Ubuntu:wght@400;500&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Ubuntu', sans-serif;
            background: linear-gradient(135deg, #16a085, #1f4037, #99f2c8);
            height: 100vh;
            margin: 0;
            color: #fff;
        }

        .navbar {
            background-color: #1abc9c;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        .navbar-brand {
            font-size: 1.8rem;
            font-weight: 700;
            letter-spacing: 2px;
        }
        .navbar-nav .nav-link {
            font-size: 1.1rem;
            margin-right: 20px;
            transition: color 0.3s;
        }
        .navbar-nav .nav-link:hover {
            color: #f1c40f;
        }

        .header {
            text-align: center;
            padding-top: 60px;
            margin-bottom: 40px;
            animation: fadeIn 1s ease-in;
        }

        .dashboard-title {
            font-size: 3rem;
            font-weight: 700;
            color: #fff;
            text-transform: uppercase;
            animation: slideIn 1.5s ease-out;
        }

        .container {
            margin-top: 40px;
        }

        .card-custom {
            background: #2c3e50;
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 30px;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .card-custom:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
        }

        .card-custom .card-title {
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 15px;
            color: #fff;
        }

        .card-custom .card-body {
            padding: 30px;
            text-align: center;
        }

        .card-custom .card-icon {
            font-size: 3rem;
            margin-bottom: 20px;
            color: #16a085;
        }

        .btn-custom {
            background-color: #1abc9c;
            color: white;
            padding: 12px 20px;
            font-weight: 600;
            border-radius: 30px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            text-transform: uppercase;
        }

        .btn-custom:hover {
            background-color: #16a085;
            transform: translateY(-5px);
        }

        .floating-btn {
            position: fixed;
            right: 30px;
            bottom: 30px;
            background-color: #e74c3c;
            padding: 15px;
            border-radius: 50%;
            color: white;
            font-size: 2rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .floating-btn:hover {
            background-color: #c0392b;
            transform: scale(1.1);
        }

        .dashboard-stats .col-md-4 {
            animation: fadeInUp 1.2s ease-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateX(-50%);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* New Pending Appointments Card Style */
        .pending-appointments-card {
            background: #fce4ec;
            color: #d81b60;
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
            animation: bounceIn 1s ease-out;
        }

        .pending-appointments-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .pending-appointments-card .card-icon {
            font-size: 3rem;
            color: #d81b60;
            margin-bottom: 20px;
        }

        .pending-appointments-card .card-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .pending-appointments-card .btn-custom {
            background-color: #e91e63;
            color: white;
            padding: 12px 25px;
            border-radius: 30px;
            font-weight: 700;
        }

        .pending-appointments-card .btn-custom:hover {
            background-color: #d81b60;
            transform: translateY(-3px);
        }

        @keyframes bounceIn {
            0% {
                transform: scale(0.5);
                opacity: 0;
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        /* New Upcoming Appointments Card Style */
        .upcoming-appointments-card {
            background: #fff3e0;
            color: #f39c12;
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
            animation: bounceIn 1.2s ease-out;
        }

        .upcoming-appointments-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .upcoming-appointments-card .card-icon {
            font-size: 3rem;
            color: #f39c12;
            margin-bottom: 20px;
        }

        .upcoming-appointments-card .card-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .upcoming-appointments-card .btn-custom {
            background-color: #f39c12;
            color: white;
            padding: 12px 25px;
            border-radius: 30px;
            font-weight: 700;
        }

        .upcoming-appointments-card .btn-custom:hover {
            background-color: #f1c40f;
            transform: translateY(-3px);
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="managePatients.jsp">Manage Patients</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="manageDoctors.jsp">Manage Doctors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="appointments.jsp">Appointments</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="header">
            <h1 class="dashboard-title">Admin Dashboard</h1>
        </div>

        <div class="row dashboard-stats">
            <!-- Pending Appointments Card -->
            <div class="col-md-4">
                <div class="card pending-appointments-card">
                    <i class="fas fa-calendar-times card-icon"></i>
                    <h4 class="card-title">Pending Appointments</h4>
                    <p>2 appointments awaiting confirmation</p>
                    <a href="pendingappointments.jsp" class="btn btn-custom">View All</a>
                </div>
            </div>

            <!-- Upcoming Appointments Card -->
            <div class="col-md-4">
                <div class="card upcoming-appointments-card">
                    <i class="fas fa-calendar-check card-icon"></i>
                    <h4 class="card-title">Upcoming Appointments</h4>
                    <p>3 upcoming appointments today</p>
                    <a href="Upcomingappointments.jsp" class="btn btn-custom">View Details</a>
                </div>
            </div>

            <!-- Doctor Stats Card -->
            <div class="col-md-4">
                <div class="card card-custom">
                    <i class="fas fa-user-md card-icon"></i>
                    <h4 class="card-title">Doctors</h4>
                    <p>Total Doctors: 10</p>
                    <a href="manageDoctors.jsp" class="btn btn-custom">Manage Doctors</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Floating Action Button -->
    <div class="floating-btn">
        <i class="fas fa-plus"></i>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
