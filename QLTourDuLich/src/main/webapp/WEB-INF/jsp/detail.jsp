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
                <input type="button" value="Dat Ngay"  class="btn btn-outline-danger btn-lg" style="width: 300px; height: 50px"/>
                <!-- onclick="addToBooking()" -->
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/js/tour.js" />"></script>
<form style="padding: 15px">
    <div class="form-group">
        <textarea class="form-control" id="contentId" placeholder="Them binh luan cua ban..."></textarea>
        <input type="submit" value="Binh luan" onclick="addComment(${tour.idTour})" class="btn btn-primary" style="margin: 7px"/>
    </div>
</form>

    
<div id="cmArea">
    <c:forEach items="${tour.tourcommentCollection}" var="comment">
        <div class="row">
            <div class="col-md-2" style="padding: 5px">
                <img class="rounded-circle img-fluid" src="<c:url value="/resources/images/default.png"/>">
            </div>
            <div class="col-md-10 date">
                <p>${comment.content}</p>
                <i>${comment.createdDate}</i>
            </div>
        </div>
    </c:forEach>
        
</div>


<script>
    setTimeout(5000);
    window.onload = function () {
        let dates = document.querySelectorAll(".date > i");
        for (let i = 0; i < dates.length; i++) {
            let d = dates[i];
            d.innerText = moment(d.innerText).fromNow();
        }
    };

</script>
