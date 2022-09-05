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
                <td></td>
                <td>${data[i].nameTour}</td>
                <td>${data[i].adultprice}</td>
                <td>${data[i].childprice}</td>s
                <td>
                    <div class="spinner-border text-secondary" style="display:none" id="load${data[i].idTour}"></div>
                    <button class="btn btn-danger" onclick="delTour('${endpoint +"/" + data[i].idTour}', ${data[i].idTour})">Xoa</button>
                    
                </td>
            </tr>
`
        }
        let d = document.getElementById("admin");
        d.innerHTML = ms;
    });
    }

function delTour(endpoint, id){
    let d = document.getElementById("load"+id)
    d.style.display="block"
    fetch(endpoint, {
        method: "delete"
    }).then(function (res){
        if(res.status == 204)
            location.reload();
    }).catch(function(err){
        console.error(err)
    })
}