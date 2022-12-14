/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.News;
import com.mycompany.pojo.Newscomment;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Qhuy
 */
public interface NewsService {
    List<News> getNewses(Map<String, String> params, int page);
    boolean addNews(News n);
    boolean delNews(int id);
    News getNewsById(int id);
    Newscomment addNewscomment(String content, int id);
    List<Newscomment> getComments(int id);
}
