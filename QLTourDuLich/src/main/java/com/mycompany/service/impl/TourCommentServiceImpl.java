/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.Tour;
import com.mycompany.pojo.Tourcomment;
import com.mycompany.pojo.User;
import com.mycompany.repository.TourCommentRepository;
import com.mycompany.repository.TourRepository;
import com.mycompany.repository.UserRepository;
import com.mycompany.service.TourCommentService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author Qhuy
 */
@Service
public class TourCommentServiceImpl implements TourCommentService{
    @Autowired
    private  TourRepository tourRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private TourCommentRepository tourCommentRepository;
    
    @Override
    public Tourcomment addComment(String content, int idTour) {
        Tour t = this.tourRepository.getTourById(idTour);
//        User u = this.userRepository.getUserById(3);
        Tourcomment cm = new Tourcomment();
        cm.setContent(content);
//        cm.setUserId(u);
        cm.setTourId(t);
        cm.setCreatedDate(new Date());
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        cm.setUserId(this.userRepository.getUserByUsername(authentication.getName().toString()));
        return this.tourCommentRepository.addComment(cm);
    }

    @Override
    public List<Tourcomment> getComments(int id) {
        return this.tourCommentRepository.getComments(id);
    }
    
}
