<%-- 
    Document   : header
    Created on : Feb 22, 2023, 7:18:01 PM
    Author     : rotri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="header">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="HomeServlet">  <img src="./public/images/logo.png" alt="" class="logo" /></a>
            </div>
            <div class="col-md-6">
                <ul class="menu">
                    <li class="menu-item">
                        <a href="HomeServlet">Home</a> 
                    </li>
                    <li class="menu-item">
                        <a href="CartServlet">Shop</a> 
                    </li>
                    <li class="menu-item">
                        <a href="">Blog</a> 
                    </li>
                    <li class="menu-item">
                        <a href="">Page</a> 
                    </li>
                    <li class="menu-item">
                        <a href="">About Us</a> 
                    </li>
                    <li class="menu-item">
                        <a href="">Contact Us</a> 
                    </li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="menu-ct">
                    <c:if test="${sessionScope.user != null}">
                        <li class="menu-ct-item">
                            <a href="LogoutServlet">Logout</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <li class="menu-ct-item">
                            <a href="LoginServlet">Login</a>
                        </li>
                    </c:if>
                    <li class="menu-ct-item">
                        <a href="CartServlet">
                            <i class="fa-solid fa-cart-shopping font-aw"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <form class="form-search" action="SearchServlet">
                    <input class="form-control" type="text" placeholder="Search" name="key"/>
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</header>