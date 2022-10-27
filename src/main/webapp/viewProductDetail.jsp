<%-- 
    Document   : viewProductDetail
    Created on : Oct 27, 2022, 10:22:27 PM
    Author     : Bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-xl-6 col-lg-6 col-md-6">
            ${detail.productName};
            ${detail.productTitle};
            ${detail.price};
            <c:if test="${detail.categoryID == 1}">
                Hyundai
            </c:if>
            <c:if test="${detail.categoryID == 2}">
                VinFast
            </c:if>
            <c:if test="${detail.categoryID == 3}">
                Mazda
            </c:if>
            <c:if test="${detail.categoryID == 4}">
                Toyota
            </c:if>
            <c:if test="${detail.categoryID == 5}">
                Honda
            </c:if>
            ${detail.seat};
            ${detail.gear};
            ${detail.color};
            ${detail.licensePlate};
            ${detail.fuel};
            ${detail.yearRelease};
        </div>
        <div class="col-xl-6 col-lg-6 col-md-6">
            <img src="images/${detail.productImg}"/>
        </div>
        <a href="load_to_edit?pid=${detail.productID}" class="btn">
            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            <span><strong>Chỉnh sửa</strong></span>
        </a>
    </body>
</html>
