package com.klef.jfsd.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan  // Enable scanning of servlet annotations
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
