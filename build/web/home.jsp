<%-- 
    Document   : home
    Created on : Feb 22, 2023, 7:14:20 PM
    Author     : rotri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>OrFarm</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link rel="stylesheet" href="./public/css/style.css" />
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <%@include file="./inc/banner.jsp" %>
        <section class="category">
            <div class="container">
                <div class="row">
                    <c:forEach items="${categoryList}" var="category">
                        <div class="col-md-2">
                            <div class="category-item">
                                <a href="CategoryServlet?categoryId=${category.id}">
                                    <div class="category-wrap">
                                        <img class="category-img" src="${category.img}" alt="" />
                                        <h3>${category.name}</h3>
                                        <span>05 items</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <section class="product">
            <div class="container">
                <div class="row">
                    <div class="product-title">
                        <span class="product-title-topic">~ Special Product ~</span>
                        <h4 class="product-title-topic2">Weekly Food Offers</h4>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${productList}" var="product">
                        <div class="col-md-2">
                            <a href="ProductDetailServlet?productId=${product.id}">
                                <div class="product-item">
                                    <img class="product-img" src="${product.image}" alt="" />
                                    <div class="product-info">
                                        <p>Some Food</p>
                                        <h4>${product.name}</h4>
                                        <span>${product.price}$</span>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
        </section>
        <section class="offer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="offer-item offer-item1">
                            <span class="offer-item1-1">TOP OFFER</span>
                            <h4 class="offer-item1-2">Eat Green <br> Best For Family</h4>
                            <p>Free Shipping 05km</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="offer-item offer-item2">
                            <span class="offer-item1-3">WEEKENDS DEALS</span>
                            <h4 class="offer-item1-4">Fresh Food <br> Restore Healthy</h4>
                            <p>Free Shipping</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="offer-item offer-item3">
                            <span class="offer-item1-5">TOP SELLER</span>
                            <h3 class="offer-item1-6">Healthy <br> Fresh Free Bread</h3>
                            <p>Limited Time: Online Only!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="./inc/footer.jsp" %>
    </body>

</html>