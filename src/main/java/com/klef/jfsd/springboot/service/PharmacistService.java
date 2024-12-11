package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Pharmacist;

public interface PharmacistService {
	public String PharmacistRegistration(Pharmacist pharmacist);
	public Pharmacist checkPharmacistLogin(String email, String password);
	
	}

