/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.News;

import com.mycompany.repository.NewsRepository;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Qhuy
 */
@Repository
@Transactional
public class NewsRepositoryImpl implements NewsRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<News> getNewses(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder cr = session.getCriteriaBuilder();
        CriteriaQuery<News> cq = cr.createQuery(News.class);
        Root root = cq.from(News.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        
        return query.getResultList();
    }

    @Override
    public News getNewsById(int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        News s = session.get(News.class, i);
        return s;
    }

    @Override
    public boolean addNews(News news) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(news);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delNews(int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
