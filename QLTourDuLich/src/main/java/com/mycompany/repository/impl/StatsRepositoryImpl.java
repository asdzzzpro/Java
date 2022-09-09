/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Order1;
import com.mycompany.pojo.OrderDetail;
import com.mycompany.pojo.Tour;
import com.mycompany.pojo.Type;
import com.mycompany.pojo.User;
import com.mycompany.repository.StatsRepository;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
public class StatsRepositoryImpl implements StatsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> tourStats() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        Root rootT = q.from(Tour.class);
        Root rootTy = q.from(Type.class);

        q.where(b.equal(rootT.get("typeId"), rootTy.get("id")));

        q.multiselect(rootTy.get("id"), rootTy.get("name"), b.count(rootT.get("idTour")));
        q.groupBy(rootTy.get("id"));

        Query query = session.createQuery(q);

        return query.getResultList();

    }

    @Override
    public List<Object[]> revenueStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        Root rootT = q.from(Tour.class);
        Root rootOd = q.from(OrderDetail.class);


        
        q.where(b.equal(rootOd.get("tourId"), rootT.get("idTour")));
        q.multiselect(rootT.get("idTour"), rootT.get("nameTour"), b.sum(b.prod(rootOd.get("unitprice"), rootOd.get("number"))));
        

        q.groupBy(rootT.get("idTour"));
        

        Query query = session.createQuery(q);

        return query.getResultList();
    }

}
