<%-- 
    Document   : tour-stats
    Created on : Sep 9, 2022, 12:09:43 AM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1>Thong ke tour du lich theo nhom</h1>

<table class="table table-hover">
    <tr>
        <th>Ma</th>
        <th>Ten loai hinh</th>
        <th>So luong</th>
        
    </tr>
    <c:forEach items="${tourstats}" var="t">
        <tr>
        <td>${t[0]}</td>
        <td>${t[1]}</td>
        <td>${t[2]}</td>
        
    </tr>
    </c:forEach>
</table>
<script>
    let labels =[], info=[];
    
    <c:forEach items="${tourstats}" var="t">
        labels.push('${t[1]}')
        info.push(${t[2]})
    </c:forEach>
    
    window.onload = function (){
        tourStats("tourStatsChart",labels, info)
    }
</script>
<canvas id="tourStatsChart" width="200" height="200"></canvas>
