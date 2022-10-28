

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-xl-6 col-lg-6 col-md-6">
            ${detail.categoryName}
            
        </div>
        <div class="col-xl-6 col-lg-6 col-md-6">
            <img src="images/${detail.categoryImg}"/>
        </div>
        <a href="load_to_edit_category?cid=${detail.categoryId}" class="btn">
            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            <span><strong>Chỉnh sửa</strong></span>
        </a>
    </body>
</html>
