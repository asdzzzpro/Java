<%-- 
    Document   : admin-left
    Created on : Sep 9, 2022, 12:04:47 AM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar bg-light">

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin/tour-stats"/>">Thong ke so luong tour du lich theo nhom</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<c:url value="/admin/revenue-stats"/>">Thong ke doanh thu thoi gian</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="<c:url value="/"/>">Tro ve trang chu</a>
    </li>

  </ul>

</nav>
