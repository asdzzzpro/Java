/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Booking;
import com.mycompany.utils.Utils;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Qhuy
 */
@Controller
public class BookingController {
    @GetMapping("/booking")
    public String booking(Model model, HttpSession session){
        Map<Integer, Booking> booking = (Map<Integer, Booking>) session.getAttribute("booking");
        if (booking != null) {
            model.addAttribute("booking", booking.values());
        }else{
            model.addAttribute("booking", null);
        }
        
        model.addAttribute("stats", Utils.stats(booking));
        return "booking";
    }
}
