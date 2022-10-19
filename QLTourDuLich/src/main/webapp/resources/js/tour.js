/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* global fetch, moment, tour */



function addComment(addcm, idTour) {
    fetch(addcm, {
        method: "post",
        body: JSON.stringify({
            "content": document.getElementById("contentId").value,
            "idTour": idTour
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
                <img class="rounded-circle img-fluid" src="<c:url value="/images/default.png"/>">
            </div>
            <div class="col-md-10 date">
                <p>${data.content}</p>
                <i>${moment(data.createdDate).fromNow}</i>
            </div>
        </div>` + a.innerHTML;
    });

}

function loadComment(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let ms = '';
        for (let c of data) {
            ms += `
                
        
<div>
    
        <div class="row">
            <div class="col-md-2" style="padding: 5px">
                <img class="rounded-circle img-fluid" src="<c:url value='/images/default.png'/>">
            </div>
            <div class="col-md-10 date">
                <p>${c.content}</p>
                <p>được bình luận bởi ${c.user.username}</p>
                <i>${moment(c.createdDate).locale("vi").fromNow()}</i>
            </div>
        
        </div>
        <br>
   
</div>
            `
        }
        let cm = document.getElementById("tourcomment")
        cm.innerHTML = ms
    })
}




function addToBooking(idTour, nameTour, adultprice, childprice) {
    event.preventDefault();
    fetch("/QLTourDuLich/api/booking", {
        method: "post",
        body: JSON.stringify({
            "idTour": idTour,
            "nameTour": nameTour,
            "childprice": childprice,
            "adultprice": adultprice,

            "quantityChild": 1, //tao 2 nut
            "quantityAdult": 1
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {

        return res.json();
    }).then(function (data) {
//        let counter = document.getElementById("counter")
//        counter.innerText = data

    });

}

function updateBooking(obj, idTour) {
    fetch("/QLTourDuLich/api/booking", {
        method: "put",
        body: JSON.stringify({
            "idTour": idTour,
            "nameTour": "",
            "childprice": 0,
            "adultprice": 0,

            "quantityAdult": obj.value,
            "quantityChild": 1 //tao 2 nut

        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json();
    }).then(function (data) {


    });
}

function delBooking(idTour) {
    if (confirm("Bạn có chắc muốn hủy tour này không ?") == true) {
        fetch(`/QLTourDuLich/api/booking/${idTour}`, {
            method: "delete"
        }).then(function (res) {
            return res.json();
        }).then(function (data) {
//            let count = document.getElementById("count")
//            count.innerText = data.count
//            let total = document.getElementById("total")
//            total.innerText = data.total
            location.reload();
        })
    }

}

function pay(){
    if(confirm("Xác nhận thanh toán ?") == true){
        fetch("/QLTourDuLich/api/pay",{
            method:"post"
            
        }).then(function (res){
            return res.json();
        }).then(function (code){
            console.info(code);
            location.reload();
            alert("Thanh toán thành công!!")
        })
    }
}

