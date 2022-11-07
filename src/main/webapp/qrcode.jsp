<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thanh toán</title>
        <link rel="stylesheet" href="./CSS/orderStyle.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="container-content d-lg-flex">
                <div class="box-1 bg-light user">
                    <div class="box-inner-1 pb-3">
                        <div class="d-flex justify-content-center mb-3 userdetails">
                            <p class="fw-bold" style="font-size:1.4rem">Quét mã QR để thanh toán</p>

                    </div>
                    <div id="my" class="img-details">
                        <img src="./IMG/qrcode.jpg"
                             class="d-block w-100">
                    </div>
                </div>
            </div>
                <div class="box-2" style="padding: 180px 40px;">
                <div class="box-inner-2">
                    <div class="form">
                        <h3 class="text-center text-dark mb-3">Thanh toán hoá đơn: #${order.orderId}!</h3>
                        <h4 class="text-center mb-3">Số tiền thanh toán: ${order.totalMoney} VND</h4>
                        <h5 class="text-center mb-3" style="color: red">" Mã xe thuê #${order.productId} "</h5>
                        <h6 class="text-center mb-3">Chúng tôi sẽ kiểm tra và thông báo đến bạn khi thanh toán hoàn tất !</h6>
                        <a href="Home" class="btn btn-back" style="float: right"><i class="fas fa-arrow-left mr-2"></i>Trở về trang chủ</a>
                    </div>
                </div>
            </div>
        </div>
                        
                        <jsp:include page="footer.jsp"></jsp:include>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
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
