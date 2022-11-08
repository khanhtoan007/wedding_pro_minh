<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>BRRILIANT WEDDING</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Montserrat:wght@400;600&display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Libraries Stylesheet -->
    <link href="./lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./css/style.css" rel="stylesheet">


    <!--Begin:Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/components.css">
    <!--Begin:Page CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/app-ecommerce.css">
    <jsp:include page="view/header.jsp"></jsp:include>
</head>
<body data-spy="scroll" data-target=".navbar" style="margin-left: -300px" data-offset="20">
<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->


<!-- Services Start-----------Content------------>
<div class="app-content content ecommerce-application">
    <div class="content-wrapper container-xxl p-0">
        <div class="content-detached content-right">
            <div class="content-body">




                <!-- background Overlay when sidebar is shown  starts-->
                <div class="body-content-overlay"></div>
                <!-- background Overlay when sidebar is shown  ends-->

                <!-- E-commerce Search Bar Starts -->
                <section id="ecommerce-searchbar" class="ecommerce-searchbar">
                    <div class="row mt-1">
                        <div class="col-sm-12">
                            <div class="input-group input-group-merge">
                                <input type="text" class="form-control search-product" id="shop-search"
                                       placeholder="Search Product" aria-label="Search..."
                                       aria-describedby="shop-search">
                                <div class="input-group-append">
                                    <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                        height="14" viewBox="0 0 24 24" fill="none"
                                                                        stroke="currentColor" stroke-width="2"
                                                                        stroke-linecap="round" stroke-linejoin="round"
                                                                        class="feather feather-search text-muted"><circle
                                            cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65"
                                                                                 y2="16.65"></line></svg></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- E-commerce Search Bar Ends -->

                <!-- E-commerce Products Starts -->
                <c:forEach items="${c}" var="i">
                    <section id="ecommerce-products" class="list-view">
                    <div class="card ecommerce-card">
                        <div class="item-img text-center">
                            <a href="">
                                <img class="img-fluid card-img-top" src="${i.getImage()}" alt="img-placeholder"></a>
                        </div>
                        <div class="card-body">
                            <div class="item-wrapper">
                                <div class="item-rating">
                                    <ul class="unstyled-list list-inline">
                                        <li class="ratings-list-item"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star filled-star"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></li>
                                        <li class="ratings-list-item"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star filled-star"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></li>
                                        <li class="ratings-list-item"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star filled-star"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></li>
                                        <li class="ratings-list-item"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star filled-star"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></li>
                                        <li class="ratings-list-item"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star unfilled-star"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></li>
                                    </ul>
                                </div>
                                <div>
                                    <h6 class="item-price">${i.getPrice()}</h6>
                                </div>
                            </div>
                            <h6 class="item-name">
                                <a class="text-body" href="app-ecommerce-details.html">${i.getProductName()}</a>
                                 <span class="card-text item-company">Category : <a href="javascript:void(0)" class="company-name">${i.getCategoryName()}</a></span>
                            </h6>
                            <p class="card-text font-medium-3 item-description">
                                ${i.getDescription()}
                            </p>
                        </div>
                        <div class="item-options text-center">
                            <div class="item-wrapper">
                                <div class="item-cost">
                                    <h4 class="item-price">${i.getPrice()}$</h4>
                                </div>
                            </div>
                            <a href="javascript:void(0)" class="btn btn-light btn-wishlist waves-effect waves-float waves-light">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
                                <span>Wishlist</span>
                            </a>
                            <a href="javascript:void(0)" class="btn btn-primary btn-cart waves-effect waves-float waves-light">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                                <span class="add-to-cart">Add to cart</span>
                            </a>
                        </div>
                    </div>
                </section>
                </c:forEach>

                <!-- E-commerce Products Ends -->


                <!-- E-commerce Pagination Starts -->
                <section id="ecommerce-pagination">
                    <div class="row">
                        <div class="col-sm-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center mt-2">
                                    <li class="page-item prev-item"><a class="page-link" href="javascript:void(0);"></a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                    <li class="page-item" aria-current="page"><a class="page-link"
                                                                                 href="javascript:void(0);">4</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">6</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">7</a></li>
                                    <li class="page-item next-item"><a class="page-link" href="javascript:void(0);"></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </section>
                <!-- E-commerce Pagination Ends -->


            </div>
        </div>
    </div>
</div>
<!-- Services End -->

<!-- Scroll to Bottom -->
<i class="fa fa-2x fa-angle-down text-white scroll-to-bottom"></i>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<jsp:include page="view/script.jsp"/>
<!-- VueJS Libraries -->
<script src="app-assets/js/core/app.js"></script>
<script src="app-assets/js/core/app-menu.js"></script>
<script src="app-assets/js/scripts/pages/app-ecommerce.js"></script>
</body>
</html>
