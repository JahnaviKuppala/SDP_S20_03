package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repoistory.DoctorRepoistory;  

@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorRepoistory doctorRepository; 
    @Override
    public String DoctorRegistration(Doctor doctor) {
            doctorRepository.save(doctor);
            return "Doctor registered successfully!";
        }
	@Override
	public Doctor checkDoctorLogin(String email, String password) {
		
		return doctorRepository.checkDoctorLogin(email, password);
	} 
}
