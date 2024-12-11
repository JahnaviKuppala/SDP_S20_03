package com.klef.jfsd.springboot.repoistory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Doctor;

@Repository
public interface DoctorRepoistory extends JpaRepository<Doctor, Integer> {

    // Derived query method (Spring Data JPA will generate the query automatically)
    Doctor findByUsernameAndPassword(String username, String password);

    // Custom query method using @Query annotation
    @Query("SELECT d FROM Doctor d WHERE d.username = :username AND d.password = :password")
    Doctor checkDoctorLogin(String username, String password);

    // Find doctor by username
    Doctor findByUsername(String username);
}
