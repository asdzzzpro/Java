/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.utils;

import com.mycompany.pojo.Booking;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Qhuy
 */
public class Utils {
    public static int count(Map<Integer, Booking> booking){
        int q = 0;
        if (booking !=null) {
            for(Booking b: booking.values())
            q += b.getQuantityAdult();
        }
        
        
        return q;
    }
    
    public static Map<String,String> stats(Map<Integer, Booking> booking){
        Long total = 0l;
        int q = 0;
        if (booking !=null) {
            for(Booking b: booking.values()){
                q += b.getQuantityAdult();
                total += b.getQuantityAdult()*b.getAdultprice();
            }
                
        }
        Map<String, String> stats = new HashMap<>();
        stats.put("count", String.valueOf(q));
        stats.put("total", String.valueOf(total));
        return stats;
    }
}
