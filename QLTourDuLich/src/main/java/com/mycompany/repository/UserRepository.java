/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.User;
import java.util.List;

/**
 *
 * @author Qhuy
 */
public interface UserRepository {
    boolean addUser(User user);
    List<User> getUsers(String username);
    User getUserById(int idUser);
    User getUserByUsername(String username);
}
