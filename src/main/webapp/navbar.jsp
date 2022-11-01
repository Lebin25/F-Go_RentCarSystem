<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand mr-auto font-weight-bold" href="home.jsp">
                    <img id="logo" src="./IMG/logo.png"></a>
                <span class="v-line"></span>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="active nav-link" href="home.jsp">Trang chủ</a>
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
                        <a class="nav-link" href="login.jsp">Đăng nhập</a>
                        <a class="nav-link" href="signup.jsp">Đăng ký</a>
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
                        <a href="manageadmin" class="sub-menu-link">
                            <p>Quản lý admin</p>
                        </a>
                        <a href="manageaccount" class="sub-menu-link">
                            <p>Quản lý tài khoản</p>
                        </a>
                        <a href="managecustomer" class="sub-menu-link">
                            <p>Quản lý khách hàng</p>
                        </a>
                        <a href="manageorder" class="sub-menu-link">
                            <p>Quản lý đơn thuê</p>
                        </a>
                        <a href="manageproduct" class="sub-menu-link">
                            <p>Quản lý xe</p>
                        </a>
                        <a href="managecategory" class="sub-menu-link">
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
