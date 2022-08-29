/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.News;
import com.mycompany.repository.NewsRepository;
import com.mycompany.service.NewsService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Qhuy
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsRepository newsRepository;
    
    @Override
    public List<News> getNewses(Map<String, String> params, int page) {
        return this.newsRepository.getNewses(params, page);
    }
    
}
