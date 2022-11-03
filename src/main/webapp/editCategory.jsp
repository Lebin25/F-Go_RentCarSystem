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
                                <h2 class="tm-block-title">Chỉnh sửa</h2>
                            </div>
                        </div>
                        <form action="edit_category" method="post" class="tm-edit-product-form" enctype="multipart/form-data">
                            <div class="row tm-edit-product-row">
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group mb-3">
                                        <label for="id">ID
                                        </label>
                                        <input name="id" type="text" class="form-control validate" value="${edit.categoryId}" required readonly />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="catename">Tên loại xe
                                        </label>
                                        <input id="catename" name="catename" type="text" class="form-control validate" value="${edit.categoryName}" required />
                                    </div>

                                    <div class="form-group mb-3">
                                        
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                    <!--                                <div class="tm-product-img-dummy mx-auto">
                                                                        <i class="fa fa-cloud-upload tm-upload-icon"
                                                                           onclick="document.getElementById('fileInput').click();"></i>
                                                                    </div>-->
                                    <!--                                <div class="custom-file mt-3 mb-3">
                                                                        <input name="image" id="fileInput" type="file" />
                                                                        <input name="image" type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE"
                                                                               onclick="document.getElementById('fileInput').click();" />
                                                                    </div>-->
                                    <div class="form-group mb-3">
                                        <label>Hình Ảnh</label>
                                        <input name="image" type="file" class="form-control" required>
                                    </div>
                                    
                                    
                                </div> 
                            </div>
                            <div class="row justify-content-center">        
                                <div class="col-3 text-center mt-3">
                                    <button type="submit" class="btn btn-primary text-uppercase">Lưu</button>
                                </div>  
                                <div class="col-3 text-center mt-3">
                                    <a href="managecategory" type="button" class="btn btn-back">Trở lại</a>
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
