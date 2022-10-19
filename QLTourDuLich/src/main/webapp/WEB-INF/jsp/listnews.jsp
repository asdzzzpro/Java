<%-- 
    Document   : listnews
    Created on : Sep 6, 2022, 7:39:28 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/admin/listnews" var="action"/>

<form:form method="post" action="${action}" modelAttribute="newses">
    <div class="form-group">
        <label for="title">Tiêu đề</label>
        <form:input type="text" id="title" path="title" width="100px" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="content">Nội dung</label>
        <form:input type="text" id="content" path="content" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="image">Hình ảnh</label>
        <form:input type="text" id="image" path="image" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="source">Nguồn</label>
        <form:input type="text" id="source" path="source" class="form-control"/>
    </div>
    <br>
    <div class="form-group">
        <input type="submit" value="Thêm" class="btn btn-danger"/>
    </div>
</form:form>

<table class="table table-hover">
    <tr>
        <th></th>
        <th>Tiêu đề</th>
        <th>Nội dung tin</th>
        <th>Hình ảnh</th>
        <th>Nguồn</th>
        <th></th>
    </tr>
    <tbody id="listnews">

    </tbody>
</table>
    
<script src="<c:url value="/js/admin.js" />"></script>
<script>
    <c:url value="/api/listnews" var="endpoint" />
    window.onload = function () {
        loadNews("${endpoint}");
    }
</script>