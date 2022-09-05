/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* global fetch */

function loadAdmin(endpoint){
    fetch(endpoint).then(function(res){
        return res.json();
    }).then(function (data){
        console.info(data);
        let ms = "";
        for (let i =0; i < data.length; i++){
            data[i]
            ms += `
            <tr>
                <td><img class="rounded-circle img-fluid" src="<c:url value="/resources/images/default.png"/>"></td>
                <td>${data[i].nameTour}</td>
                <td>${data[i].adultprice}</td>
                <td>${data[i].childprice}</td>s
                <td><button class="btn btn-danger">Xoa</button></td>
            </tr>
`
        }
        let d = document.getElementById("admin");
        d.innerHTML = ms;
    });
    }