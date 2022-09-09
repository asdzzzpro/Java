/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.Tour;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Qhuy
 */
public interface TourService {
    List<Tour> getTours(Map<String, String> params, int page);
    boolean addTour(Tour t);
    boolean delTour(int id);
    Tour getTourById(int id);
    int countTour();
}
