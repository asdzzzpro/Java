/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/* global moment, fetch */

function loadComment(endpoint){
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data){
        let ms='';
        for (let n of data){
            ms+=`
                
        
<div>
    
        <div class="row">
            <div class="col-md-2" style="padding: 5px">
                <img class="rounded-circle img-fluid" src="<c:url value='/resources/images/default.png'/>">
            </div>
            <div class="col-md-10 date">
                <p>${n.content}</p>
                <p>duoc binh luan boi ${n.user.username}</p>
                <i>${moment(n.createdDate).locale("vi").fromNow()}</i>
            </div>
        
        </div>
        <br>
        
</div>
            `;
        }
        let cm  = document.getElementById("newscomment");
        cm.innerHTML = ms;
    });
}

function addComment(idNews) {
    fetch("/QLTourDuLich/api/add-ncomment", {
        method: "post",
        body: JSON.stringify({
            "content": document.getElementById("contentId").value,
            "idNews": idNews
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        console.info(res);
        return res.json();
    }).then(function (data) {
        console.info(data);
        let a = document.getElementyById("cmArea");
        a.innerHTML = `
        <div class="row">
            <div class="col-md-2" style="padding: 5px">
                <img class="rounded-circle img-fluid" src="<c:url value="/resources/images/default.png"/>">
            </div>
            <div class="col-md-10 date">
                <p>${data.content}</p>
                <i>${moment(data.createdDate).fromNow}</i>
            </div>
        </div>` + a.innerHTML;
    });

}

