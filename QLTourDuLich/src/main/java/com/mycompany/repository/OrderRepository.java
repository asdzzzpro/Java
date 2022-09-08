/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.Booking;
import java.util.Map;

/**
 *
 * @author Qhuy
 */
public interface OrderRepository {
    boolean addReceipt(Map<Integer, Booking> booking);
}
