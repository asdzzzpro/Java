/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.Type;
import java.util.List;

/**
 *
 * @author Qhuy
 */
public interface TypeRepository {
    List<Type> getTypes();
    Type getTypeById(int typeId);
}
