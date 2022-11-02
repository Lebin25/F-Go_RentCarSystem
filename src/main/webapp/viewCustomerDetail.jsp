<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Manage Customer Detail</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/CSS/manageCustomerDetail.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>
        <div class="content">
            <div class="header">
                <h2>Chi tiết thông tin khách hàng</h2>
            </div>

            <div class="container mb-3 mt-5 ">
                <div class="row user-info mb-3 pt-3">
                    <div class="padding-left-25 text-bold col-6">Tên khách hàng:</div>
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
                    <div class="padding-left-25 text-bold col-6">Mã tài khoản:</div>
                    <div class="col-6">${detail.accountId}</div>
                </div>
                <div class="row user-info mb-3">
                    <div class="padding-left-25 text-bold col-6">Trạng thái tài khoản:</div>
                    <div class="col-6"><c:if test="${detail.isVerify == 0}">
                                Chưa xác thực
                                <a href="verify_customer?cid=${detail.customerId}" class="btn btn-primary ml-3">Xác thực</a>
                            </c:if>
                            <c:if test="${detail.isVerify == 1}">
                                Đã xác thực
                            </c:if>
                    </div>       
                </div>
                <div class="row">
                    <div class="col-12 mt-3 mb-3 text-center">
                        <a href="managecustomer" class="btn btn-back">Quay lại</a>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
