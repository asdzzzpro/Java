/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Tourcomment;
import com.mycompany.service.TourCommentService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Qhuy
 */
@RestController
public class ApiTourCommentController {

    @Autowired
    private TourCommentService tourCommentService;

    @PostMapping(path = "/api/add-tcomment",produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Tourcomment> addComment(@RequestBody Map<String, String> params) {
        try {
            String content = params.get("content");
            int idTour = Integer.parseInt(params.get("idTour"));
            
            Tourcomment cm = this.tourCommentService.addComment(content, idTour);
            return new ResponseEntity<>(HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }
}
