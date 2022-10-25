<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand mr-auto font-weight-bold" href="#">
                    <img id="logo" src="./img/logo.png"></a>
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
                <img src="./img/user.png" alt="" class="user-pic" onClick="toggleMenu()">
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

                <div class="add-btn">
                    <button>Thêm xe mới</button>
                </div>


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
                            <th>Loại xe</th>
                            <th>Trình trạng</th>
                            <th>Chức năng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Vinfast</td>
                            <td>VinFast</td>
                            <td>Hết hàng</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                        <tr>
                            <td>1</td>
                            <td>ACCENT TRẮNG</td>
                            <td>Hyundai</td>
                            <td>Còn xe</td>
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
                    </tbody>
                </table>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
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
                            null,
                            null,
                            {orderSequence: false},
                        ],
                        language: {
                            lengthMenu: 'Hiển thị _MENU_ xe',
                            zeroRecords: 'Không tìm thấy xe nào - sorry',
                            info: 'Trang _PAGE_ trên _PAGES_',
                            infoEmpty: 'No records available',
                            infoFiltered: '(filtered from _MAX_ total records)',
                        },
                    });
        </script>
    </body>
</html>
