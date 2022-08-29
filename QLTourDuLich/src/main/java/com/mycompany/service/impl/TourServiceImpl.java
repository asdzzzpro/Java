/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.Tour;
import com.mycompany.repository.TourRepository;
import com.mycompany.service.TourService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Qhuy
 */
@Service
public class TourServiceImpl implements TourService{
    @Autowired
    private TourRepository tourRepository;
    
    @Override
    public List<Tour> getTours(Map<String, String> params, int page) {
        return this.tourRepository.getTours(params, page);
    }

    @Override
    public boolean addTour(Tour t) {
        t.setImage("https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg");
        return this.tourRepository.addTour(t);
    }

    @Override
    public boolean delTour(int i) {
        return this.tourRepository.delTour(i);
    }

    @Override
    public Tour getTourById(int i) {
        return this.tourRepository.getTourById(i);
    }
    
}
