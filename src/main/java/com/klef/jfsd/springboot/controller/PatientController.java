package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.repoistory.PatientRepoistory;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class PatientController {

    @Autowired
    private PatientRepoistory patientRepository;

    // Display the login page
    @GetMapping("/patient/login")
    public ModelAndView patientlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("patientlogin"); // Corresponds to the login page
        return mv;
    }

    // Handle the form submission for login
    @PostMapping("/submit")
    public String handleFormSubmit(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if the patient exists and if the password matches
        Patient patient = patientRepository.findByUsername(username);

        if (patient != null && patient.getPassword().equals(password)) {
            // Redirect to the index page (index.jsp) after successful login
            return "redirect:/index"; // Assuming you have mapped index.jsp in your view resolver
        } else {
            // Redirect to the login page with an error message if login fails
            return "redirect:/patient/login?error=true"; // Redirect with error query parameter
        }
    }

    // Other methods for patient registration and home page
}
