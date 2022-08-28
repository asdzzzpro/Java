<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<div class="row">
    <c:forEach items="${tour}" var="t">
        <div class="col-md-3 col-xs-10" style="padding: 5px;">
            <div class="card">
                <img class="card-img-top" class="img-fluid" src="https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248722/r8sjly3st7estapvj19u.jpg" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">${t.nameTour}</h4>
                    <p class="card-text">
                        <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.adultprice}" /> VND
                    </p>
                    <p class="card-text">
                        <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.childprice}" /> VND
                    </p>
                    <a href="<c:url value="/products/${t.idTour}" />" class="btn btn-primary">Xem chi tiet</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>


