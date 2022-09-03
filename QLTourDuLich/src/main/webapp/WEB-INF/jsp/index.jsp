<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="text-primary text-center">Du Lịch Đất Việt</h1>
<div class="row">
    <c:forEach items="${tour}" var="t">
        <div class="col-md-3 col-xs-10" style="padding: 5px;">
            <div class="card">
                <a href="<c:url value="/tours/${t.idTour}" />">
                    <img class="card-img-top" class="img-fluid" src="http://media.dulich24.com.vn/diemden/sam-son-3378/9e5ee104-2c98-4d8e-aa33-0cc5673e772d-4.jpg" alt="Card image">
                </a>
                <div class="card-body">
                    <h4 class="card-title">${t.nameTour}</h4>
                    <p class="card-text">
                        Giá người lớn: <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.adultprice}" /> VND/khách
                    </p>
                    <p class="card-text">
                        Giá trẻ em: <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.childprice}" /> VND/khách
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
<div class="row" style="padding: 5px">
    <c:forEach items="${news}" var="n">

        <div class="mda-box-item col-md-7 col-xs-2">
            <a href="<c:url value="/news/${n.idNews}"/>">
                <img class="mda-box-img" class="img-fluid" src="https://baoquocte.vn/stores/news_dataimages/quangtung/022021/11/07/4700_nhieu-hoat-dong-hap-dan-trong-nam-du-lich-quoc-gia-56-2.jpg?rt=20210211074700" alt="Card image">
            </a>
        </div>
        <div class="mda-caption col-md-5 col-xs-10">
            <h4 class="mda-box-des">${n.title}</h4>

            <p>Source: <a>${n.source}</a></p>
            
        </div>
            
        <hr>

    </c:forEach>
</div>




