package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.model.Pharmacist;
import com.klef.jfsd.springboot.repoistory.AdminRepoistory;
import com.klef.jfsd.springboot.repoistory.DoctorRepoistory;
import com.klef.jfsd.springboot.repoistory.PatientRepoistory;
import com.klef.jfsd.springboot.repoistory.PharmacistRepoistory;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private PatientRepoistory patientRepository;

    @Autowired
    private DoctorRepoistory doctorRepository; 
 
    @Autowired
    private PharmacistRepoistory pharmacistRepository; 
    
    @Autowired
    private AdminRepoistory adminRepository; 
    
    @Override
    public List<Patient> viewAllPatients() {
        return patientRepository.findAll();
    }

    
    @Override
    public List<Doctor> viewAllDoctors() {
        return doctorRepository.findAll();
    }

	@Override
	public List<Pharmacist> viewAllPharmacist() {
		return  pharmacistRepository.findAll();
	}


	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		
		return adminRepository.checkAdminLogin(uname,pwd);
	}
}
