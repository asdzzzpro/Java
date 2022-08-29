<%-- 
    Document   : header
    Created on : Aug 27, 2022, 1:14:29 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="javascript:void(0)">Tour Service</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)">&#9969; Trang chu</a>
                </li>
                <c:forEach items="${type}" var="t">
                    <c:url value="/" var="tUrl">
                        <c:param name="typeId" value="${t.id}" />
                    </c:url>
                    <li class="nav-item">
                        <a class="nav-link" href="${tUrl}">${t.name}</a>
                    </li>
                </c:forEach>

            </ul>



            <c:url value="/" var="action" />
            <form action="${action}" class="d-flex">
                <input class="form-control me-2" type="text" name="kw" placeholder="Nhap tu khoa...">
                <button type="submit" class="btn btn-primary" type="button">Tim</button>
            </form>
        </div>
    </div>
</nav>