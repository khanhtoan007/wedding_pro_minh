<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="51">
<!-- Navbar Start -->
    <jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->
<!-- Carousel Start -->
    <jsp:include page="view/carousel.jsp"/>
<!-- Carousel End -->
<!-- Video Modal Start -->
    <jsp:include page="view/videohome.jsp"/>
<!-- Video Modal End -->

<!-- Story Start -->
<div class="container-fluid py-5" id="story">
    <div class="container pt-5 pb-3">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Story</h6>
            <h1 class="font-secondary display-4">Our Love Story</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="container timeline position-relative p-0">
            <c:forEach items="list" var="i">
                <div class="row">
                    <div class="col-md-6 text-center text-md-right">
                        <img class="img-fluid mr-md-3" src="img/story-1.jpg" alt="">
                    </div>
                    <div class="col-md-6 text-center text-md-left">
                        <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 ml-md-3">
                            <h4 class="mb-2">First Meet</h4>
                            <p class="text-uppercase mb-2">01 Jan 2050</p>
                            <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                                sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                                stet amet est dolor elitr.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 text-center text-md-right">
                        <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 mr-md-3">
                            <h4 class="mb-2">First Date</h4>
                            <p class="text-uppercase mb-2">01 Jan 2050</p>
                            <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                                sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                                stet amet est dolor elitr.</p>
                        </div>
                    </div>
                    <div class="col-md-6 text-center text-md-left">
                        <img class="img-fluid ml-md-3" src="img/story-2.jpg" alt="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 text-center text-md-right">
                        <img class="img-fluid mr-md-3" src="img/story-3.jpg" alt="">
                    </div>
                    <div class="col-md-6 text-center text-md-left">
                        <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 ml-md-3">
                            <h4 class="mb-2">Proposal</h4>
                            <p class="text-uppercase mb-2">01 Jan 2050</p>
                            <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                                sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                                stet amet est dolor elitr.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 text-center text-md-right">
                        <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 mr-md-3">
                            <h4 class="mb-2">Enagagement</h4>
                            <p class="text-uppercase mb-2">01 Jan 2050</p>
                            <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                                sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                                stet amet est dolor elitr.</p>
                        </div>
                    </div>
                    <div class="col-md-6 text-center text-md-left">
                        <img class="img-fluid ml-md-3" src="img/story-4.jpg" alt="">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Story End -->

<!-- Gallery Start -->
<div class="container-fluid bg-gallery" id="gallery" style="padding: 120px 0; margin: 90px 0;">
    <div class="section-title position-relative text-center" style="margin-bottom: 120px;">
        <h6 class="text-uppercase text-white mb-3" style="letter-spacing: 3px;">Thư viện ảnh</h6>
        <h1 class="display-6 text-white">Những bức ảnh đẹp nhất của chúng tôi</h1>
        <i class="far fa-heart text-white"></i>
    </div>
    <div class="owl-carousel gallery-carousel">
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-3.jpg" alt="">
            <a href="img/gallery-3.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-4.jpg" alt="">
            <a href="img/gallery-4.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-5.jpg" alt="">
            <a href="img/gallery-5.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-7.jpg" alt="">
            <a href="img/gallery-7.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-8.jpg" alt="">
            <a href="img/gallery-8.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
    </div>
</div>
<!-- Gallery End -->

<!-- Footer Start -->
    <jsp:include page="view/footer.jsp"/>
<!-- Footer End -->


<!-- Scroll to Bottom -->
<i class="fa fa-2x fa-angle-down text-white scroll-to-bottom"></i>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<jsp:include page="view/script.jsp"/>
</body>

</html>