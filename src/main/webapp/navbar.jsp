<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <c:if test="${sessionScope.acc == null}">
                <span class="navbar-nav d-flex justify-content-end">
                    <a class="nav-link" href="login.jsp">Đăng nhập</a>
                    <a class="nav-link" href="signup.jsp">Đăng ký</a>
                </span>
            </c:if>
            <c:if test="${sessionScope.acc != null}">
                <span class="navbar-nav d-flex justify-content-end">
                    <a class="nav-link" href="login.jsp">Hello ${sessionScope.acc.account}</a>
                    <!--<a class="nav-link" href="signup.jsp">Đăng ký</a>-->
                    <img src="./IMG/user.png" alt="" class="user-pic" onClick="toggleMenu()">
                    <div class="sub-menu-wrap" id="subMenu">
                        <div class="sub-menu">
                            <c:if test="${sessionScope.acc.role == 2}">
                                <a href="#" class="sub-menu-link">
                                    <p>Thống kê chính</p>
                                </a>
                                <a href="#" class="sub-menu-link">
                                    <p>Theo dõi doanh thu</p>
                                </a>
                                <a href="manageadmin" class="sub-menu-link">
                                    <p>Quản lý admin</p>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.acc.role == 1 || sessionScope.acc.role == 2}">
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
                            </c:if>
                            <c:if test="${sessionScope.acc.role == 0}">
                                <a href="#" class="sub-menu-link">
                                    <p>Thông tin cá nhân</p>
                                </a>
                                <a href="#" class="sub-menu-link">
                                    <p>Thông tin thuê xe</p>
                                </a> 
                            </c:if>
                            <a href="#" class="sub-menu-link">
                                <p>Đổi mật khẩu</p>
                            </a>
                            <a href="logout" class="sub-menu-link">
                                <p>Đăng xuất</p>
                            </a>
                        </div>
                    </div>
                </span>
            </c:if>
        </div>

    </div>
</nav>
