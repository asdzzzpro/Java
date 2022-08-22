/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controllers;

import com.mycompany.service.TourService;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Qhuy
 */
@Controller
public class AdminController {
    @Autowired
    private TourService tourService;
    
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("tour",this.tourService.getTour());
        return "index";
    }
}
