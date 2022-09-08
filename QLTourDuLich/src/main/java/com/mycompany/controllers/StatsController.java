/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.StatsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Qhuy
 */
@Controller
@RequestMapping("/admin")
public class StatsController {
    @Autowired
    private StatsService statsService;
    @GetMapping("/tour-stats")
    public String tourStats(Model model){
        model.addAttribute("tourstats",this.statsService.tourStats());
        return "tour-stats";
    }
}
