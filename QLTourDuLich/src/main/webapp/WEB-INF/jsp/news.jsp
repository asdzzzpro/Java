<%-- 
    Document   : news
    Created on : Sep 6, 2022, 4:17:16 AM
    Author     : Qhuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container" style="padding-top: 30px">
    <div class="row">
        
        <div class="col-md-9">
            <h1 class="text-center" style="padding: 10px">${news.title}</h1>
            
            
        </div>
            <div class="col-md-6" style="padding: 10px">
                <img class="card-img-top" class="img-fluid" src="https://i1-dulich.vnecdn.net/2022/09/05/79600556-10221688072901668-714-4112-1872-1662361981.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=XbjG6t1HXuuhROMSt06Chw" alt="Card image">
                
            </div>
            <div>
                <p>${news.content}</p>
                <br>
                <p>Nguồn: ${news.source}</p>
            </div>
    </div>
</div>
<script src="<c:url value="/js/news.js" />"></script>
<form style="padding: 15px">
    <div class="form-group">
        <textarea class="form-control" id="contentId" placeholder="Them binh luan cua ban..."></textarea>
        <input type="submit" onclick="addComment(${news.idNews})" value="Binh luan" class="btn btn-primary" style="margin: 7px"/>
    </div>
</form>

<script src="<c:url value="/js/news.js" />"></script>
    <ul id="newscomment">
        
    </ul>
            
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment-with-locales.min.js"></script>

<script>
    <c:url value="/api/newscomment" var="news" />
    window.onload = function () {
        loadComment('${news}')
    };

</script>