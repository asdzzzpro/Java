/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controllers;

//import com.mycompany.service.TourService;
import com.mycompany.pojo.Tour;
import com.mycompany.pojo.Type;
import com.mycompany.service.NewsService;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
    @Autowired
    private NewsService newsService;
    
    
    @ModelAttribute
    public void commonAttr(Model model){
        model.addAttribute("type", this.typeService.getTypes());
    }
    @RequestMapping("/")
    public String index(Model model,  @RequestParam(required = false) Map<String, String> params){
//        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
//        model.addAttribute("type", this.typeService.getTypes());
        String typeId = params.get("typeId");
        
        if(typeId == null){
            model.addAttribute("tour", this.tourService.getTours(params, page));
            
        }else{
            Type t = this.typeService.getTypeById(Integer.parseInt(typeId));
            model.addAttribute("tour", t.getTourCollection());
        }
        model.addAttribute("count", this.tourService.countTour());
        model.addAttribute("news", this.newsService.getNewses(params, 0));
        
        return "index";
    }
    
    
}
