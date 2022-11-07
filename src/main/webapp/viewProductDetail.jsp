<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Manage Product Detail</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/CSS/manageProductDetail.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>
        <div class="content">
            <div class="header">
                <h2>Chi tiết thông tin xe</h2>
            </div>

            <div class="container mb-3 mt-5">
                <div class="row">
                    <div class="car-img col-12 col-md-6 mt-2">
                        <img src="images/${detail.productImg}"
                             alt="Hình ảnh của xe">
                    </div>
                    <div class="col-12 col-md-6 mt-3">
                        <div class="car-info mb-3">Tên xe: ${detail.productName}</div>
                        <div class="car-info mb-3">Hãng xe: <c:if test="${detail.categoryID == 1}">
                                Hyundai
                            </c:if>
                            <c:if test="${detail.categoryID == 2}">
                                VinFast
                            </c:if>
                            <c:if test="${detail.categoryID == 3}">
                                Mazda
                            </c:if>
                            <c:if test="${detail.categoryID == 4}">
                                Toyota
                            </c:if>
                            <c:if test="${detail.categoryID == 5}">
                                Honda
                            </c:if></div>
                        <div class="car-info mb-3">Mô tả: ${detail.productTitle}</div>
                        <div class="car-info mb-3">Giá thuê/ngày: ${detail.price}đ</div>
                        <div class="car-info mb-3">Chỗ ngồi: ${detail.seat}</div>
                        <div class="car-info mb-3">Hộp số: ${detail.gear}</div>
                        <div class="car-info mb-3">Biển số xe: ${detail.licensePlate}</div>
                        <div class="car-info mb-3">Nhiên liệu: ${detail.fuel}</div>
                        <div class="car-info mb-3">Năm sản xuất: ${detail.yearRelease}</div>
                        <div class="car-info mb-3">Trạng thái: <c:if test="${detail.productStatus == 1}">
                                Còn xe
                            </c:if>
                            <c:if test="${detail.productStatus == 0}">
                                Hết xe
                            </c:if></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-2 col-md-2 mt-3 mb-3 text-center edit-btn">
                        <a href="load_to_edit?pid=${detail.productID}" class="btn btn-primary">Chỉnh sửa</a>
                    </div>
                    <div class="col-6 col-sm-2 col-md-2 mt-3 mb-3 text-center">
                        <a href="manageproduct" class="btn btn-back">Quay lại</a>
                    </div>
                </div>
            </div>
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
