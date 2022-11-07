<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Your Profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/CSS/viewProfileStyle.css">
    </head>

    <body>
        <jsp:include page="navbar.jsp"></jsp:include>
            <div class="content">
                <div class="header">
                    <h2>Chi tiết thông tin tài khoản</h2>
                </div>
                <!--<p class="font-italic"></p>-->
                <div class="container mb-3 mt-5 ">
                    <div class="row user-info mb-3 pt-3">
                        <div class="padding-left-25 text-bold col-6">Họ và Tên:</div>
                        <div class="col-6">${detail.customerName}</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Số điện thoại:</div>
                    <div class="col-6">${detail.phone}</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Căn cước công dân:</div>
                    <div class="col-6"><img src="images/${detail.nationalId}"
                                            alt="Hình ảnh căn cước công dân" width="200"></div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Giấy phép lái xe:</div>
                    <div class="col-6"><img src="images/${detail.drivingLicense}"
                                            alt="Hình ảnh giấy phép lái xe" width="200"></div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Email:</div>
                    <div class="col-6">${detail.email}</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Trạng thái tài khoản:</div>
                    <div class="col-6">
                        <c:if test="${detail.isVerify == 0}">
                            Chưa xác thực
                        </c:if> 
                        <c:if test="${detail.isVerify == 1}">
                            Đã xác thực
                        </c:if>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-2 col-md-2 mt-3 mb-3 text-center edit-btn">
                        <a href="load_to_edit_profile?cusid=${detail.customerId}" class="btn btn-primary">Chỉnh sửa</a>
                    </div>
                    <div class="col-6 col-sm-2 col-md-2 mt-3 mb-3 text-center">
                        <a href="Home" class="btn btn-back">Quay lại</a>
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