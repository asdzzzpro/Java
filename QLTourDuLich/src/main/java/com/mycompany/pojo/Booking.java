/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

/**
 *
 * @author Qhuy
 */
public class Booking {
    private int idTour;
    private String nameTour;
    private Long price;
    private int quantityChild;
    private int quantityAdult;

    /**
     * @return the idTour
     */
    public int getIdTour() {
        return idTour;
    }

    /**
     * @param idTour the idTour to set
     */
    public void setIdTour(int idTour) {
        this.idTour = idTour;
    }

    /**
     * @return the nameTour
     */
    public String getNameTour() {
        return nameTour;
    }

    /**
     * @param nameTour the nameTour to set
     */
    public void setNameTour(String nameTour) {
        this.nameTour = nameTour;
    }

    /**
     * @return the price
     */
    public Long getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(Long price) {
        this.price = price;
    }

    /**
     * @return the quantityChild
     */
    public int getQuantityChild() {
        return quantityChild;
    }

    /**
     * @param quantityChild the quantityChild to set
     */
    public void setQuantityChild(int quantityChild) {
        this.quantityChild = quantityChild;
    }

    /**
     * @return the quantityAdult
     */
    public int getQuantityAdult() {
        return quantityAdult;
    }

    /**
     * @param quantityAdult the quantityAdult to set
     */
    public void setQuantityAdult(int quantityAdult) {
        this.quantityAdult = quantityAdult;
    }


    
}
