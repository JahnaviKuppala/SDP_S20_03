package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Doctor;


public interface DoctorService {
	public String DoctorRegistration(Doctor doctor);
	public Doctor checkDoctorLogin(String email, String password);
	
	}

