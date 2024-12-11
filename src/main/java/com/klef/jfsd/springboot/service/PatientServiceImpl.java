package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.repoistory.PatientRepoistory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    private PatientRepoistory patientRepository;

    @Override
    public void savePatient(Patient patient) {
        patientRepository.save(patient);
    }

    @Override
    public boolean isPatientExist(String username) {
        return patientRepository.findByUsername(username) != null;
    }

    @Override
    public Patient authenticatePatient(String username, String password) {
        return patientRepository.findByUsernameAndPassword(username, password);
    }
}
