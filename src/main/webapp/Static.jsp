<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>F-Go</title>
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
                    <h2>Thông kê chính</h2>
                </div>
                <div class="container mb-3 mt-3">
                    <table class="table table-striped table-bordered mydatatable text-center" style="width: 100%">
                        <thead style="text-align:center;">
                            <tr>
                                <th>Số lượt truy cập</th>
                                <th>Doanh thu tổng</th>
                                <th>Số khách đã thuê</th>
                                <th>Số lượt đánh giá</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${view}</td>
                            <td>${total}</td>
                            <td>${num}</td>
                            <td>${rate}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="content">
            <div class="header">
                <h2>Thống kê top 5 xe được thuê nhiều nhất tháng</h2>
            </div>
            <div class="container mb-3 mt-3">
                <table class="table table-striped table-bordered mydatatable text-center" style="width: 100%">
                    <thead style="text-align:center;">
                        <tr>
                            <th>ID</th>
                            <th>Tên xe</th>
                            <th>Hình ảnh</th>
                            <th>Số lần thuê</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listcar}" var="o">
                            <tr>
                                <td>${o.productID}</td>
                                <td>${o.productName}</td>
                                <td style=" text-align: center"><img src="images/${o.productImg}" width= "100"/></td>
                                <td>${o.productTime}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="content">
            <div class="header">
                <h2>Thống kê top 5 khách hàng sử dụng dịch vụ nhiều nhất</h2>
            </div>
            <div class="container mb-3 mt-3">
                <table class="table table-striped table-bordered mydatatable text-center" style="width: 100%">
                    <thead style="text-align:center;">
                        <tr>
                            <th>ID Tài Khoản</th>
                            <th>ID Khách Hàng</th>
                            <th>Tên Khách Hàng</th>
                            <th>Số lần sử dụng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listperson}" var="p">
                            <tr>
                                <td>${p.accountId}</td>
                                <td>${p.customerId}</td>
                                <td>${p.customerName}</td>
                                <td>${p.customerTime}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
                        
                        <footer></footer>

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

    </body>
</html>