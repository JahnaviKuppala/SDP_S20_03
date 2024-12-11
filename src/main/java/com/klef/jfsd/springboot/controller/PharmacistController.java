package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PharmacistController {

    @GetMapping("/pharmacistlogin")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmacist_home");
        return mv;
    }
}

