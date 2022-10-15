/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.News;
import com.mycompany.pojo.Newscomment;
import com.mycompany.pojo.User;
import com.mycompany.repository.NewsRepository;
import com.mycompany.repository.UserRepository;
import com.mycompany.service.NewsService;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author Qhuy
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsRepository newsRepository;
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public List<News> getNewses(Map<String, String> params, int page) {
        return this.newsRepository.getNewses(params, page);
    }   

    @Override
    public News getNewsById(int i) {
        return this.newsRepository.getNewsById(i);
    }

    @Override
    public boolean addNews(News news) {
        return this.newsRepository.addNews(news);   
    }

    @Override
    public boolean delNews(int i) {
        return this.newsRepository.delNews(i);
    }

    @Override
    public Newscomment addNewscomment(String string, int i) {
        News n = this.newsRepository.getNewsById(i);
//        User u = this.userRepository.getUserById(3);
        Newscomment cm = new Newscomment();
        cm.setContent(string);
//        cm.setUserId(u);
        cm.setNewsId(n);
        cm.setCreatedDate(new Date());
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        cm.setUserId(this.userRepository.getUserByUsername(authentication.getName().toString()));
        return this.newsRepository.addNewscomment(cm);
    }

    @Override
    public List<Newscomment> getComments(int id) {
        return this.newsRepository.getComments(id);
    }


    
    
}
