<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Chi tiết xe</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js'></script>
            <link rel="stylesheet" href="./CSS/viewCarDetail.css">
    </head>
    <body oncontextmenu='return false' class='snippet-body'>
        <jsp:include page="navbar.jsp"></jsp:include>
        <div class="container-fluid mb-3">
            <div class="row no-gutters justify-content-center">
                <div class="col-md-5 pr-2">
                    <div class="card">
                        <div class="demo">
                            <img src="https://i1-vnexpress.vnecdn.net/2021/09/18/Mazda32020VnE993047211573621051jpg-1631963909.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=VXV9HNqGYg14HBrMyJGPiw"
                                 alt="Ảnh xe">
                        </div>
                    </div>
                    <div class="card mt-2">
                        <h6 class="text-center">Nhận xét và Đánh giá</h6>
                        <div class="d-flex flex-row justify-content-center">
                            <div class="stars">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <span class="ml-1 font-weight-bold">5.0</span>
                        </div>
                        <hr>
                        <div class="badges text-center"> <span class="badge">Tổng cộng (25)</span>
                            <span class="badge"> <i class="fa fa-comments-o"></i> 23 </span>
                            <span class="badge bg-primary-color">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span class="ml-1">25</span>
                            </span>
                        </div>
                        <hr>
                        <div class="comment-section">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex flex-row align-items-center">
                                    <div class="d-flex flex-column ml-1 comment-profile">
                                        <i class="fa fa-user-circle-o mr-2" aria-hidden="true"><span
                                                class="name">&nbspNguyễn Đức Lê Bin</span></i>
                                        <div class="comment-ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <span class="comment mt-3">Xe xịn, chất lượng dịch vụ tốt</span>
                                    </div>
                                </div>
                                <div class="date"> <span class="text-muted">2022-11-04 01:36</span> </div>
                            </div>
                            <hr>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex flex-row align-items-center">
                                    <div class="d-flex flex-column ml-1 comment-profile">
                                        <i class="fa fa-user-circle-o mr-2" aria-hidden="true"><span class="name">&nbspLê
                                                Tuấn Kiệt</span></i>
                                        <div class="comment-ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <span class="comment mt-3">Xe xịn, tiết kiệm xăng</span>
                                    </div>
                                </div>
                                <div class="date"> <span class="text-muted">2022-11-03 23:30</span> </div>
                            </div>
                        </div>
                        <div class="button text-center">
                            <button class="btn btn-more mt-5">Xem thêm</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="about d-flex justify-content-between align-items-center">
                            <h3 class="font-weight-bold">MAZDA 3</h3>
                            <h4 class="font-weight-bold mt-1">800.000đ/ngày</h4>
                        </div>
                        <div class="buttons">
                            <button class="btn btn-long buy mr-2">Đặt xe</button>
                            <button class="btn wishlist"> <i class="fa fa-heart"></i></button>
                        </div>
                        <hr>
                        <div class="product-description">
                            <div class="row justify-content-center"><span class="font-weight-bold"
                                                                          style="font-size:1.2rem;">Thông tin chi tiết:</span></div>
                            <div class="d-flex flex-row align-items-center mt-3 justify-content-around">
                                <i class="car-info fa fa-wheelchair"><span class="ml-1">Chỗ ngồi: 4 chỗ</span></i>

                                <i class="car-info fa fa-cogs"><span class="ml-1">Hộp số: Số tự động</span></i>
                            </div>
                            <div class="d-flex flex-row align-items-center mt-3 justify-content-around">
                                <i class="car-info fa fa-paint-brush"><span class="ml-1">Màu: Đen</span></i>

                                <i class="car-info fa fa-barcode"><span class="ml-1">Biển số: 43H.*2511</span></i>
                            </div>
                            <div class="d-flex flex-row align-items-center mt-3 justify-content-around">
                                <i class="car-info fa fa-filter"><span class="ml-1">Nhiên liệu: Xăng</span></i>

                                <i class="car-info fa fa-car"><span class="ml-1">Năm sản xuất: 2022</span></i>
                            </div>
                            <div class="mt-3">
                                <div class="row justify-content-center"><span class="font-weight-bold"
                                                                              style="font-size:1.2rem;">Mô tả</span></div>
                                <p>Gia nhập thị trường Việt Nam từ năm 2011, Mazda 2 nhanh chóng chiếm được cảm tình của
                                    khách hàng Việt nhờ thiết kế bắt mắt của ngôn ngữ Kodo, khả năng vận hành bền bỉ, tiết
                                    kiệm nhiên liệu của động cơ SkyActive</p>
                            </div>
                            <div class="mt-3">
                                <div class="row justify-content-center"><span class="font-weight-bold"
                                                                              style="font-size:1.2rem;">Điều khoản</span></div>
                                <p style="color: red;">Quý khách lưu ý một số qui định sau:</p>
                                <p> - Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật</p>
                                <p> - Không được sử dụng xe thuê để cầm cố hay thế chấp, sử dụng đúng mục đích</p>
                                <p> - Không hút thuốc, ăn kẹo cao su, xả rác trong xe</p>
                                <p> - Không chở hàng cấm, hàng dễ cháy nổ, hoa quả thực phẩm lưu mùi trong xe</p>
                                <p> - Khi trả xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu thêm phí rửa xe,
                                    hút bụi nếu xe dơ (Sẽ thu thêm theo mức độ dơ)</p>
                                <p class="font-weight-bold text-center mt-5">Trân trọng cảm ơn, chúc quý khách có những
                                    chuyến đi an toàn và
                                    tuyệt vời!</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="header mt-5 mb-3"><span class="font-weight-bold" style="font-size:1.2rem;">Các xe liên quan</span></div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="product-card">
                            <div class="card-thumbnail">
                                <img class="img-responsive" src="https://i1-vnexpress.vnecdn.net/2021/09/18/TopMazda62018FaceliftSingapore3jpg-1631964095.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=rOR8hlNOYulDJZvtiACE5w">
                            </div>
                            <div class="card-content">

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
                                <img class="img-responsive" src="https://i1-vnexpress.vnecdn.net/2021/09/18/TopMazda62018FaceliftSingapore3jpg-1631964095.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=rOR8hlNOYulDJZvtiACE5w">
                            </div>
                            <div class="card-content">

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
                                <img class="img-responsive" src="https://i1-vnexpress.vnecdn.net/2021/09/18/TopMazda62018FaceliftSingapore3jpg-1631964095.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=rOR8hlNOYulDJZvtiACE5w">
                            </div>
                            <div class="card-content">

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
                                <img class="img-responsive" src="https://i1-vnexpress.vnecdn.net/2021/09/18/TopMazda62018FaceliftSingapore3jpg-1631964095.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=rOR8hlNOYulDJZvtiACE5w">
                            </div>
                            <div class="card-content">
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
                                <img class="img-responsive" src="https://i1-vnexpress.vnecdn.net/2021/09/18/TopMazda62018FaceliftSingapore3jpg-1631964095.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=rOR8hlNOYulDJZvtiACE5w">
                            </div>
                            <div class="card-content">
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
                                <img class="img-responsive" src="https://i1-vnexpress.vnecdn.net/2021/09/18/TopMazda62018FaceliftSingapore3jpg-1631964095.jpg?w=700&h=420&q=100&dpr=1&fit=crop&s=rOR8hlNOYulDJZvtiACE5w">
                            </div>
                            <div class="card-content">
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
            </div>
        </div>
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
