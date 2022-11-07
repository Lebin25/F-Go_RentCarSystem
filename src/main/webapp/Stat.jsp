
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
</html>
