package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Patient;

public interface PatientService {
    void savePatient(Patient patient);
    boolean isPatientExist(String username);
	Patient authenticatePatient(String username, String password);
}
