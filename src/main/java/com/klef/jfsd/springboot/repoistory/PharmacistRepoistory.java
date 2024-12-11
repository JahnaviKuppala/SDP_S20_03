package com.klef.jfsd.springboot.repoistory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Pharmacist;

@Repository
public interface PharmacistRepoistory extends JpaRepository<Pharmacist,Integer>{
	 @Query("select p from Pharmacist p where p.email = ?1 and p.password = ?2")
	    public Pharmacist checkPharmacistLogin(String email, String password);
}
