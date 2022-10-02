/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.News;
import com.mycompany.pojo.Newscomment;
import com.mycompany.service.NewsService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Qhuy
 */
@RestController
public class ApiNewsController {
    @Autowired
    private NewsService newsService;
    
    @GetMapping("/api/newscomment")
    public ResponseEntity<List<Newscomment>> getNewsComment(){
        return new ResponseEntity<>(this.newsService.getComments(), HttpStatus.OK);
    }
    
    @PostMapping(path = "/api/add-ncomment",produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Newscomment> addNewsComment(@RequestBody Map<String, String> params) {
        try {
            String content = params.get("content");
            int idNews = Integer.parseInt(params.get("idNews"));
            
            Newscomment cm = this.newsService.addNewscomment(content, idNews);
            return new ResponseEntity<>(HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }
    
    @GetMapping("/api/listnews")
    public ResponseEntity<List<News>> getNews(){
        return new ResponseEntity<>(this.newsService.getNewses(null, 0), HttpStatus.OK);
    }
    @DeleteMapping("/api/listnews/{idNews}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delNews(@PathVariable(value = "idNews") int id){
        this.newsService.delNews(id);
    }
}
