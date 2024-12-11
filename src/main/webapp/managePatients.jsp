<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Patients</title>

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
            background: linear-gradient(45deg, #f8f9fa, #e2e3e5);
            height: 100vh;
            margin: 0;
            color: #333;
        }

        .navbar {
            background-color: #16a085;
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: 500;
        }

        .navbar-nav .nav-link {
            font-size: 1.1rem;
            margin-right: 20px;
        }

        .header {
            text-align: center;
            padding-top: 50px;
            margin-bottom: 30px;
        }

        .page-title {
            font-size: 2.5rem;
            font-weight: 700;
            color: #16a085;
            text-transform: uppercase;
        }

        .container {
            margin-top: 30px;
        }

        .card-custom {
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
        }

        .card-custom:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .card-custom .card-title {
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .card-custom .btn-custom {
            background-color: #16a085;
            color: white;
            padding: 12px 20px;
            font-weight: 600;
            border-radius: 30px;
            transition: background-color 0.3s ease;
        }

        .card-custom .btn-custom:hover {
            background-color: #1abc9c;
            transform: translateY(-3px);
        }

        .table-custom {
            border-radius: 12px;
            overflow: hidden;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .table-custom th,
        .table-custom td {
            text-align: center;
            padding: 15px;
        }

        .table-custom th {
            background-color: #16a085;
            color: white;
        }

        .table-custom tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table-custom tr:hover {
            background-color: #e1f7f3;
            cursor: pointer;
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
            transition: background-color 0.3s;
        }

        .floating-btn:hover {
            background-color: #c0392b;
            transform: scale(1.1);
        }

        /* Animation for card appearance */
        .card-custom {
            animation: fadeIn 1.5s ease-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(10px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
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
                    <a class="nav-link" href="manageDoctors.jsp">Manage Doctors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="header">
            <h2 class="page-title">Manage Patients</h2>
            <p>View and manage your patient data effortlessly.</p>
        </div>

        <!-- Manage Patients Section -->
        <div class="card card-custom">
            <div class="card-title">
                <h5><i class="fas fa-users"></i> Patient List</h5>
            </div>

            <div class="card-body">
                <!-- Example Table for Patients -->
                <table class="table table-custom">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Contact</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Replace with dynamic content -->
                        <tr>
                            <td>1</td>
                            <td>Sneha</td>
                            <td>30</td>
                            <td>Female</td>
                            <td>9876543210</td>
                            <td>Active</td>
                            <td><a href="editPatient.jsp?id=1" class="btn btn-custom">Edit</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Dhanvik</td>
                            <td>28</td>
                            <td>Male</td>
                            <td>9876543211</td>
                            <td>Active</td>
                            <td><a href="editPatient.jsp?id=2" class="btn btn-custom">Edit</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Floating Action Button -->
    <div class="floating-btn">
        <i class="fas fa-plus"></i>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
