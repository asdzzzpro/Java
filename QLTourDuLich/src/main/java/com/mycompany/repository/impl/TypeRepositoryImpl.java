/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Type;
import com.mycompany.repository.TypeRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
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
public class TypeRepositoryImpl implements TypeRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    

    @Override
    public List<Type> getTypes() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Type");
        return q.getResultList();
    }
}
