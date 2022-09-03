<%-- 
    Document   : tour
    Created on : Sep 3, 2022, 2:30:27 PM
    Author     : Qhuy
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${msg != null}">
    <div class="alert alert-danger">
        <p>${msg}</p>
    </div>

</c:if>

<c:url value="/admin/manage" var="action"/>

<form:form method="post" action="${action}" modelAttribute="tours" >
    <div class="form-group">
        <label for="nameTour">Ten Tour</label>
        <form:input type="text" id="nameTour" path="nameTour" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="description">Mo ta</label>
        <form:input type="text" id="description" path="description" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="childprice">Gia tre em</label>
        <form:input type="text" id="childprice" path="childprice" class="form-control"/>
        <form:errors path="childprice" cssClass="text-danger" element="div" /> 
    </div>
    <div class="form-group">
        <label for="adultprice">Gia nguoi lon</label>
        <form:input type="text" id="adultprice" path="adultprice" class="form-control"/>
        <form:errors path="adultprice" cssClass="text-danger" element="div" /> 
    </div>
    <div class="form-group">
        <label for="type">Loai</label>
        <form:select id="id" path="typeId" cssClass="form-select">
            <c:forEach items="${type}" var="t">
                <option value="${t.id}">${t.name}</option>
            </c:forEach>
        </form:select>
        <%--<form:input type="text" id="type" path="type" class="form-control"/>--%>
        <form:errors path="typeId" cssClass="text-danger" element="div" /> 
    </div>
    <br>
    <div class="form-group">
        <input type="submit" value="Them" class="btn btn-danger"/>
    </div>
</form:form>    
