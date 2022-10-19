<%-- 
    Document   : login
    Created on : Sep 1, 2022, 10:02:36 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        <p>Đã có lỗi xảy ra</p>
    </div>
    
</c:if>

<c:if test="${param.acessDenied != null}">
    <div class="alert alert-danger">
        <p>Chỉ Admin mới có quyền truy cập chức năng này</p>
    </div>
    
</c:if>

<c:url value="/login" var="action"/>

<form method="post" action="${action}">
    <div class="form-group">
        <label for="username">Tên đăng nhập</label>
        <input type="text" id="username" name="username" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="password">Mật khẩu</label>
        <input type="password" id="password" name="password" class="form-control"/>
    </div>
    <br>
    <div class="form-group">
        <input type="submit" value="Đăng nhập" class="btn btn-danger"/>
    </div>
</form>