package com.klef.jfsd.springboot.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// Import your database connection utility
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.util.DatabaseConnection.DatabaseConnection;

public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Get username and password from the login form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establish a connection to the database using DatabaseConnection utility
            conn = DatabaseConnection.initializeDatabase();

            if (conn != null) {
                boolean validUser = false;
                String role = null;

                // Query to validate admin credentials
                String adminQuery = "SELECT admin_username, role FROM admin_table WHERE admin_username = ? AND admin_password = ?";
                stmt = conn.prepareStatement(adminQuery);
                stmt.setString(1, username);
                stmt.setString(2, password);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    validUser = true;
                    role = "admin";
                }

                if (!validUser) {
                    // Query to validate doctor credentials
                    String doctorQuery = "SELECT username, role  FROM doctor_table WHERE username = ? AND doctor_password = ?";
                    stmt = conn.prepareStatement(doctorQuery);
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    rs = stmt.executeQuery();
                    if (rs.next()) {
                        validUser = true;
                        role = rs.getString("role").trim().toLowerCase();  // Normalize the role to lowercase
                    }
                }

                if (!validUser) {
                    // Query to validate patient credentials
                    String patientQuery = "SELECT patient_name, role FROM patient_table WHERE patient_name = ? AND patient_password = ?";
                    stmt = conn.prepareStatement(patientQuery);
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    rs = stmt.executeQuery();
                    if (rs.next()) {
                        validUser = true;
                        role = rs.getString("role").trim().toLowerCase();  // Normalize the role to lowercase
                    }
                }

                if (validUser) {
                    // User exists, create a session
                    System.out.println("User role: " + role);  // Check the normalized role

                    Patient patient = new Patient();
                    patient.setUsername(username);
                    patient.setRole(role);

                    HttpSession session = request.getSession();
                    session.setAttribute("patient", patient);

                    // Redirect based on user role
                    switch (role) {
                        case "admin":
                            response.sendRedirect("adminDashboard.jsp");
                            break;
                        case "doctor":
                            response.sendRedirect("doctorDashboard.jsp");
                            break;
                        case "patient":
                            response.sendRedirect("patientDashboard.jsp");
                            break;
                        case "pharmacist":
                            response.sendRedirect("pharmacistDashboard.jsp");
                            break;
                        default:
                            response.sendRedirect("login.jsp?error=Invalid+role");
                    }
                } else {
                    // Invalid credentials
                    response.sendRedirect("login.jsp?error=Invalid+username+or+password");
                }
            } else {
                response.sendRedirect("login.jsp?error=Database+connection+failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=An+error+occurred");
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Redirect GET requests to the login page
        response.sendRedirect("login.jsp");
    }
}
