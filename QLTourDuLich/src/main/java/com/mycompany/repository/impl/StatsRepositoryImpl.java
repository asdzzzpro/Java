/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

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
    //int quarter, int year
    @Override
    public List<Object[]> revenueStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        Root rootT = q.from(Tour.class);
        Root rootOd = q.from(OrderDetail.class);
//        Root rootO = q.from(Order1.class);

//        List<Predicate> predicates = new ArrayList<>();
//        predicates.add(b.equal(rootOd.get("tourId"), rootT.get("idTour")));
//        predicates.add(b.equal(rootOd.get("orderId"), rootO.get("idOrder")));
        
        
        
//        if (kw !=null) {
//            predicates.add(b.like(rootT.get("nameTour"), kw));
//            
//        }
//        
//        if (fromDate != null) {
//            predicates.add(b.greaterThanOrEqualTo(rootO.get("createddate"), fromDate));
//        }
//        
//        if (toDate != null) {
//            predicates.add(b.lessThanOrEqualTo(rootO.get("createddate"), toDate));
//        }
//        
//        q.multiselect(rootT.get("idTour"), rootT.get("nameTour"), b.sum(b.prod(rootOd.get("unitprice"), rootOd.get("number"))));

//
//          q.where(b.equal(rootOd.get("tourId"), rootT.get("idTour")),
//                b.equal(rootOd.get("orderId"), rootO.get("id")),
//                b.equal(b.function("QUARTER", Integer.class, rootO.get("createddate")), quarter),
//                b.equal(b.function("YEAR", Integer.class, rootO.get("createddate")), year));

        q.multiselect(rootT.get("idTour"), rootT.get("nameTour"), b.sum(b.prod(rootOd.get("unitprice"), rootOd.get("number"))));
        q.where(b.equal(rootOd.get("tourId"), rootT.get("idTour")));
        q.groupBy(rootT.get("idTour"));
        

        Query query = session.createQuery(q);

        return query.getResultList();
    }

}
