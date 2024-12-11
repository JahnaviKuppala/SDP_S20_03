<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Appointments</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Ubuntu:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Ubuntu', sans-serif;
            background-color: #f4f7fa;
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

        .table th, .table td {
            text-align: center;
        }

        .table-container {
            margin-top: 40px;
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

    <div class="container table-container">
        <h2 class="text-center my-4">Upcoming Appointments</h2>
        
        <!-- Table displaying upcoming appointments -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Appointment ID</th>
                    <th>Patient Name</th>
                    <th>Doctor Name</th>
                    <th>Appointment Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Sample appointments data
                    String[][] appointments = {
                        {"1", "Ramesh", "Dr. Sneha", "2024-12-10", "Scheduled"},
                        {"2", "Suresh", "Dr. Jai", "2024-12-11", "Scheduled"},
                        {"3", "Ganesh", "Dr. Vamsi", "2024-12-12", "Scheduled"},
                       {"4", "Naresh", "Dr. Krish", "2024-12-15", "Scheduled"},
                    };
                    
                    // Loop through the sample data and display it in the table
                    for (String[] appointment : appointments) {
                        String appointmentId = appointment[0];
                        String patientName = appointment[1];
                        String doctorName = appointment[2];
                        String appointmentDate = appointment[3];
                        String status = appointment[4];
                %>
                    <tr>
                        <td><%= appointmentId %></td>
                        <td><%= patientName %></td>
                        <td><%= doctorName %></td>
                        <td><%= appointmentDate %></td>
                        <td><%= status %></td>
                    </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
