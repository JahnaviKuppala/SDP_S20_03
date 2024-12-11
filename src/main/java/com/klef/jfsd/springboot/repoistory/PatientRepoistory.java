package com.klef.jfsd.springboot.repoistory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Patient;
@Repository
public interface PatientRepoistory extends JpaRepository<Patient,Integer>{
	
	@Query("select p from Patient p where p.email=?1 and p.password=?2")
	public Patient checkPatientLogin(String email,String Password);

	public Patient findByUsername(String username);
	Patient findByUsernameAndPassword(String username, String password);
}
