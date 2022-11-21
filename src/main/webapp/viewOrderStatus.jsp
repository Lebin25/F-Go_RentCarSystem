<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./CSS/orderStatusStyle.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

    </head>

    <body>
        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="container" style="margin-top:7rem!important;min-height: 54vh;">
                <article class="card">
                    <header class="card-header"> <h4>Tình Trạng Đơn Thuê</h4> </header>
                    <c:forEach items="${orderDetailList}" var="o">
                    <div class="card-body">
                        <div class="card-item">
                            <h6>Mã đơn thuê: ${o.orderId}</h6>
                            <article class="card">
                                <div class="card-body row">
                                    <div class="col text-center"> 
                                        <div><strong>Tên xe</strong></div> 
                                        <br>
                                        <c:forEach items="${productOrderList}" var="p">
                                            <c:if test="${o.productId == p.productID}">
                                                <img src="images/${p.productImg}" alt="Hình ảnh xe" width="100">&nbsp&nbsp${p.productName}
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="col text-center""> 
                                        <div style="margin-bottom: 14px!important;""><strong>Ngày nhận xe:</strong></div> 
                                        <br> 
                                        <i class="fas fa-calendar-alt"></i>
                                        ${o.timeBegin} 
                                    </div>
                                    <div class="col text-center""> 
                                        <div style="margin-bottom: 14px!important;""><strong>Hạn trả xe:</strong></div> 
                                        <br> 
                                        <i class="fas fa-calendar-check"></i>
                                        ${o.timeEnd}
                                    </div>
                                    <div class="col text-center""> 
                                        <div style="margin-bottom: 14px!important;""><strong>Tổng tiền:</strong></div> 
                                        <br> 
                                        <i class="fas fa-wallet"></i>
                                        ${o.totalMoney}đ
                                    </div>
                                    <div class="col text-center""> 
                                        <div style="margin-bottom: 14px!important;""><strong>Trạng thái</strong></div> 
                                        <br> 
                                        <i class="fas fa-thumbtack"></i>
                                        <c:if test="${o.status==1}">
                                            Đang thuê xe
                                        </c:if>
                                        <c:if test="${o.status== 0} ">
                                            Đã trả xe
                                        </c:if>
                                    </div>
                                    <div class="col text-center""> 
                                        <div style="margin-bottom: 14px!important;""><strong></strong></div> 
                                        <br> 
                                        <button class="btn btn-primary" data-toggle="modal" data-target="#form_${o.orderId}"><i class="fas fa-comments"></i>&nbspĐánh giá xe</button>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="track">
                            <div class="step active"> 
                                <span class="icon"> <i class="fa fa-check"></i> </span> 
                                <span class="text">Xác nhận đơn thuê</span> </div>
                            <div class="step active"> 
                                <span class="icon"> <i class="fa fa-truck"></i> </span> 
                                <span class="text">Đang giao xe</span> </div>
                            <div class="step"> 
                                <span class="icon"> <i class="fa fa-user"></i></i> </span> 
                                <span class="text">Đã nhận xe</span> </div>
                            <div class="step"> 
                                <span class="icon"> <i class="fa fa-box"></i> </span> 
                                <span class="text">Đã trả xe</span> </div>
                        </div>
                        <hr>
                        <div class="modal fade" id="form_${o.orderId}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="text-right cross"><button class="btn btn-back" data-toggle="modal" data-target="#form"><i class="fa fa-times mr-2"></i></button> </div>
                                    <div class="card-body text-center"> <img src="IMG/feedback.png" height="100" width="100">
                                        <form action="Rating" method="post">
                                            <div class="comment-box text-center" onsubmit="feedback()">
                                                <h4>Nhận xét của bạn</h4>
                                                <div class="rating"> 
                                                    <input type="radio" name="rate" value="5" id="5_${o.orderId}"><label for="5_${o.orderId}">☆</label>
                                                    <input type="radio" name="rate" value="4" id="4_${o.orderId}"><label for="4_${o.orderId}">☆</label>
                                                    <input type="radio" name="rate" value="3" id="3_${o.orderId}"><label for="3_${o.orderId}">☆</label>
                                                    <input type="radio" name="rate" value="2" id="2_${o.orderId}"><label for="2_${o.orderId}">☆</label>
                                                    <input type="radio" name="rate" value="1" id="1_${o.orderId}"><label for="1_${o.orderId}">☆</label> </div>        
                                                <div class="comment-area">
                                                    <textarea name="comment" class="form-control" placeholder="Bạn nghĩ gì về xe này?" rows="4"></textarea>
                                                </div>
                                                <input type="hidden" name="pid" value="${o.productId}">

                                                <div class="text-center mt-4">
                                                    <button type="submit" class="btn btn-success send px-5">Gửi</button>
                                                    <button type="reset" class="btn btn-back" data-toggle="modal" data-target="#form">Huỷ</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <a href="Home" class="btn btn-back text-right" data-abc="true"> <i class="fa fa-chevron-left"></i>Trở về trang chủ</a>
            </article>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
            function feedback() {
                alert("Đã đánh giá xe thành công");
            }
        </script>
    </body>
</html>
