<%-- 
    Document   : order
    Created on : Sep 5, 2022, 4:09:33 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1>Giỏ hàng</h1>
<c:if test="${booking ==null}">
    <p class="text-danger text-center">Giỏ hàng của bạn còn trống</p>
    <a href="<c:url value="/"/>" class="btn btn-outline-danger btn-lg" style="width: 300px; height: 50px; margin: auto; display: block">Mua ngay</a>
    <br><br>
</c:if>
<c:if test="${booking != null}">
    <table class="table">
        <tr>
            <th>Mã chuyến đi</th>
            <th>Tên</th>
            
            <th>Đơn giá</th>
            <th>Số lượng người</th>
            <th></th>
        </tr>
        <c:forEach items="${booking}" var="b">
            <tr>
                <td>${b.idTour}</td>
                <td>${b.nameTour}</td>
                
                <td>${b.adultprice} VND</td>
                <td>
                    <div class="form-group">
                        <input type="number" onblur="updateBooking(this, ${b.idTour})" value="${b.quantityAdult}" class="form-control" />
                    </div>

                </td>
                <td>
                    <input type="button" onclick="delBooking(${b.idTour})" value="Xóa" class="btn btn-danger"/>
                </td>
            </tr>
        </c:forEach>


    </table>
    
    <div>
        <h5>Total:   <span id="total">${stats.total}</span> VNÐ</h5>
    </div>
    <br>
    <input type="button" onclick="pay()" value="Thanh toán" class="btn btn-danger"/>
</c:if>

<script src="<c:url value="/js/tour.js"/>"></script>