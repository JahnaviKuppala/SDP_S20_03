package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.model.Pharmacist;

public interface AdminService {

	public List<Patient> viewAllPatients();

public	List<Doctor> viewAllDoctors();

	public List<Pharmacist> viewAllPharmacist();
public Admin checkAdminLogin(String uname, String pwd);
}
