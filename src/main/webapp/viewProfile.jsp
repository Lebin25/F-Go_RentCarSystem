<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Your Progile</title>
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

            <div class="container mb-3 mt-5 ">
                <div class="row user-info mb-3 pt-3">
                    <div class="padding-left-25 text-bold col-6">Họ và Tên:</div>
                    <div class="col-6">Nguyễn Đức Lê Bin</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Số điện thoại:</div>
                    <div class="col-6">0123456789</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Căn cước công dân:</div>
                    <div class="col-6"><img src="https://upload.wikimedia.org/wikipedia/commons/9/96/C%C4%83n_c%C6%B0%E1%BB%9Bc_c%C3%B4ng_d%C3%A2n_g%E1%BA%AFn_ch%C3%ADp_m%E1%BA%B7t_tr%C6%B0%E1%BB%9Bc.jpg"
                                            alt="Hình ảnh căn cước công dân" width="200"></div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Giấy phép lái xe:</div>
                    <div class="col-6"><img src="https://cdn.thuvienphapluat.vn/tintuc/uploads/image/2021/02/27/giay-phep-lai-xe.png"
                                            alt="Hình ảnh giấy phép lái xe" width="200"></div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Email:</div>
                    <div class="col-6">abc123@gmail.com</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Trạng thái tài khoản:</div>
                    <div class="col-6">Đã được xác nhận</div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-2 col-md-2 mt-3 mb-3 text-center edit-btn">
                        <button class="btn btn-primary">Chỉnh sửa</button>
                    </div>
                    <div class="col-6 col-sm-2 col-md-2 mt-3 mb-3 text-center">
                        <button class="btn btn-back">Quay lại</button>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>

</html>