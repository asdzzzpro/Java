/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controllers;

//import com.mycompany.service.TourService;
import com.mycompany.service.TourService;
import com.mycompany.service.TypeService;
import java.util.Map;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Qhuy
 */
@Controller
@ControllerAdvice
public class AdminController {
    @Autowired
    private TourService tourService;
    @Autowired
    private TypeService typeService;
    
    @ModelAttribute
    public void commonAttr(Model model){
        model.addAttribute("type", this.typeService.getTypes());
    }
    @RequestMapping("/")
    public String index(Model model,  @RequestParam(required = false) Map<String, String> params){
//        int page = Integer.parseInt(params.getOrDefault("page", "1"));
//        model.addAttribute("type", this.typeService.getTypes());
        
        model.addAttribute("tour", this.tourService.getTours(params, 0));
        return "index";
    }
}
