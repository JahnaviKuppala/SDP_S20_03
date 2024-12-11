package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repoistory.DoctorRepoistory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DoctorLoginController {

    @Autowired
    private DoctorRepoistory doctorRepository;

    @PostMapping("/doctor/login")
    public String doctorLogin(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("role") String role,
            Model model) {

        // Check if the selected role is "doctor"
        if (!"doctor".equalsIgnoreCase(role)) {
            model.addAttribute("errorMessage", "Invalid role selected. Please choose 'Doctor'.");
            return "login"; // Redirect to login page if role is incorrect
        }

        // Fetch the doctor from the database based on username
        Doctor doctor = doctorRepository.findByUsername(username);

        // Check if the doctor exists and the password matches
        if (doctor != null && doctor.getPassword().equals(password)) {
            // Successful login
            model.addAttribute("doctorName", doctor.getName());
            model.addAttribute("specialty", doctor.getSpecialization());
            return "doctor-dashboard"; // Redirect to doctor's dashboard
        } else {
            // Invalid credentials or doctor not found
            model.addAttribute("errorMessage", "Invalid username or password.");
            return "login"; // Redirect back to login page with error message
        }
    }
}