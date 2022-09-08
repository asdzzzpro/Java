<%-- 
    Document   : order
    Created on : Sep 5, 2022, 4:09:33 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1>Dat Tour Du Lich</h1>
<c:if test="${booking ==null}">
    <p class="text-danger">Khong co san pham nao trong gio</p>
</c:if>
<c:if test="${booking != null}">
    <table class="table">
        <tr>
            <th>Ma Tour</th>
            <th>Ten</th>
            <th>Gia tre em</th>
            <th>Gia nguoi lon</th>
            <th>So luong nguoi</th>
            <th></th>
        </tr>
        <c:forEach items="${booking}" var="b">
            <tr>
                <td>${b.idTour}</td>
                <td>${b.nameTour}</td>
                <td>${b.childprice} VND</td>
                <td>${b.adultprice} VND</td>
                <td>
                    <div class="form-group">
                        <input type="number" onblur="updateBooking(this, ${b.idTour})" value="${b.quantityAdult}" class="form-control" />
                    </div>

                </td>
                <td>
                    <input type="button" onclick="delBooking(${b.idTour})" value="Xoa" class="btn btn-danger"/>
                </td>
            </tr>
        </c:forEach>


    </table>
    
    <div>
        <h5>Total:   <span id="total">${stats.total}</span> VND</h5>
    </div>
    <br>
    <input type="button" onclick="pay()" value="Thanh toan" class="btn btn-danger"/>
</c:if>

<script src="<c:url value="/js/tour.js"/>"></script>