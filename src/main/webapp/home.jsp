<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            <div class="product-list">
                <div class="product-list-heading">
                    <div class="line"></div>
                    <div class="heading-text"><span>Các xe nổi bật</span></div>
                    <div class="line"></div>
                </div>
                <div class="product-container">
                    <div class="container">
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
                                                    <i class="fa fa-star"></i> ${o.rating}
                                                </li>
                                                <li class="card-comment">
                                                    <i class="fa fa-comments"></i><a href="#"> ${o.cmt}</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>                
                            </div>
                        </c:forEach>
                    </div>
                    <div class="watchmore-btn">
                        <form action="allproduct" method="POST">
                            <button type="submit" class="button">Xem thêm toàn bộ xe</button>
                        </form>
                    </div>
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
        <style>.fb-livechat, .fb-widget{
                        display: none
                    }
                    .ctrlq.fb-button, .ctrlq.fb-close{
                        position: fixed;
                        right: 24px;
                        cursor: pointer
                    }
                    .ctrlq.fb-button{
                        z-index: 999;
                        background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff;
                        width: 60px;
                        height: 60px;
                        text-align: center;
                        bottom: 30px;
                        border: 0;
                        outline: 0;
                        border-radius: 60px;
                        -webkit-border-radius: 60px;
                        -moz-border-radius: 60px;
                        -ms-border-radius: 60px;
                        -o-border-radius: 60px;
                        box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16);
                        -webkit-transition: box-shadow .2s ease;
                        background-size: 80%;
                        transition: all .2s ease-in-out
                    }
                    .ctrlq.fb-button:focus, .ctrlq.fb-button:hover{
                        transform: scale(1.1);
                        box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)
                    }
                    .fb-widget{
                        background: #fff;
                        z-index: 1000;
                        position: fixed;
                        width: 360px;
                        height: 435px;
                        overflow: hidden;
                        opacity: 0;
                        bottom: 0;
                        right: 24px;
                        border-radius: 6px;
                        -o-border-radius: 6px;
                        -webkit-border-radius: 6px;
                        box-shadow: 0 5px 40px rgba(0, 0, 0, .16);
                        -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16);
                        -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16);
                        -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)
                    }
                    .fb-credit{
                        text-align: center;
                        margin-top: 8px
                    }
                    .fb-credit a{
                        transition: none;
                        color: #bec2c9;
                        font-family: Helvetica, Arial, sans-serif;
                        font-size: 12px;
                        text-decoration: none;
                        border: 0;
                        font-weight: 400
                    }
                    .ctrlq.fb-overlay{
                        z-index: 0;
                        position: fixed;
                        height: 100vh;
                        width: 100vw;
                        -webkit-transition: opacity .4s, visibility .4s;
                        transition: opacity .4s, visibility .4s;
                        top: 0;
                        left: 0;
                        background: rgba(0, 0, 0, .05);
                        display: none
                    }
                    .ctrlq.fb-close{
                        z-index: 4;
                        padding: 0 6px;
                        background: #365899;
                        font-weight: 700;
                        font-size: 11px;
                        color: #fff;
                        margin: 8px;
                        border-radius: 3px
                    }
                    .ctrlq.fb-close::after{
                        content: "X";
                        font-family: sans-serif
                    }
                    .bubble{
                        width: 20px;
                        height: 20px;
                        background: #c00;
                        color: #fff;
                        position: absolute;
                        z-index: 999999999;
                        text-align: center;
                        vertical-align: middle;
                        top: -2px;
                        left: -5px;
                        border-radius: 50%;
                    }
                    .bubble-msg{
                        width: 120px;
                        left: -140px;
                        top: 5px;
                        position: relative;
                        background: rgba(59, 89, 152, .8);
                        color: #fff;
                        padding: 5px 8px;
                        border-radius: 8px;
                        text-align: center;
                        font-size: 13px;
                    }</style><div class="fb-livechat"> <div class="ctrlq fb-overlay"></div><div class="fb-widget"> <div class="ctrlq fb-close"></div><div class="fb-page" data-href="https://www.facebook.com/thuexetulaiFgo" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"> </div><div class="fb-credit"> <span style="color:#bec2c9;font-size:12px">Powered by </span><a href="https://www.facebook.com/thuexetulaiFgo" target="_blank" rel="noffollow" >F-Go</a> </div><div id="fb-root"></div></div><a href="https://m.me/thuexetulaiFgo" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button"> <div class="bubble">1</div><div class="bubble-msg">Bạn cần hỗ trợ?</div></a></div><script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script><script>jQuery(document).ready(function ($) {
                function detectmob() {
                    if (navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i)) {
                        return true;
                    } else {
                        return false;
                    }
                }
                var t = {delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")};
                setTimeout(function () {
                    $("div.fb-livechat").fadeIn()
                }, 8 * t.delay);
                if (!detectmob()) {
                    $(".ctrlq").on("click", function (e) {
                        e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function () {
                            $(this).hide("slow"), t.button.show()
                        })) : t.button.fadeOut("medium", function () {
                            t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)
                        })
                    })
                }
            });</script>
    </body>
</html>
