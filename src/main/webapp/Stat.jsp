
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doanh thu tháng</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="./CSS/manageStyle.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>

        <div class="content">
            <div class="header">
                <h2>Doanh thu tháng</h2>
            </div>
            <canvas id="myChart" style="width:100%;max-width:1000px;margin: 0 auto"></canvas>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="./stat.js"></script> 
    <script src="https://code.jquery.com/jquery-3.2.1.js"
    integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
    <script>
        $(function () {
            $('.product-card').hover(function () {
                $(this).find('.description').animate({
                    height: "toggle",
                    opacity: "toggle"
                }, 300);
            });
        });
        let subMenu = document.getElementById("subMenu");
        const $menu = $('.sub-menu-wrap');
        function toggleMenu() {
            subMenu.classList.toggle("open-menu");
        }
        $(document).mouseup(function (e) {
            var container = $(".user-pic");
            if (!container.is(e.target) && subMenu.classList.toggle("open-menu")) {
                subMenu.classList.toggle("open-menu");
            }
        });
    </script>

    <script>
        /* 
         * To change this license header, choose License Headers in Project Properties.
         * To change this template file, choose Tools | Templates
         * and open the template in the editor.
         */
        let month = ["Thang 1", "Thang 2", "Thang 3", "Thang 4", "Thang 5", "Thang 6", "Thang 7", "Thang 8", "Thang 9", "Thang 10", "Thang 11", "Thang 12"]
        let statics = [];
        var barColors = ["orange", "orange", "orange", "orange", "orange", "orange", "orange", "orange", "orange", "orange", "orange", "orange"];

        $(document).ready(function () {
//Call api 
            $.ajax({
                url: "http://localhost:8080/getStatic",
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




    </script>
</html>
