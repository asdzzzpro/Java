<%-- 
    Document   : revenue-stats
    Created on : Sep 9, 2022, 4:15:45 PM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1>Thống kê doanh thu theo tour du lịch</h1>

<table class="table table-hover">
    <tr>
        <th>Mã</th>
        <th>Tour</th>
        <th>Doanh thu</th>
        
    </tr>
    <c:forEach items="${revenuestats}" var="t">
        <tr>
        <td>${t[0]}</td>
        <td>${t[1]}</td>
        <td>${t[2]}</td>
        
    </tr>
    </c:forEach>
</table>

<script>
    let rlabels =[], rinfo=[];
    
    <c:forEach items="${revenuestats}" var="t">
        rlabels.push('${t[1]}')
        rinfo.push(${t[2]})
    </c:forEach>
    
    window.onload = function (){
        revenueChart("revenueStatsChart",rlabels, rinfo)
    }
</script>

<div style="width: 800px; height: 500px">
    <canvas id="revenueStatsChart"></canvas>
</div>