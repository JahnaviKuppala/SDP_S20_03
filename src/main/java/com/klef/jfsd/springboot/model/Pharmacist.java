package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "pharmacist_table")
public class Pharmacist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pharmacist_id")
    private int id;

    @Column(name = "pharmacist_name", nullable = false, length = 100)
    private String name;

    @Column(name = "pharmacist_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "pharmacist_dateofbirth", nullable = false, length = 20)
    private String dateOfBirth;

    @Column(name = "pharmacist_email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "pharmacist_password", nullable = false, length = 100)
    private String password;

    @Column(name = "pharmacist_contact", nullable = false, unique = true, length = 20)
    private String contact;

    @Column(name = "pharmacist_location", nullable = false, length = 100)
    private String location;

    @Column(name = "pharmacist_license", nullable = false, length = 100)
    private String license;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }
}
