    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Tourcomment;
import com.mycompany.repository.TourCommentRepository;
import java.util.List;
import org.hibernate.HibernateException;
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
public class TourCommentRepositoryImpl implements TourCommentRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public Tourcomment addComment(Tourcomment t) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(t);
            return t;
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Tourcomment> getComments() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("From Tourcomment");
        return query.getResultList();
        
    }
    
}
