<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thêm xe mới</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/addCarStyle.css">
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
    <div class="container tm-mt-big tm-mb-big">
        <div class="row">
            <div class="col-12">
                <h2 class="tm-block-title">Thêm xe mới</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                    <div class="row tm-edit-product-row">
                        <div class="col-xl-6 col-lg-6 col-md-12">
                            <form action="" class="tm-edit-product-form">
                                <div class="form-group mb-3">
                                    <label for="name">Tên xe
                                    </label>
                                    <input id="name" name="name" type="text" class="form-control validate" required />
                                </div>

                                <div class="form-group mb-3">
                                    <label for="category">Loại xe</label>
                                    <select class="custom-select tm-select-accounts" id="category">
                                        <option selected>Chọn loại xe</option>
                                        <option value="1">Hyundai</option>
                                        <option value="2">VinFast</option>
                                        <option value="3">Honda</option>
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
                                    <label for="licensePlate">Biển số
                                    </label>
                                    <input id="licensePlate" name="licensePlate" type="text" class="form-control validate" required />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="fuel">Nhiên liệu
                                    </label>
                                    <input id="fuel" name="fuel" type="text" class="form-control validate" required />
                                </div>

                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                            <div class="tm-product-img-dummy mx-auto">
                                <i class="fa fa-cloud-upload tm-upload-icon"
                                   onclick="document.getElementById('fileInput').click();"></i>
                            </div>
                            <div class="custom-file mt-3 mb-3">
                                <input id="fileInput" type="file" style="display:none;" />
                                <input type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE"
                                       onclick="document.getElementById('fileInput').click();" />
                            </div>
                            <div class="form-group mt-3 mb-3">
                                <label for="yearRelease">Năm sản xuất
                                </label>
                                <input id="yearRelease" name="yearRelease" type="text" class="form-control validate" required />
                            </div>
                            <div class="form-group mt-3 mb-3">
                                <label for="description">Mô tả</label>
                                <textarea class="form-control validate" rows="5" required></textarea>
                            </div>
                        </div>
                        <div class="col-3 offset-3 mt-3">
                            <button type="submit" class="btn btn-primary text-uppercase">Thêm xe mới</button>
                        </div>  
                        <div class="col-3 mt-3">
                            <a href="manage-car.jsp" class="btn btn-back">Quay lại</a>
                        </div>  
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="JS/jquery-3.3.1.min.js"></script>
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>

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