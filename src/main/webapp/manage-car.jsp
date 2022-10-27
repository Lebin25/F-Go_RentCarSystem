<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Manage Car</title>
        <link rel="stylesheet" href="./CSS/manageStyle.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand mr-auto font-weight-bold" href="#">
                    <img id="logo" src="./IMG/logo.png"></a>
                <span class="v-line"></span>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="active nav-link" href="#">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Về chúng tôi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Hướng dẫn</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Liên hệ</a>
                        </li>
                    </ul>
                    <span class="navbar-nav d-flex justify-content-end">
                        <a class="nav-link" href="#">Đăng nhập</a>
                        <a class="nav-link" href="#">Đăng ký</a>
                    </span>
                </div>
                <img src="./IMG/user.png" alt="" class="user-pic" onClick="toggleMenu()">
                <div class="sub-menu-wrap" id="subMenu">
                    <div class="sub-menu">
                        <a href="#" class="sub-menu-link">
                            <p>Thống kê chính</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Theo dõi doanh thu</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Quản lý admin</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Quản lý tài khoản</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Quản lý khách hàng</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Quản lý đơn thuê</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Quản lý xe</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Quản lý loại xe</p>
                        </a>
                        <!-- <a href="#" class="sub-menu-link">
                                <p>Thông tin cá nhân</p>
                            </a>
                            <a href="#" class="sub-menu-link">
                                <p>Thông tin thuê xe</p>
                            </a> -->
                        <a href="#" class="sub-menu-link">
                            <p>Đổi mật khẩu</p>
                        </a>
                        <a href="#" class="sub-menu-link">
                            <p>Đăng xuất</p>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="header">
                <h2>Quản lý Xe</h2>
            </div>
            <div class="group-function">

                <!-- <div class="searchBar">
                    <input type="text" id="searchBar" placeholder="Nhập tên xe bạn muốn tìm kiếm">
                </div> -->

                <button class="add-btn btn btn-primary text-uppercase">Thêm xe mới</button>



                <!-- <div class="sortby">
                    <div class="dropdown">
                        <button class="dropdown-btn">Sắp xếp theo</button>
                        <div class="dropdown-content">
                            <a href="#">Chỗ ngồi</a>
                            <a href="#">Giá tiền</a>
                            <a href="#">Năm sản xuất</a>
                        </div>
                    </div>
                </div> -->
            </div>
            <div class="container mb-3 mt-3">
                <table class="table table-striped table-bordered mydatatable" style="width: 100%">
                    <thead style="text-align:center;">
                        <tr>
                            <th>ID</th>
                            <th>Tên xe</th>
                            <th>Hình ảnh</th>
                            <th>Loại xe</th>
                            <th>Trình trạng</th>
                            <th>Chức năng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="o">
                            <tr>
                                <td>${o.productID}</td>
                                <td>${o.productName}</td>
                                <td style=" text-align: center"><img src="IMG/${o.productImg}" width= "100"/></td>
                                    <c:if test="${o.categoryID == 1}">
                                    <td>Hyundai</td>
                                </c:if>
                                <c:if test="${o.categoryID == 2}">
                                    <td>VinFast</td>
                                </c:if>
                                <c:if test="${o.categoryID == 3}">
                                    <td>Mazda</td>
                                </c:if>
                                <c:if test="${o.categoryID == 4}">
                                    <td>Toyota</td>
                                </c:if>
                                <c:if test="${o.categoryID == 5}">
                                    <td>Honda</td>
                                </c:if>
                                <c:if test="${o.productStatus == 1}">
                                    <td>Còn xe</td>
                                </c:if>
                                <c:if test="${o.productStatus == 0}">
                                    <td>Hết xe</td>
                                </c:if>
                                <td style="text-align:center;">
                                    <a href="#" class="btn">
                                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                        <span><strong>Xem chi tiết</strong></span>
                                    </a>
                                    <a href="#" class="btn">
                                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                        <span><strong>Xoá</strong></span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="add-modal hide">
            <div class="container add-block">
                <div class="row">
                    <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="tm-block-title">Thêm xe mới</h2>
                                </div>
                            </div>
                            <form action="addproduct" method="post" class="tm-edit-product-form" enctype="multipart/form-data">
                                <div class="row tm-edit-product-row">
                                    <div class="col-xl-6 col-lg-6 col-md-12">
                                        <div class="form-group mb-3">
                                            <label for="name">Tên xe
                                            </label>
                                            <input id="name" name="name" type="text" class="form-control validate" required />
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="category">Loại xe</label>
                                            <select name = "category" class="custom-select tm-select-accounts" id="category">
                                                <option selected>Chọn loại xe</option>
                                                <c:forEach items="${listCC}" var="o">
                                                    <option value="${o.categoryId}">${o.categoryName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="price">Giá thuê
                                            </label>
                                            <input id="price" name="price" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="seat">Chỗ ngồi
                                            </label>
                                            <input id="seat" name="seat" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="gear">Hộp số
                                            </label>
                                            <input id="gear" name="gear" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="fuel">Nhiên liệu
                                            </label>
                                            <input id="fuel" name="fuel" type="text" class="form-control validate" required />
                                        </div>

                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                        <!--                                <div class="tm-product-img-dummy mx-auto">
                                                                            <i class="fa fa-cloud-upload tm-upload-icon"
                                                                               onclick="document.getElementById('fileInput').click();"></i>
                                                                        </div>-->
                                        <!--                                <div class="custom-file mt-3 mb-3">
                                                                            <input name="image" id="fileInput" type="file" />
                                                                            <input name="image" type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE"
                                                                                   onclick="document.getElementById('fileInput').click();" />
                                                                        </div>-->
                                        <div class="form-group mb-3">
                                            <label>Hình Ảnh</label>
                                            <input name="image" type="file" class="form-control" required>
                                        </div>
                                        <div class="form-group mt-3 mb-3">
                                            <label for="color">Màu
                                            </label>
                                            <input id="color" name="color" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="licensePlate">Biển số
                                            </label>
                                            <input id="licensePlate" name="licensePlate" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mt-3 mb-3">
                                            <label for="yearRelease">Năm sản xuất
                                            </label>
                                            <input id="yearRelease" name="yearRelease" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mt-3 mb-3">
                                            <label for="description">Mô tả</label>
                                            <textarea name="des" class="form-control validate" rows="3" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-3 offset-3 mt-3">
                                        <button type="submit" class="btn btn-primary text-uppercase">Thêm xe mới</button>
                                    </div>  
                                    <div class="col-3 mt-3">
                                        <button type="button" class="btn btn-back">Trở lại</button>
                                    </div>  
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <script>
                        let modal = document.querySelector(".add-modal");
                        var btnOpen = document.querySelector(".add-btn");
                        var btnCancel = document.querySelector(".btn-back");
                        function toggleModal(e) {
                            console.log(e.target);
                            modal.classList.toggle("hide")
                        }
                        btnOpen.addEventListener('click', toggleModal);
                        btnCancel.addEventListener('click', toggleModal);

                        $(function () {
                            $('.product-card').hover(function () {
                                $(this).find('.description').animate({
                                    height: "toggle",
                                    opacity: "toggle"
                                }, 300);
                            });
                        });
                        let subMenu = document.getElementById("subMenu");
                        const $menu = $('.sub-menu-wrap')
                        function toggleMenu() {
                            subMenu.classList.toggle("open-menu")
                        }
                        $(document).mouseup(function (e) {
                            var container = $(".user-pic");
                            if (!container.is(e.target) && subMenu.classList.toggle("open-menu")) {
                                subMenu.classList.toggle("open-menu")
                            }
                        });
                        $('.mydatatable').DataTable({
                            aoColumns: [
                                null,
                                null,
                                {orderSequence: false},
                                null,
                                null,
                                {orderSequence: false},
                            ],
                            language: {
                                lengthMenu: 'Hiển thị _MENU_ xe',
                                zeroRecords: 'Không tìm thấy xe nào',
                                info: 'Trang _PAGE_ trên _PAGES_',
                                infoEmpty: 'No records available',
                                infoFiltered: '(filtered from _MAX_ total records)',
                            },
                        });
        </script>
    </body>
</html>
