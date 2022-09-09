/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function colors(){
    let red  = parseInt(Math.random()*255);
    let green  = parseInt(Math.random()*255);
    let blue  = parseInt(Math.random()*255);
    return `rgb(${red},${green},${blue})`
}

function tourStats(id, labels=[], info=[]) {
    let color = []
    for (let i=0; i< info.length; i++)
        color.push(colors())
        
    const data = {
        labels: labels,
        datasets: [{
                label: 'Thong ke loai hinh tour du lich',
                data: info,
                backgroundColor: color,
                hoverOffset: 4
            }]
    };


    const config = {
        type: 'pie',
        data: data,
    };
    
    let ch = document.getElementById(id).getContext("2d")
    new Chart(ch, config)
}

function revenueChart(id, rlabels=[], rinfo=[]){
    let color = []
    for (let i=0; i< rinfo.length; i++)
        color.push(colors())
        
    const data = {
        labels: rlabels,
        datasets: [{
                label: 'Thong ke doanh tour du lich',
                data: rinfo,
                backgroundColor: color,
                hoverOffset: 4
            }]
    };


    const config = {
        type: 'line',
        data: data,
    };
    
    let ch = document.getElementById(id).getContext("2d")
    new Chart(ch, config)
}