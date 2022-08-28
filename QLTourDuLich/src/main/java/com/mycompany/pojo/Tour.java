/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Qhuy
 */
@Entity
@Table(name = "tour")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tour.findAll", query = "SELECT t FROM Tour t"),
    @NamedQuery(name = "Tour.findByIdTour", query = "SELECT t FROM Tour t WHERE t.idTour = :idTour"),
    @NamedQuery(name = "Tour.findByNameTour", query = "SELECT t FROM Tour t WHERE t.nameTour = :nameTour"),
    @NamedQuery(name = "Tour.findByDescription", query = "SELECT t FROM Tour t WHERE t.description = :description"),
    @NamedQuery(name = "Tour.findByChildprice", query = "SELECT t FROM Tour t WHERE t.childprice = :childprice"),
    @NamedQuery(name = "Tour.findByAdultprice", query = "SELECT t FROM Tour t WHERE t.adultprice = :adultprice"),
    @NamedQuery(name = "Tour.findByImage", query = "SELECT t FROM Tour t WHERE t.image = :image"),
    @NamedQuery(name = "Tour.findByTime", query = "SELECT t FROM Tour t WHERE t.time = :time")})
public class Tour implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idTour")
    private Integer idTour;
    @Size(max = 45)
    @Column(name = "nameTour")
    private String nameTour;
    @Size(max = 45)
    @Column(name = "description")
    private String description;
    @Column(name = "childprice")
    private Long childprice;
    @Column(name = "adultprice")
    private Long adultprice;
    @Size(max = 45)
    @Column(name = "image")
    private String image;
    @Column(name = "time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tourId")
    private Collection<OrderDetail> orderDetailCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tourId")
    private Collection<Tourcomment> tourcommentCollection;
    @JoinColumn(name = "type_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Type typeId;

    public Tour() {
    }

    public Tour(Integer idTour) {
        this.idTour = idTour;
    }

    public Integer getIdTour() {
        return idTour;
    }

    public void setIdTour(Integer idTour) {
        this.idTour = idTour;
    }

    public String getNameTour() {
        return nameTour;
    }

    public void setNameTour(String nameTour) {
        this.nameTour = nameTour;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getChildprice() {
        return childprice;
    }

    public void setChildprice(Long childprice) {
        this.childprice = childprice;
    }

    public Long getAdultprice() {
        return adultprice;
    }

    public void setAdultprice(Long adultprice) {
        this.adultprice = adultprice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @XmlTransient
    public Collection<OrderDetail> getOrderDetailCollection() {
        return orderDetailCollection;
    }

    public void setOrderDetailCollection(Collection<OrderDetail> orderDetailCollection) {
        this.orderDetailCollection = orderDetailCollection;
    }

    @XmlTransient
    public Collection<Tourcomment> getTourcommentCollection() {
        return tourcommentCollection;
    }

    public void setTourcommentCollection(Collection<Tourcomment> tourcommentCollection) {
        this.tourcommentCollection = tourcommentCollection;
    }

    public Type getTypeId() {
        return typeId;
    }

    public void setTypeId(Type typeId) {
        this.typeId = typeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTour != null ? idTour.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tour)) {
            return false;
        }
        Tour other = (Tour) object;
        if ((this.idTour == null && other.idTour != null) || (this.idTour != null && !this.idTour.equals(other.idTour))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.Tour[ idTour=" + idTour + " ]";
    }
    
}
