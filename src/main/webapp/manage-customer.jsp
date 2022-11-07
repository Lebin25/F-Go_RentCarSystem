<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Manage Account</title>
        <link rel="stylesheet" href="./CSS/manageStyle.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="content">
                <div class="header">
                    <h2>Quản lý khách hàng</h2>
                </div>
                <div class="group-function">

                    <!-- <div class="searchBar">
                        <input type="text" id="searchBar" placeholder="Nhập tên xe bạn muốn tìm kiếm">
                    </div> -->

                    <button class="add-btn btn btn-primary text-uppercase">Thêm khách hàng</button>



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
                                <th>Tên khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Mã tài khoản</th>
                                <th>Trạng thái</th>
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listCu}" var="o">
                            <tr>
                                <td>${o.customerId}</td>
                                <td>${o.customerName}</td>
                                <td>${o.phone}</td>
                                <td>${o.accountId}</td>
                                <c:if test="${o.isVerify == 0}">
                                    <td>Chưa xác thực</td>
                                </c:if>
                                <c:if test="${o.isVerify == 1}">
                                    <td>Đã xác thực</td>
                                </c:if>

                                <td style="text-align:center;">
                                    <a href="load_to_view_customer?cusid=${o.customerId}" class="btn">
                                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                        <span><strong>Xem chi tiết</strong></span>
                                    </a>
                                    <a href="delete_customer" class="btn">
                                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                        <span><strong>Xoá</strong></span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="add-modal hide">
            <div class="container add-block">
                <div class="row">
                    <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="tm-block-title">Thêm khách hàng mới</h2>
                                </div>
                            </div>
                            <form id="form" action="addcustomer" method="post" class="tm-edit-product-form" enctype="multipart/form-data" >
                                <div class="row tm-edit-product-row" style="justify-content: center">
                                    <div class="col-xl-6 col-lg-6 col-md-12">
                                        <div class="form-group mb-3">
                                            <label for="name">Họ và tên
                                            </label>
                                            <input id="name" name="name" type="text" class="form-control validate" required onkeydown="validationname()"/>
                                            <span id="textname"></span>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="phone">Số điện thoại
                                            </label>
                                            <input id="phone" name="phone" type="text" class="form-control validate" required onkeydown="validationphone()" />
                                            <span id="textphone"></span>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label>Căn cước công dân</label>
                                            <input name="nationalId" type="file" class="form-control" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label>Bằng lái xe</label>
                                            <input name="drivingLicense" type="file" class="form-control" required>
                                        </div>
                                        
                                        <div class="form-group mb-3">
                                            <label for="accountID">Mã tài khoản
                                            </label>
                                            <input id="accountID" name="accountID" type="text" class="form-control validate" required />
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="email">Email
                                            </label>
                                            <input id="email" name="email" type="text" class="form-control validate" required onkeydown="validation()" />
                                            <span id="text"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="justify-content: center">
                                    <div class="col-3 mt-3 text-center">
                                        <button type="submit" class="btn btn-primary text-uppercase">Thêm khách hàng</button>
                                    </div>  
                                    <div class="col-3 mt-3 text-center">
                                        <a href="managecustomer" type="button" class="btn btn-back">Trở lại</a>
                                    </div> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <script>
            let modal = document.querySelector(".add-modal");
            var btnOpen = document.querySelector(".add-btn");
            var btnCancel = document.querySelector(".btn-back");
            function toggleModal(e) {
                console.log(e.target);
                modal.classList.toggle("hide")
            }
            btnOpen.addEventListener('click', toggleModal);
            btnCancel.addEventListener('click', toggleModal);

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
                    {orderSequence: false},
                    {orderSequence: false},
                    null,
                    {orderSequence: false},
                    {orderSequence: false},

                ],
                language: {
                    lengthMenu: 'Hiển thị _MENU_ xe',
                    zeroRecords: 'Không tìm thấy kết quả nào!',
                    info: 'Trang _PAGE_ trên _PAGES_',
                    infoEmpty: 'No records available',
                    infoFiltered: '(filtered from _MAX_ total records)',
                },
            });
        </script>
        <script type="text/javascript">
            function validation(){
                var form = document.getElementById("form");
                var email = document.getElementById("email").value;
                var text = document.getElementById("text");
                var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
                if(email.match(pattern)){
                    form.classList.add("valid");
                    form.classList.remove("invalid");
                    text.innerHTML = "Đúng định dạng"
                    text.style.color = "#00ff00"
                } else {
                    form.classList.remove("valid");
                    form.classList.add("invalid");
                    text.innerHTML = "Chưa đúng định dạng"
                    text.style.color = "#ff0000"

                }
                if(email == ""){
                    form.classList.remove("valid");
                    form.classList.remove("invalid");
                    text.innerHTML = ""
                }
            }
            
            
        </script>
        
        <script type="text/javascript">
            function validationphone(){
                var form = document.getElementById("form");
                var phone = document.getElementById("phone").value;
                var textphone = document.getElementById("textphone");
                var pattern = "^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$";
                if(phone.match(pattern)){
                    form.classList.add("valid");
                    form.classList.remove("invalid");
                    textphone.innerHTML = "Đúng định dạng"
                    textphone.style.color = "#00ff00"
                } else {
                    form.classList.remove("valid");
                    form.classList.add("invalid");
                    textphone.innerHTML = "Chưa đúng định dạng"
                    textphone.style.color = "#ff0000"

                }
                if(phone == ""){
                    form.classList.remove("valid");
                    form.classList.remove("invalid");
                    textphone.innerHTML = ""
                }
            }
            
            
        </script>
        
        <script type="text/javascript">
            function validationname(){
                var form = document.getElementById("form");
                var name = document.getElementById("name").value;
                var textname = document.getElementById("textname");
                var pattern = "^[a-zA-Z\\s]+$";
                if(name.match(pattern)){
                    form.classList.add("valid");
                    form.classList.remove("invalid");
                    textname.innerHTML = "Đúng định dạng"
                    textname.style.color = "#00ff00"

                } else {
                    form.classList.remove("valid");
                    form.classList.add("invalid");
                    textname.innerHTML = "Chưa đúng định dạng"
                    textname.style.color = "#ff0000"
                }
                if(name == ""){
                    form.classList.remove("valid");
                    form.classList.remove("invalid");
                    textphone.innerHTML = ""
                }
            }
            
            
        </script>
    </body>
</html>
