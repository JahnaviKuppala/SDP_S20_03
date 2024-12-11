package com.klef.jfsd.springboot.controller;

	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestParam;

	@Controller
	public class LoginController {

	    // Mock credentials for demonstration purposes
	    private static final String MOCK_USERNAME = "admin";
	    private static final String MOCK_PASSWORD = "password123";

	    @GetMapping("/login")
	    public String showLoginPage() {
	        return "login"; // Render the login.jsp page
	    }

	    @PostMapping("/login")
	    public String processLogin(
	            @RequestParam("username") String username,
	            @RequestParam("password") String password,
	            Model model) {

	        // Validate credentials
	        if (MOCK_USERNAME.equals(username) && MOCK_PASSWORD.equals(password)) {
	            model.addAttribute("welcomeMessage", "Welcome, " + username + "!");
	            return "welcome"; // Redirect to a welcome page (welcome.jsp)
	        } else {
	            model.addAttribute("errorMessage", "Invalid username or password.");
	            return "login"; // Reload login.jsp with an error message
	        }
	    }
	}


