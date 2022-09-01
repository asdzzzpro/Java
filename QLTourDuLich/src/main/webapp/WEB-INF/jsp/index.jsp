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
                    <a href="<c:url value="/tours/${t.idTour}" />" class="btn btn-primary">Xem chi tiet</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<hr>
<h1>Tin Tức Du Lịch</h1>
<hr>
<div class="row">
    <c:forEach items="${news}" var="n">
        <div class="col-md-5 col-xs-10" style="padding: 5px;">
            <div class="mda-box-item">
                <img class="mda-box-img" class="img-fluid" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/du-lich-mu-thu-kham-pha-dinh-cau-gia-tot-du-lich-viet.jpg" alt="Card image">
                <div class="mda-caption">
                    <h4 class="mda-box-des">${n.title}</h4>
                    <p class="mda-info">
                        <span>${n.content}</span>
                    </p>
                    
                    <p>Source: <a>${n.source}</a></p>
                </div>
            </div>
        </div>
    </c:forEach>
</div>




