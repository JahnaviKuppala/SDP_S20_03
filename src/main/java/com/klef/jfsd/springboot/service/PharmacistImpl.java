package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Pharmacist;
import com.klef.jfsd.springboot.repoistory.PharmacistRepoistory;  

@Service
public class PharmacistImpl implements PharmacistService {

    @Autowired
    private PharmacistRepoistory pharmacistRepository;  

    @Override
    public String PharmacistRegistration(Pharmacist pharmacist) {
        pharmacistRepository.save(pharmacist); 
        return "Pharmacist registered successfully!";  
    }

	@Override
	public Pharmacist checkPharmacistLogin(String email, String password) {
		
		return pharmacistRepository.checkPharmacistLogin(email, password);
	}
}
