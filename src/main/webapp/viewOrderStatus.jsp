<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./CSS/orderStatusStyle.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    
</head>

<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container" style="margin-top:7rem!important;">
        <article class="card">
            <header class="card-header"> <h4>Tình Trạng Đơn Thuê</h4> </header>
            <div class="card-body">
                <h6>Mã đơn thuê: 1</h6>
                <article class="card">
                    <div class="card-body row">
                        <div class="col text-center"> 
                            <div><strong>Tên xe</strong></div> 
                            <br>
                            <img src="https://img1.oto.com.vn/crop/762x429/2019/12/03/Xo1qt19y/thong-so-ky-thuat-mazda-6-2020-oto-com-vn-3-6e39.jpg" alt="Hình ảnh xe" width="100">&nbsp&nbspMazda 6
                        </div>
                        <div class="col text-center""> 
                            <div style="margin-bottom: 14px!important;""><strong>Ngày nhận xe:</strong></div> 
                            <br> 
                            <i class="fas fa-calendar-alt"></i>
                             05/11/2022 
                        </div>
                        <div class="col text-center""> 
                            <div style="margin-bottom: 14px!important;""><strong>Hạn trả xe:</strong></div> 
                            <br> 
                            <i class="fas fa-calendar-check"></i>
                             08/11/2022 
                        </div>
                        <div class="col text-center""> 
                            <div style="margin-bottom: 14px!important;""><strong>Tổng tiền:</strong></div> 
                            <br> 
                            <i class="fas fa-wallet"></i>
                            1200000đ
                        </div>
                        <div class="col text-center""> 
                            <div style="margin-bottom: 14px!important;""><strong>Trạng thái</strong></div> 
                            <br> 
                            <i class="fas fa-thumbtack"></i>
                            Đã nhận xe
                        </div>
                        <div class="col text-center""> 
                            <div style="margin-bottom: 14px!important;""><strong></strong></div> 
                            <br> 
                            <a href="#" class="btn btn-warning" data-abc="true"> <i class="fas fa-comments"></i></i>&nbspĐánh giá xe</a>
                        </div>
                    </div>
                </article>
                <div class="track">
                    <div class="step active"> 
                        <span class="icon"> <i class="fa fa-check"></i> </span> 
                        <span class="text">Xác nhận đơn thuê</span> </div>
                    <div class="step active"> 
                        <span class="icon"> <i class="fa fa-truck"></i> </span> 
                        <span class="text">Đang giao xe</span> </div>
                    <div class="step"> 
                        <span class="icon"> <i class="fa fa-user"></i></i> </span> 
                        <span class="text">Đã nhận xe</span> </div>
                    <div class="step"> 
                        <span class="icon"> <i class="fa fa-box"></i> </span> 
                        <span class="text">Đã trả xe</span> </div>
                </div>
                <hr>
                <a href="#" class="btn btn-warning" data-abc="true"> <i class="fa fa-chevron-left"></i>Trở về trang chủ</a>
            </div>
        </article>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
</body>
</html>
