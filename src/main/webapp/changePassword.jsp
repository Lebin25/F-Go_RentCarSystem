<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./CSS/editProductStyle.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container add-block">
            <div class="row">
                <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                    <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="tm-block-title">Đổi mật khẩu</h2>
                            </div>
                        </div>
                        <form action="changePassword" method="post">
                            <div class="row tm-edit-product-row text-center justify-content-center">
                                <div class="col-12 col-sm-6">
                                    <c:if test="${sessionScope.acc.password != null}">
                                        <div class="form-group mb-3">
                                        <label for="pass">Mật khẩu cũ
                                        </label>
                                        <input name="pass" type="text" class="form-control validate" style="text-align: center;" required />
                                        <p style="color: red">${requestScope.mess}</p>
                                    </div>
                                    </c:if>
                                    
                                    <input type="hidden" name="user" value="${sessionScope.acc.account}" />
                                    <div class="form-group mb-3">
                                        <label for="newpass">Mật khẩu mới
                                        </label>
                                        <input id="newpass" name="newpass" type="text" class="form-control validate" style="text-align: center;" required />
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="repass">Nhập lại mật khẩu mới
                                        </label>
                                        <input id="repass" name="repass" type="text" class="form-control validate" style="text-align: center;" required />
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">        
                                <div class="col-3 text-center mt-3">
                                    <button type="submit" class="btn btn-primary text-uppercase">Lưu</button>
                                </div>  
                                <div class="col-3 text-center mt-3">
                                    <a href="home.jsp" type="button" class="btn btn-back">Trở lại</a>
                                </div>  
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    </body>
</html>