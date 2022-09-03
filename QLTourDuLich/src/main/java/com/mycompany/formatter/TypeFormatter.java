/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formatter;

import com.mycompany.pojo.Type;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Qhuy
 */
public class TypeFormatter implements Formatter<Type>{

    @Override
    public String print(Type t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Type parse(String string, Locale locale) throws ParseException {
        Type t= new Type();
        t.setId(Integer.parseInt(string));
        return t;
    }
    
}
