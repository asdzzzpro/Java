<%-- 
    Document   : register
    Created on : Sep 2, 2022, 4:10:01 PM
    Author     : Qhuy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1>Dang ky tai khoan</h1>

<c:if test="${errMsg != null}">
    <p>${errMsg}</p>
</c:if>

<c:url value="/register" var="action"/>

<form:form method="post" action="${action}" modelAttribute="user">
    <div class="form-group">
        <label for="firstname">Ho</label>
        <form:input type="text" id="firstname" path="firstName" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="lastname">Ten</label>
        <form:input type="text" id="lastname" path="lastName" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <form:input type="email" id="email" path="email" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="phone">SDT</label>
        <form:input type="text" id="phone" path="phone" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="username">Ten dang nhap</label>
        <form:input type="text" id="username" path="username" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="password">Mat khau</label>
        <form:input type="password" id="password" path="password" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="confirm-password">Xac nhan mat khau</label>
        <form:input type="password" id="confirm-password" path="confirmPassword" class="form-control"/>
    </div>
    
    <div class="form-group">
        <input type="submit" value="Dang ky" class="btn btn-danger"/>
    </div>
</form:form>    
