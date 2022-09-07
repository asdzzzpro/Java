/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.Tourcomment;

/**
 *
 * @author Qhuy
 */
public interface TourCommentService {
    Tourcomment addComment(String contentString, int idTour);
}
