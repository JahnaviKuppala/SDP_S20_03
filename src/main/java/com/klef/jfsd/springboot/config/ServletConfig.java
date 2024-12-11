package com.klef.jfsd.springboot.config;

import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.klef.jfsd.springboot.servlet.loginServlet;

@Configuration
public class ServletConfig {
    @Bean
     ServletRegistrationBean<loginServlet> myLoginServlet() {
        ServletRegistrationBean<loginServlet> bean = new ServletRegistrationBean<>(new loginServlet(), "/loginServlet");
        return bean;
    }
}
