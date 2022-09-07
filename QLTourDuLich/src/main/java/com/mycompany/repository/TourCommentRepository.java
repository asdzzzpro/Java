/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.Tourcomment;
import java.util.List;

/**
 *
 * @author Qhuy
 */
public interface TourCommentRepository {
    Tourcomment addComment(Tourcomment t);
    List<Tourcomment> getComments();
}
