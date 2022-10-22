<%-- 
    Document   : register
    Created on : Sep 2, 2022, 9:07:34 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1>Đăng ký</h1>

<c:if test="${errMsg != null}">
    <p>${errMsg}</p>
</c:if>

<c:url value="/register" var="action"/>

<form:form method="post" action="${action}" modelAttribute="user">
    <div class="form-group">
        <label for="firstname">Họ</label>
        <form:input type="text" id="firstname" path="firstName" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="lastname">Tên</label>
        <form:input type="text" id="lastname" path="lastName" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <form:input type="email" id="email" path="email" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="phone">Số điện thoại</label>
        <form:input type="text" id="phone" path="phone" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="username">Tên đăng nhập</label>
        <form:input type="text" id="username" path="username" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="password">Mật khẩu</label>
        <form:input type="password" id="password" path="password" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="confirm-password">Xác nhận mật khẩu</label>
        <form:input type="password" id="confirm-password" path="confirmPassword" class="form-control"/>
    </div>
    <br>
    <div class="form-group">
        <input type="submit" value="Đăng ký" class="btn btn-danger"/>
    </div>
</form:form>    