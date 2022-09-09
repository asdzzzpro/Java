/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.Type;
import com.mycompany.repository.TypeRepository;
import com.mycompany.service.TypeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Qhuy
 */
@Service
public class TypeServiceImpl implements TypeService{

    @Autowired
    private TypeRepository typeRepository;
    
    @Override
    public List<Type> getTypes() {
        return this.typeRepository.getTypes();
    }

    @Override
    public Type getTypeById(int typeId) {
        return this.typeRepository.getTypeById(typeId);
    }
    
    
}
