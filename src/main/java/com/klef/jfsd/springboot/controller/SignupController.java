package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SignupController {

    @PostMapping("/signup")
    public String registerUser(
            @RequestParam("username") String username,
            @RequestParam("pgender") String gender,
            @RequestParam("pdob") String dob,
            @RequestParam("ppwd") String password,
            @RequestParam("plocation") String location,
            @RequestParam("pnumber") String contactNumber,
            Model model,
            RedirectAttributes redirectAttributes) {

        // Basic validation
        if (username == null || username.trim().isEmpty()) {
            model.addAttribute("errorMessage", "Username is required.");
            return "signup";
        }

        if (contactNumber == null || contactNumber.trim().isEmpty()) {
            model.addAttribute("errorMessage", "Contact number is required.");
            return "signup";
        }

        // Simulate saving user data to the database (replace with actual database logic)
        System.out.println("User Registered: " + username);

        // Add a success message to redirect
        redirectAttributes.addFlashAttribute("successMessage", "Successfully registered!");

        // Redirect to the login page or any other success page
        return "redirect:/login";
    }
}
