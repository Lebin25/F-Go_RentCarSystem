<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>F-Go</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="./CSS/allProductsStyle.css">

</head>

<body>
    <jsp:include page="navbar.jsp"></jsp:include>

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

        <div id="product-list">
            <div class="product-list-heading">
                <div class="line"></div>
                <div class="heading-text"><span>Danh sách xe tại F-Go</span></div>
                <div class="line"></div>
            </div>

            <div class="product-container">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <ul class="category-list">
                                <li><a href="allproduct" class="all" data-filter="all">Tất cả</a></li>
                                <c:forEach items="${listC}" var="o">
                                <li><a href="category?cid=${o.categoryId}" class="javascript" data-filter="javascript">${o.categoryName}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                </div>

                <div class="row justify-content-center">
                    <form action="search" method="post" class="searchForm col-sm-6">
                        <input oninput="searchByName(this)" name="txt" type="text" id="searchBar" placeholder="Nhập tên xe bạn muốn tìm kiếm">
                    </form>
                </div>

                <div id="content" class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="product col-sm-4">
                            <a href="view_car_detail?pid=${o.productID}">
                                <div class="product-card">
                                    <div class="card-thumbnail">
                                        <img class="img-responsive" src="/images/${o.productImg}">
                                    </div>
                                    <div class="card-content">
                                        <div class="order-btn">
                                            <a class="order-btn-text" href="view_car_detail?pid=${o.productID}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                        </div>
                                        <h1 class="card-title">
                                            ${o.productName}
                                        </h1>
                                        <h2 class="card-sub-title">
                                            ${o.yearRelease}
                                        </h2>
                                        <div class="description">
                                            <ul>
                                                <li>
                                                    <i class="fa fa-th hidden-xs hidden-sm"></i>
                                                    <span>
                                                        <span class="attri">${o.licensePlate}</span> </span>
                                                </li>
                                                <li>
                                                    <i class="fa fa-users hidden-xs hidden-sm"></i>
                                                    <span>
                                                        <span class="attri">${o.seat}</span> </span>
                                                </li>
                                                <li>
                                                    <i class="fa fa-cogs hidden-xs hidden-sm"></i>
                                                    <span>
                                                        <span class="attri">${o.gear}</span> </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="price">
                                            <div class="price-text">${o.price}</div>
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
                            </a>
                        </div>
                    </c:forEach>

                </div>
                <button onclick="loadMore()" class="click-button">Xem thêm</button>
            </div>
        </div>
    </div>

    <footer style="height: 50px"></footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
                    function loadMore() {
                        var ammount = document.getElementsByClassName("product").length;
                        $.ajax({
                            url: "load",
                            type: "get",
                            data: {
                                exits: ammount
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML += data;
                            },
                            error: function (xhr) {
                                //Do Something to handle error
                            }
                        });
                    }
                    function searchByName(param) {
                        var txtSearch = param.value;
                        $.ajax({
                            url: "SearchByAjax",
                            type: "get", //send it through get method
                            data: {
                                txt: txtSearch
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                            },
                            error: function (xhr) {
                                //Do Something to handle error
                            }
                        });
                    }

    </script>

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
                    $(document).ready(function () {
                        // Handler for .ready() called.
                        $('html, body').animate({
                            scrollTop: $('#product-list').offset().top
                        }, 'slow');
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