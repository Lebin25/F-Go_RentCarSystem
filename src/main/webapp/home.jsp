
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <<link rel="stylesheet" href="CSS/homeStyle.css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand mr-auto font-weight-bold" href="#">
                    <img id="logo" src="./IMG/banner.png"></a>
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
                        <a class="nav-link" href="login.jsp">Đăng nhập</a>
                        <a class="nav-link" href="#">Đăng ký</a>
                    </span>
                </div>
            </div>
        </nav>

        <div id="banner">
            <div class="text-content">
                <h1><strong><span>F-GO</span></strong></h1>
                <h4><span>THUÊ XE TỰ LÁI</span></h4>
                <p><span>Bạn đang cần tìm một dịch vụ cho thuê xe tự lái uy tín, tiện lợi. F-GO với đội xe chất lượng cao,
                        đội ngũ nhân viên chuyên nghiệp, nhiệt tình sẽ mang đến cho bạn những trải nghiệm thú vị, thuận tiện
                        nhất.</span></p>
                <a href="#" class="btn" role="button">Đọc thêm</a>
            </div>
        </div>

        <div class="service">
            <div class="service-heading">
                <div class="line"></div>
                <div class="heading-text"><span>Đảm bảo chuyến đi của bạn luôn thoải mái</span></div>
                <div class="line"></div>
            </div>
            <div class="service-slider" data-ride="carousel">
                <div class="service-container">
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-1.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Thủ tục nhanh</h4>
                                <p>Hoàn tất thủ tục thuê xe tự lái tại F-GO từ xa chỉ trong vòng 1 phút.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-2.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Thanh toán dễ dàng</h4>
                                <p>Thanh toán online dễ dàng và tiện lợi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-3.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Giao xe tận nơi không tốn phí</h4>
                                <p>F-Go hỗ trợ giao xe miễn phí tận nơi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-4.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Bảo mật thông tin khách hàng</h4>
                                <p>Thông tin thuê xe chỉ có bạn và F-Go biết. Tuyệt đối không có 1 bên thứ 3 nào xâm phạm.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-5.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Vệ sinh xe miễn phí</h4>
                                <p>Bất kể khi nào khách hàng cần rửa lại xe cho sạch đẹp thì hãy đến F-Go. Chúng tôi sẽ thực
                                    hiện nó hoàn toàn Free.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-1.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Thủ tục nhanh</h4>
                                <p>Hoàn tất thủ tục thuê xe tự lái tại F-GO từ xa chỉ trong vòng 1 phút.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-2.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Thanh toán dễ dàng</h4>
                                <p>Thanh toán online dễ dàng và tiện lợi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-3.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Giao xe tận nơi không tốn phí</h4>
                                <p>F-Go hỗ trợ giao xe miễn phí tận nơi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-4.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Bảo mật thông tin khách hàng</h4>
                                <p>Thông tin thuê xe chỉ có bạn và F-Go biết. Tuyệt đối không có 1 bên thứ 3 nào xâm phạm.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="icon-box">
                            <div class="icon-box-img" style="width: 60px">
                                <div class="icon">
                                    <div class="icon-inner">
                                        <img width="300px" height="300px" src="./IMG/carousel-item-5.png"
                                             alt="carousel-item-1">
                                    </div>
                                </div>
                            </div>
                            <div class="icon-box-text">
                                <h4>Vệ sinh xe miễn phí</h4>
                                <p>Bất kể khi nào khách hàng cần rửa lại xe cho sạch đẹp thì hãy đến F-Go. Chúng tôi sẽ thực
                                    hiện nó hoàn toàn Free.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="product-list">
            <div class="product-list-heading">
                <div class="line"></div>
                <div class="heading-text"><span>Các xe nổi bật</span></div>
                <div class="line"></div>
            </div>
            <div class="product-container">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="./IMG/accent-trang.jpg">
                                </div>
                                <div class="card-content">
                                    <div class="order-btn">
                                        <p class="order-btn-text">Đặt xe</p>
                                    </div>
                                    <h1 class="card-title">
                                        ACCENT TRẮNG
                                    </h1>
                                    <h2 class="card-sub-title">
                                        NEW 2022
                                    </h2>
                                    <div class="description">
                                        <ul>
                                            <li>
                                                <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">51G.*1216</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">4 chỗ</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">Số tự động</span> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="price">
                                        <div class="price-text">800.000đ</div>
                                    </div>
                                    <ul class="list-inline post-meta">
                                        <li class="time-stamp">
                                            <i class="fa fa-star"></i> 5
                                        </li>
                                        <li class="card-comment">
                                            <i class="fa fa-comments"></i><a href="#"> 22 bình luận</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="./IMG/accent-trang.jpg">
                                </div>
                                <div class="card-content">
                                    <div class="order-btn">
                                        <p class="order-btn-text">Đặt xe</p>
                                    </div>
                                    <h1 class="card-title">
                                        ACCENT TRẮNG
                                    </h1>
                                    <h2 class="card-sub-title">
                                        NEW 2022
                                    </h2>
                                    <div class="description">
                                        <ul>
                                            <li>
                                                <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">51G.*1216</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">4 chỗ</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">Số tự động</span> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="price">
                                        <div class="price-text">800.000đ</div>
                                    </div>
                                    <ul class="list-inline post-meta">
                                        <li class="time-stamp">
                                            <i class="fa fa-star"></i> 5
                                        </li>
                                        <li class="card-comment">
                                            <i class="fa fa-comments"></i><a href="#"> 22 bình luận</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div><div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="./IMG/accent-trang.jpg">
                                </div>
                                <div class="card-content">
                                    <div class="order-btn">
                                        <p class="order-btn-text">Đặt xe</p>
                                    </div>
                                    <h1 class="card-title">
                                        ACCENT TRẮNG
                                    </h1>
                                    <h2 class="card-sub-title">
                                        NEW 2022
                                    </h2>
                                    <div class="description">
                                        <ul>
                                            <li>
                                                <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">51G.*1216</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">4 chỗ</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">Số tự động</span> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="price">
                                        <div class="price-text">800.000đ</div>
                                    </div>
                                    <ul class="list-inline post-meta">
                                        <li class="time-stamp">
                                            <i class="fa fa-star"></i> 5
                                        </li>
                                        <li class="card-comment">
                                            <i class="fa fa-comments"></i><a href="#"> 22 bình luận</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div><div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="./IMG/accent-trang.jpg">
                                </div>
                                <div class="card-content">
                                    <div class="order-btn">
                                        <p class="order-btn-text">Đặt xe</p>
                                    </div>
                                    <h1 class="card-title">
                                        ACCENT TRẮNG
                                    </h1>
                                    <h2 class="card-sub-title">
                                        NEW 2022
                                    </h2>
                                    <div class="description">
                                        <ul>
                                            <li>
                                                <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">51G.*1216</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">4 chỗ</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">Số tự động</span> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="price">
                                        <div class="price-text">800.000đ</div>
                                    </div>
                                    <ul class="list-inline post-meta">
                                        <li class="time-stamp">
                                            <i class="fa fa-star"></i> 5
                                        </li>
                                        <li class="card-comment">
                                            <i class="fa fa-comments"></i><a href="#"> 22 bình luận</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div><div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="./IMG/accent-trang.jpg">
                                </div>
                                <div class="card-content">
                                    <div class="order-btn">
                                        <p class="order-btn-text">Đặt xe</p>
                                    </div>
                                    <h1 class="card-title">
                                        ACCENT TRẮNG
                                    </h1>
                                    <h2 class="card-sub-title">
                                        NEW 2022
                                    </h2>
                                    <div class="description">
                                        <ul>
                                            <li>
                                                <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">51G.*1216</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">4 chỗ</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">Số tự động</span> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="price">
                                        <div class="price-text">800.000đ</div>
                                    </div>
                                    <ul class="list-inline post-meta">
                                        <li class="time-stamp">
                                            <i class="fa fa-star"></i> 5
                                        </li>
                                        <li class="card-comment">
                                            <i class="fa fa-comments"></i><a href="#"> 22 bình luận</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div><div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="./IMG/accent-trang.jpg">
                                </div>
                                <div class="card-content">
                                    <div class="order-btn">
                                        <p class="order-btn-text">Đặt xe</p>
                                    </div>
                                    <h1 class="card-title">
                                        ACCENT TRẮNG
                                    </h1>
                                    <h2 class="card-sub-title">
                                        NEW 2022
                                    </h2>
                                    <div class="description">
                                        <ul>
                                            <li>
                                                <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">51G.*1216</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">4 chỗ</span> </span>
                                            </li>
                                            <li>
                                                <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                <span>
                                                    <span class="attri">Số tự động</span> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="price">
                                        <div class="price-text">800.000đ</div>
                                    </div>
                                    <ul class="list-inline post-meta">
                                        <li class="time-stamp">
                                            <i class="fa fa-star"></i> 5
                                        </li>
                                        <li class="card-comment">
                                            <i class="fa fa-comments"></i><a href="#"> 22 bình luận</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="watchmore-btn">
                        <button class="click-button">Xem thêm toàn bộ xe</button>
                    </div>
                </div>
            </div>
        </div>

        <footer style="height: 50px"></footer>

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
        </script>
    </body>
</html>
