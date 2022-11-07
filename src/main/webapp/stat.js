/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
let month = ["Thang 1", "Thang 2", "Thang 3", "Thang 4", "Thang 5", "Thang 6", "Thang 7", "Thang 8", "Thang 9", "Thang 10", "Thang 11", "Thang 12"]
let statics = [];
var barColors = ["orange","orange","orange","orange","orange","orange","orange","orange","orange","orange","orange","orange"];

$(document).ready(function () {
//Call api 
    $.ajax({
        url: "http://localhost:8080/F-Go/getStatic",
//        dataType: json,
        type: 'GET',
        dataType: "json",
        success: function (data) {
//      statics["2"] = 800000.0


            statics[0] = data[1];
            statics[1] = data[2];
            statics[2] = data[3];
            statics[3] = data[4];
            statics[4] = data[5];
            statics[5] = data[6];
            statics[6] = data[7];
            statics[7] = data[8];
            statics[8] = data[9];
            statics[9] = data[10];
            statics[10] = data[11];
            statics[11] = data[12];
            new Chart("myChart", {
                type: "bar",
                data: {
                    labels: month,
                    datasets: [{
                            backgroundColor: barColors,
                            data: statics
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: "Doanh thu theo tháng"
                    }
                }
            });
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("error: " + textStatus.toString())
        },
    }
    );


})



