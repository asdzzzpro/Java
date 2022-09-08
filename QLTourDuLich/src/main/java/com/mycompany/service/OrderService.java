/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.Booking;
import java.util.Map;

/**
 *
 * @author Qhuy
 */
public interface OrderService {
    boolean addReceipt(Map<Integer, Booking> booking);
}
