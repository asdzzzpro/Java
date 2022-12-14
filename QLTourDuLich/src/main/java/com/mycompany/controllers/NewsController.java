/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.News;
import com.mycompany.service.NewsService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Qhuy
 */
@Controller
public class NewsController {
    @Autowired
    private NewsService newsService;
    
    @GetMapping("/news/{idNews}")
    public String news(Model model, @PathVariable(value = "idNews") int idNews){
        model.addAttribute("news", this.newsService.getNewsById(idNews));
        return "news";
    }
    @GetMapping("/admin/listnews")
    public String listnews(Model model) {

        model.addAttribute("newses", new News());
        return "listnews";
    }
    
    @PostMapping("/admin/listnews")
    public String listnews(Model model, @ModelAttribute(value = "newses") @Valid News news, BindingResult result){
        if (!result.hasErrors()) {
            if (this.newsService.addNews(news) == true) {
                return "redirect:/";
            }else{
                model.addAttribute("msg", "Loi He thong!");
            } 
        }
        return "listnews";
    }
}
