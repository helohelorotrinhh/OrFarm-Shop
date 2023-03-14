<%-- 
    Document   : login
    Created on : Feb 27, 2023, 9:53:08 PM
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
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="LoginServlet" method="post">
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <input name="email" type="email" id="form2Example1" class="form-control" />
                            <label class="form-label" for="form2Example1">Email address</label>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <input name="password" type="password" id="form2Example2" class="form-control" />
                            <label class="form-label" for="form2Example2">Password</label>
                        </div>

                        <!-- 2 column grid layout for inline styling -->
                        <div class="row mb-4">
                            <div class="col d-flex justify-content-center">
                                <!-- Checkbox -->
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                                    <label class="form-check-label" for="form2Example31"> Remember me </label>
                                </div>
                            </div>

                            <div class="col">
                                <!-- Simple link -->
                                <a href="#!">Forgot password?</a>
                            </div>
                        </div>

                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>

                        <!-- Register buttons -->
                        <div class="text-center">
                            <p>Not a member? <a href="#!">Register</a></p>
                            <p>or sign up with:</p>
                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-google"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-twitter"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-github"></i>
                            </button>
                        </div>
                    </form>
                </div>
                <div class="col-md-4"></div>
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
        <%@include file="./inc/header.jsp" %>
    </body>
</html>