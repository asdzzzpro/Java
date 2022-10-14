/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Tourcomment;
import com.mycompany.repository.TourCommentRepository;
import com.mycompany.service.TourService;
import com.mycompany.service.UserService;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
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
public class TourCommentRepositoryImpl implements TourCommentRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private TourService tourService;
    @Autowired
    private UserService userService;

    @Override
    public Tourcomment addComment(Tourcomment t) {

        Session session = this.sessionFactory.getObject().getCurrentSession();
//        Tourcomment t = new Tourcomment();
//        t.setContent(content);
//        t.setTourId(this.tourService.getTourById(id));
//        t.setUserId(this.userService.getUserById(3));
//        session.save(t);
//        return t;
        try {
            session.save(t);
            return t;
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Tourcomment> getComments(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Tourcomment> q = b.createQuery(Tourcomment.class);
        Root<Tourcomment> root = q.from(Tourcomment.class);
        q.select(root);
        q.where(b.equal(root.get("tourId").get("idTour"), id));
        q.orderBy(b.desc(root.get("createdDate")));
        javax.persistence.Query query = session.createQuery(q);

        return query.getResultList();
    }

}
