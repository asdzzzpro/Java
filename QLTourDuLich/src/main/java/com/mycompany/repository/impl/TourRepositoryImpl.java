/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Tour;
import com.mycompany.repository.TourRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Qhuy
 */
@Repository
//@PropertySource("classpath:databases.properties")
@Transactional
public class TourRepositoryImpl implements TourRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Tour> getTours(Map<String, String> params, int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder cr = session.getCriteriaBuilder();
        CriteriaQuery<Tour> cq = cr.createQuery(Tour.class);
        Root root = cq.from(Tour.class);
        cq.select(root);
        
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                Predicate p = cr.like(root.get("nameTour").as(String.class), String.format("%%%s%%", kw));
                predicates.add(p);
            }
            
            String fp = params.get("childPrice");
            if (fp != null) {
                Predicate p = cr.greaterThanOrEqualTo(root.get("childprice").as(Long.class), Long.parseLong(fp));
                predicates.add(p);
            }

            String tp = params.get("adultPrice");
            if (tp != null) {
                Predicate p = cr.greaterThanOrEqualTo(root.get("adultprice").as(Long.class), Long.parseLong(tp));
                predicates.add(p);
            }

            
           

            cq.where(predicates.toArray(new Predicate[]{}));
        }
        
        Query query = session.createQuery(cq);
        
        int max = 20;
        query.setMaxResults(max);
        query.setFirstResult((i - 1)* max);
        
        return query.getResultList();
    }

    @Override
    public boolean addTour(Tour t) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            session.save(t);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean delTour(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            Tour t = session.get(Tour.class, id);
            session.delete(t);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public Tour getTourById(int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Tour.class, i);
    }

    @Override
    public int countTour() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT COUNT(*) FROM Tour");

        return Integer.parseInt(q.getSingleResult().toString());
    }
    

}
