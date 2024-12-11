package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PatientLoginController {

    @Autowired
    private PatientService patientService;

    @GetMapping("/patient-login")
    public String showLoginForm(Model model) {
        model.addAttribute("patient", new Patient());
        return "login"; // Ensure this maps to the login.jsp view
    }

    @PostMapping("/patient-login")
    public String handleLogin(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                              Model model) {
        // Validate username and password
        if (username == null || username.trim().isEmpty()) {
            model.addAttribute("errorMessage", "Username is required.");
            return "login"; // Return login.jsp with an error message
        }

        if (password == null || password.trim().isEmpty()) {
            model.addAttribute("errorMessage", "Password is required.");
            return "login"; // Return login.jsp with an error message
        }

        // Authenticate the patient using the service
        Patient patient = patientService.authenticatePatient(username, password);
        if (patient == null) {
            model.addAttribute("errorMessage", "Invalid username or password.");
            return "login"; // Return login.jsp with an error message
        }

        // Redirect to index.jsp after successful login
        model.addAttribute("patient", patient);
        return "redirect:/"; // Redirecting to index.jsp
    }
}
