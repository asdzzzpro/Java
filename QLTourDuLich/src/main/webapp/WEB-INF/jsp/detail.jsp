<%-- 
    Document   : product-detail
    Created on : Sep 3, 2022, 2:35:18 AM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="<c:url value="/js/tour.js" />"></script>
<div class="container" style="padding-top: 30px">
    <div class="row">
        <div class="col-md-6">

            <img class="card-img-top" class="img-fluid" src="http://media.dulich24.com.vn/diemden/sam-son-3378/9e5ee104-2c98-4d8e-aa33-0cc5673e772d-4.jpg" alt="Card image">
        </div>
        <div class="col-md-6">
            <h1>${tour.nameTour}</h1>
            <p>${tour.description}</p>
            <h4>Giá: ${tour.adultprice} VND/Khách</h4>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <div>
                    <input type="button" onclick="addToBooking(${tour.idTour},'${tour.nameTour}',${tour.adultprice},${tour.childprice})" value="Đặt ngay"  class="btn btn-outline-danger btn-lg" style="width: 300px; height: 50px"/>
                    <!-- onclick="addToBooking()" -->
                </div>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <div>
                    <p>Bạn chưa đăng nhập</p>
                    <a href="<c:url value="/login"/>" class="btn btn-outline-danger btn-lg" style="width: 300px; height: 50px">Đăng nhập ngay</a>
                    
                </div>
            </c:if>
        </div>
    </div>
</div>
<c:url value="/api/add-tcomment" var="addcm" />
<script src="<c:url value="/js/tour.js" />"></script>
<form style="padding: 15px">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <div class="form-group">
            <textarea class="form-control" id="contentId" placeholder="Thêm bình luận của bạn..."></textarea>
            <input type="submit" value="Bình luận" onclick="addComment('${addcm}',${tour.idTour})" class="btn btn-primary" style="margin: 7px"/>
        </div>
    </c:if>
    <c:if test="${pageContext.request.userPrincipal.name == null}">
        <p style="margin: 7px; text-align: center; color: red; font-size: large">Đăng nhập để bình luận phía bên dưới</p>
    </c:if>
</form>
<c:url value="/api/${tour.idTour}/tourcomment" var="endpoint" />


    <ul id="tourcomment">
        
    </ul>
    
<script src="<c:url value="/js/tour.js" />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment-with-locales.min.js"></script>



<script src="<c:url value="/js/tour.js" />"></script>
<script>
    
    window.onload = function () {
        loadComment('${endpoint}')
    };

</script>
