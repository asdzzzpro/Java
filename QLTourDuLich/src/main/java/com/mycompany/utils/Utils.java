/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.utils;

import com.mycompany.pojo.Booking;
import java.util.Map;

/**
 *
 * @author Qhuy
 */
public class Utils {
    public static int countAdult(Map<Integer, Booking> booking){
        int adult = 0;
        if (booking !=null) {
            for(Booking b: booking.values())
            adult += b.getQuantityAdult();
        }
        
        
        return adult;
    }
}
