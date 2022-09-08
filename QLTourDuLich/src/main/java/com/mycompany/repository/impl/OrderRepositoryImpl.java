/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Booking;
import com.mycompany.pojo.Order1;
import com.mycompany.pojo.OrderDetail;
import com.mycompany.repository.OrderRepository;
import com.mycompany.repository.TourRepository;
import com.mycompany.repository.UserRepository;
import com.mycompany.utils.Utils;
import java.util.Date;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Qhuy
 */
@Repository

public class OrderRepositoryImpl implements OrderRepository {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private TourRepository tourRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public boolean addReceipt(Map<Integer, Booking> booking) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            Order1 order = new Order1();
            order.setUserId(this.userRepository.getUserById(3));
            order.setCreateddate(new Date());
            Map<String, String> stats = Utils.stats(booking);
            order.setTotal(Long.parseLong(stats.get("total")));
            session.save(order);

            for (Booking b : booking.values()) {
                OrderDetail o = new OrderDetail();
                o.setOrderId(order);
                o.setTourId(this.tourRepository.getTourById(b.getIdTour()));
                o.setUnitprice(b.getAdultprice());
                o.setNumber(b.getQuantityAdult());
                return true;
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }

        return false;

    }

}
