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
    private Long childprice;
    private Long adultprice;
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

    /**
     * @return the childprice
     */
    public Long getChildprice() {
        return childprice;
    }

    /**
     * @param childprice the childprice to set
     */
    public void setChildprice(Long childprice) {
        this.childprice = childprice;
    }

    /**
     * @return the adultprice
     */
    public Long getAdultprice() {
        return adultprice;
    }

    /**
     * @param adultprice the adultprice to set
     */
    public void setAdultprice(Long adultprice) {
        this.adultprice = adultprice;
    }


    
}
