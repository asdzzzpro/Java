<%-- 
    Document   : login
    Created on : Sep 1, 2022, 10:02:36 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/login" var="action"/>

<form method="post" action="${action}">
    <div class="form-group">
        <label for="username">Ten dang nhap</label>
        <input type="text" id="username" name="username" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="password">Mat khau</label>
        <input type="password" id="password" name="password" class="form-control"/>
    </div>
    <div class="form-group">
        <input type="submit" value="Dang nhap" class="btn btn-danger"/>
    </div>
</form>