/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Booking;
import com.mycompany.service.OrderService;
import com.mycompany.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Qhuy
 */
@RestController
public class ApiBookingController {
    @Autowired
    private OrderService orderService;
    
    @PostMapping("/api/booking")
    public int addToBooking(@RequestBody Booking p, HttpSession session){
        Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("booking");
        if (booking == null)
            booking = new HashMap<>();
        int tourId = p.getIdTour();
        
        if(booking.containsKey(tourId)== true){
            Booking b = booking.get(tourId);
            b.setQuantityAdult(b.getQuantityAdult()+1);
//            b.setQuantityChild(b.getQuantityChild()+1);
        } else{
            booking.put(tourId, p);
        }
        session.setAttribute("booking", booking);
        return Utils.count(booking);
    }
    
    @PutMapping("/api/booking")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Map<String,String>> updateBooking(@RequestBody Booking p, HttpSession session){
        Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("booking");
        if (booking == null)
            booking = new HashMap<>();
        int tourId = p.getIdTour();
        
        if(booking.containsKey(tourId)== true){
            Booking b = booking.get(tourId);
            b.setQuantityAdult(b.getQuantityAdult());
//            b.setQuantityChild(b.getQuantityChild());
        }
        
        session.setAttribute("booking", booking);
        return new ResponseEntity<>(Utils.stats(booking), HttpStatus.OK);
    }
    
    @DeleteMapping("/api/booking/{idTour}")
    public ResponseEntity<Map<String,String>> delBooking(@PathVariable(value = "idTour") int idTour, HttpSession session){
        Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("booking");
        if(booking != null && booking.containsKey(idTour)){
            booking.remove(idTour);
        }
        session.setAttribute("booking", booking);
        return new ResponseEntity<>(Utils.stats(booking), HttpStatus.OK) ;
    }
    
    @PostMapping("/api/pay")
    public HttpStatus pay(HttpSession session){
        if (this.orderService.addReceipt((Map<Integer, Booking>) session.getAttribute("booking")) == true){
            session.removeAttribute("booking");
            return HttpStatus.OK;
        }
        return HttpStatus.BAD_REQUEST;
        
    }
}
