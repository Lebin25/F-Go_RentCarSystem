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
                                <img src="/images/${detail.productImg}"
                                 alt="Ảnh xe">
                        </div>
                    </div>
                    <div class="card mt-2">
                        <h6 class="text-center">Nhận xét và Đánh giá</h6>
                        <div class="d-flex flex-row justify-content-center">
                            <div class="stars">
                                <c:if test="${avg == 0}">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </c:if>
                                <c:if test="${avg > 0 && avg <=1}">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </c:if>
                                <c:if test="${avg > 1 && avg <=2}">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </c:if>
                                <c:if test="${avg > 2 && avg <=3}">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </c:if>
                                <c:if test="${avg > 3 && avg <=4}">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                </c:if>
                                <c:if test="${avg > 4 && avg <=5}">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </c:if>
                            </div>
                            <span class="ml-1 font-weight-bold">${avg}</span>
                        </div>
                        <hr>
                        <div class="badges text-center"> <span class="badge">Tổng cộng</span>
                            <span class="badge"> <i class="fa fa-comments-o"></i> ${countCmt} </span>
                            <span class="badge bg-primary-color">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span class="ml-1">${countRate}</span>
                            </span>
                        </div>
                        <hr>
                        <div class="comment-section">
                            <c:forEach items="${clist}" var="c">
                                <c:forEach items="${rlist}" var="r">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex flex-row align-items-center">
                                            <div class="d-flex flex-column ml-1 comment-profile">
                                                <c:if test="${r.customerID==c.customerId && detail.productID == r.productID}">
                                                    <i class="fa fa-user-circle-o mr-2" aria-hidden="true">
                                                        <span
                                                            class="name">&nbsp;${c.customerName}
                                                        </span>
                                                    </i>
                                                </c:if>   
                                                <c:if test="${r.customerID==c.customerId && detail.productID == r.productID}">

                                                    <div class="comment-ratings">
                                                        <c:if test="${r.rate > 0 && r.rate<=1}">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </c:if>
                                                        <c:if test="${r.rate > 1 && r.rate<=2}">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </c:if>
                                                        <c:if test="${r.rate > 2 && r.rate<=3}">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </c:if>
                                                        <c:if test="${r.rate > 3 && r.rate<=4}">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </c:if>
                                                        <c:if test="${r.rate > 4 && r.rate<=5}">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </c:if>
                                                    </div>
                                                </c:if>

                                                <span class="comment mt-3"><c:if test="${r.customerID==c.customerId && detail.productID == r.productID}">${r.comment}</c:if></span>
                                                </div>
                                            </div>
                                            <div class="date"> <span class="text-muted"><c:if test="${r.customerID==c.customerId && detail.productID == r.productID}">${r.date}</c:if></span> </div>
                                        </div>
                                </c:forEach>
                                <hr>
                            </c:forEach>
                        </div>
                        <div class="button text-center">
                            <button class="btn btn-more mt-5">Xem thêm</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="about d-flex justify-content-between align-items-center">
                            <h4 class="font-weight-bold">${detail.productName}</h4>
                            <h5 class="font-weight-bold mt-1">${detail.price}đ/ngày</h5>
                            <span style="margin-right: 13px; color: #FF9933; cursor: default; font-size: 1.2rem;">
                                <c:if test="${detail.productStatus == 1}">
                                    <td>Còn xe</td>
                                </c:if>
                                <c:if test="${detail.productStatus == 0}">
                                    <td>Đang được thuê</td>
                                </c:if>
                            </span>
                        </div>
                        <div class="buttons">
                            <a href="load_to_order?pid=${detail.productID}" class="btn btn-long buy mr-2">Đặt xe</a>
                            <a class="btn wishlist" id="wishlist" href="add_to_wishlist?pid=${detail.getProductID()}"> <i class="fa fa-heart" ></i></a>
                            <a href="allproduct" class="btn btn-back" data-abc="true" style="float: right; margin-top: 8px;"> <i class="fa fa-chevron-left"></i>Trở về</a>
                        </div>
                        <p class="text-danger font-italic mt-2">${mess}</p>
                        <hr>
                        <div class="product-description">
                            <div class="row justify-content-center"><span class="font-weight-bold"
                                                                          style="font-size:1.2rem;">Thông tin chi tiết:</span></div>
                            <div class="d-flex flex-row align-items-center mt-3 justify-content-around">
                                <i class="car-info fa fa-wheelchair"><span class="ml-1">Chỗ ngồi: ${detail.seat}</span></i>

                                <i class="car-info fa fa-cogs"><span class="ml-1">Hộp số: ${detail.gear}</span></i>
                            </div>
                            <div class="d-flex flex-row align-items-center mt-3 justify-content-around">
                                <i class="car-info fa fa-paint-brush"><span class="ml-1">Màu: ${detail.color}</span></i>

                                <i class="car-info fa fa-barcode"><span class="ml-1">Biển số: ${detail.licensePlate}</span></i>
                            </div>
                            <div class="d-flex flex-row align-items-center mt-3 justify-content-around">
                                <i class="car-info fa fa-filter"><span class="ml-1">Nhiên liệu: ${detail.fuel}</span></i>

                                <i class="car-info fa fa-car"><span class="ml-1">Năm sản xuất: ${detail.yearRelease}</span></i>
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
                    <c:forEach items="${Listlq}" var="o">
                        <div class="col-sm-4">
                            <div class="product-card">
                                <div class="card-thumbnail">
                                    <img class="img-responsive" src="/images/${o.productImg}">
                                </div>
                                <div class="card-content">

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
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
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
