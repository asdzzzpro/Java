/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Booking;

import com.mycompany.pojo.OrderDetail;
import com.mycompany.pojo.Receipt;
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
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
        
            Receipt receipt = new Receipt();
            receipt.setCreateddate(new Date());
            Map<String, String> stats = Utils.stats(booking);
            receipt.setTotal(Long.parseLong(stats.get("total")));
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            receipt.setUserId(this.userRepository.getUserByUsername(authentication.getName().toString()));
            session.save(receipt);

            for (Booking b: booking.values()){
                OrderDetail od = new OrderDetail();
                od.setOrderId(receipt);
                od.setTourId(this.tourRepository.getTourById(b.getIdTour()));
                od.setUnitprice(b.getAdultprice());
                od.setNumber(b.getQuantityAdult());

                session.save(od);
            }
            return true;
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        
        return false;
        
    }

}
