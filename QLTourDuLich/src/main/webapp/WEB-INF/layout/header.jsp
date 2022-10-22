<%-- 
    Document   : header
    Created on : Aug 27, 2022, 1:14:29 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm" style="background-color: whitesmoke">
    <div class="container-fluid">
        <a class="navbar-brand" href="javascript:void(0)">&#9992; Tour Service</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/"/>">Về trang chủ</a>
                </li>
                <c:forEach items="${type}" var="t">


                    <li class="nav-item">
                        <c:url value="/" var="tUrl">
                            <c:param name="typeId" value="${t.id}" />
                        </c:url>
                        <a class="nav-link" href="${tUrl}">${t.name}</a>
                    </li>
                </c:forEach>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/login"/>">Đăng nhập</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/register"/>">Đăng ký</a>
                    </li>
                </c:if>

                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/"/>">${pageContext.request.userPrincipal.name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/logout"/>">Đăng xuất</a>
                    </li>
                </c:if>

                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/manage"/>">Quản lý Tour</a>
                    </li>
                </sec:authorize>

                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/listnews"/>">Quản lý tin tức</a>
                    </li>
                </sec:authorize>

                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/tour-stats"/>">Thống kê số lượng</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/revenue-stats"/>">Thống kê doanh thu</a>
                    </li>
                </sec:authorize>

                <sec:authorize access="hasRole('ROLE_CUSTOMER')">
                    <li class="nav-item">
                        <a class="nav-link " href="<c:url value="/booking"/>">
                            <i class="fas fa-car"></i></a>

                    </li>
                </sec:authorize>


            </ul>




        </div>
    </div>
</nav>