<%-- 
    Document   : detail
    Created on : Feb 27, 2023, 9:52:36 PM
    Author     : rotri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>OrFarm</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link rel="stylesheet" href="./public/css/style.css">
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <section class="product-detail">
            <div class="container">
                <div class="row">
                    <h3 class="pro-h3">${product.name}</h3>
                    <div class="col-md-6">
                        <img src="${product.image}" alt="">

                    </div>
                    <form class="col-md-6" action="CartServlet" method="post">
                        <input type="hidden" name="action" value="create"/>
                        <input type="hidden" name="quantity" value="1"/>
                        <input type="hidden" name="productId" value="${product.id}"/>
                        <h2>56$</h2>
                        <ul class="pro-ul">
                            <li>Delicious non - dairy cheese sauce</li>
                            <li>Vegan & Allergy friendly</li>
                            <li>Smooth, velvety dairy free cheese sauce</li>
                        </ul>
                        <button type="submit" class="btn-add-cart">ADD TO CART</button>
                    </form>
                </div>
                <div class="row">
                    <div class="product-detail-para">
                        <p>Designed by Puik in 1949 as one of the first models created especially for Carl Hansen & Son, and produced since 1950. The last of a series of chairs wegner designed based on inspiration from antique chinese armchairs. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia eserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, aque ipsa quae ab illo inventore
                            veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                        <img src="./public/images/product-single-1.png" alt="">

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="offer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="offer-item offer-item1">    
                        <span class="offer-item1-1">TOP OFFER</span>
                        <h4 class="offer-item1-2">Eat Green <br> Best For Family</h4>
                        <p>Free Shipping 10km</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="offer-item offer-item2">
                        <span class="offer-item1-3">WEEKENDS DEALS</span>
                        <h4 class="offer-item1-4">Fresh Food <br> Restore Healthy</h4>
                        <p>Free Shipping 10km</p>
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
