package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="patient_table")
public class Patient {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "patient_id")
    private int id;

    @Column(name = "patient_username", nullable = false, unique = true, length = 100)
    private String username;

    @Column(name = "patient_role", nullable = false, length = 50)
    private String role;

    @Column(name = "patient_name", nullable = false, length = 100)
    private String name;

    @Column(name = "patient_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "patient_dateofbirth", nullable = false, length = 20)
    private String dateofbirth;

    @Column(name = "patient_email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "patient_password", nullable = false, length = 100)
    private String password;

    @Column(name = "patient_location", nullable = false, length = 100)
    private String location;

    @Column(name = "patient_contact", nullable = false, unique = true, length = 20)
    private String contact;

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}

