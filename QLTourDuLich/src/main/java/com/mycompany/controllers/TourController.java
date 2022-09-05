/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Tour;
import com.mycompany.service.TourService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Qhuy
 */
@Controller
public class TourController {

    @Autowired
    private TourService tourService;

    @GetMapping("/tours/{idTour}")
    public String detail(Model model, @PathVariable(value = "idTour") int idTour) {
        model.addAttribute("tour", this.tourService.getTourById(idTour));

        return "detail";

    }

    @GetMapping("/admin/manage")
    public String manage(Model model) {

        model.addAttribute("tours", new Tour());
        return "manage";
    }

    @PostMapping("/admin/manage")
    public String manage(Model model, @ModelAttribute(value = "tours") @Valid Tour tour, BindingResult result) {
        if (!result.hasErrors()) {
            if (this.tourService.addTour(tour) == true) {
                return "redirect:/";
            }else{
                model.addAttribute("msg", "Loi He thong!");
            }
            
        }
        return "manage";
    }
}
