<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacy - MediBuddy</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
    <style>
        /* Additional inline styles for this page */
        .pharmacy-container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .pharmacy-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .pharmacy-container table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .pharmacy-container th, .pharmacy-container td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .pharmacy-container th {
            background-color: #f39c12;
            color: white;
        }
        .pharmacy-container td {
            font-size: 14px;
        }
        .add-prescription-form {
            width: 100%;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .add-prescription-form label {
            font-size: 14px;
            margin-bottom: 6px;
        }
        .add-prescription-form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .add-prescription-form button {
            padding: 10px;
            background-color: #f39c12;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .add-prescription-form button:hover {
            background-color: #e67e22;
        }
    </style>
</head>
<body>
    <%-- Include Navigation bar if any --%>
    <%@ include file="mainnavbar.jsp" %>

    <div class="pharmacy-container">
        <h2>Pharmacy Dashboard</h2>

        <!-- Add Prescription Form -->
        <div class="add-prescription-form">
            <h3>Add New Prescription</h3>
            <form action="addPrescriptionServlet" method="POST">
                <label for="medicationName">Medication Name:</label>
                <input type="text" id="medicationName" name="medicationName" required placeholder="Enter medication name">

                <label for="dosage">Dosage:</label>
                <input type="text" id="dosage" name="dosage" required placeholder="Enter dosage">

                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" required placeholder="Enter quantity">

                <button type="submit">Add Prescription</button>
            </form>
        </div>

        <!-- Display Prescriptions -->
        <h3>Current Prescriptions</h3>
        <table>
            <thead>
                <tr>
                    <th>Medication Name</th>
                    <th>Dosage</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%-- Sample data for prescriptions (this should come from the database) --%>
                <tr>
                    <td>Paracetamol</td>
                    <td>500mg</td>
                    <td>30</td>
                    <td>
                        <a href="editPrescription.jsp?id=1">Edit</a> | <a href="deletePrescriptionServlet?id=1">Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>Ibuprofen</td>
                    <td>400mg</td>
                    <td>20</td>
                    <td>
                        <a href="editPrescription.jsp?id=2">Edit</a> | <a href="deletePrescriptionServlet?id=2">Delete</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
