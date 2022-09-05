/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Booking;
import com.mycompany.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Qhuy
 */
@RestController
public class ApiBookingController {
    @PostMapping("/api/booking")
    public int addToBooking(@RequestBody Booking p, HttpSession session){
        Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("booking");
        if (booking == null)
            booking = new HashMap<>();
        int tourId= p.getIdTour();
        
        if(booking.containsKey(tourId)== true){
            Booking b = booking.get(tourId);
            b.setQuantityAdult(b.getQuantityAdult()+1);
        } else{
            booking.put(tourId, p);
        }
        session.setAttribute("booking", booking);
        return Utils.countAdult(booking);
    }
}
