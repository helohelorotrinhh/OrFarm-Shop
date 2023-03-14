<%-- 
    Document   : cart
    Created on : Feb 27, 2023, 9:51:05 PM
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
        <section class="container">
            <div class="row">
                <table class="order-detail">
                    <thead>
                    <th class="or-th">Images</th>
                    <th class="or-th">Name</th>
                    <th class="or-th">Price</th>
                    <th class="or-th">Quantity</th>
                    <th class="or-th">Total</th>
                    <th class="or-th">Remove</th>
                    </thead>
                    <tbody>
                        <c:forEach items="${cart}" var="orderDetailSession">
                            <tr>
                                <td>
                                    <img class="od-img" src="${orderDetailSession.productImg}" alt="">
                                </td>
                                <td class="text">
                                    ${orderDetailSession.productName}
                                </td>
                                <td class="price">
                                    $ ${orderDetailSession.productPrice}
                                </td>
                                <td class="quantity-hihi">
                                    <form action="CartServlet" method="post" class="quantity-item">
                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                        <input type="hidden" name="action" value="update"/>
                                        <input type="hidden" name="quantity" value="-1"/>
                                        <button type="submit"> - </button>
                                    </form>
                                    <div class="quantity-item">${orderDetailSession.quantity}</div>
                                    <form action="CartServlet" method="post" class="quantity-item">
                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                        <input type="hidden" name="action" value="update"/>
                                        <input type="hidden" name="quantity" value="1"/>
                                        <button type="submit"> + </button>
                                    </form>
                                </td>
                                <td class="price">
                                    $${orderDetailSession.quantity * orderDetailSession.productPrice}
                                </td>
                                <td>
                                    <form action="CartServlet" method="post" class="delete">
                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                        <input type="hidden" name="action" value="delete"/>
                                        <button type="submit" class="fa-solid fa-trash"></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="cart-total">
                <div class="cart-totals">
                    <h5 class="cart-totals-topic">Cart Totals</h5>
                    <ul class="cart-ul">
                        <li class="cart-li">
                            <span class="cart-span">Subtotal:</span>
                            <span>$${total}</span>
                        </li>
                    </ul>
                    <a class="cart-a" href="CheckoutServlet">PROCEED TO CHECKOUT</a>
                </div>
            </div>
        </section>
        <%@include file="./inc/footer.jsp" %>
    </body>

</html>