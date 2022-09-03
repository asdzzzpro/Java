<%-- 
    Document   : product-detail
    Created on : Sep 3, 2022, 2:35:18 AM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container" style="padding-top: 30px">
    <div class="row">
        <div class="col-md-6">

            <img class="card-img-top" class="img-fluid" src="http://media.dulich24.com.vn/diemden/sam-son-3378/9e5ee104-2c98-4d8e-aa33-0cc5673e772d-4.jpg" alt="Card image">
        </div>
        <div class="col-md-6">
            <h1>${tour.nameTour}</h1>
            <p>${tour.description}</p>
            <h4>Giá người lớn: ${tour.adultprice} VND/Khách</h4>
            <h4>Giá trẻ em: ${tour.childprice} VND/Khách</h4>
            <div>
                <input type="button" value="Dat Ngay" class="btn btn-outline-danger btn-lg" style="width: 300px; height: 70px"/>
            </div>
        </div>
    </div>
</div>

<form style="padding: 15px">
    <div class="form-group">
        <textarea class="form-control" placeholder="Them binh luan cua ban..."></textarea>
        <input type="submit" value="Binh luan" class="btn btn-primary" style="margin: 7px"/>
    </div>
</form>

<div class="row">
    <div class="col-md-2" style="padding: 5px">
        <img class="rounded-circle img-fluid" src="<c:url value="/resources/images/default.png"/>">
    </div>
    <div class="col-md-10">
        <p>Chat luong rat tot</p>
        <i>3/9/2022 3:33 AM</i>
    </div>
</div>