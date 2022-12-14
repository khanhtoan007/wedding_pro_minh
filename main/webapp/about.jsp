<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">

    <style>
        .open-button {
            background-color: #E47A2E;
            color: white;
            margin-bottom: 100px;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 1;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 80px;
        }

        /* The popup chat - hidden by default */
        .chat-popup {
            display: none;
            position: fixed;
            bottom: 0;
            right: 150px;
            border: 3px solid #f1f1f1;
            z-index: 9;
        }

        /* Add styles to the form container */
        .form-container {
            max-width: 300px;
            padding: 10px;
            background-color: white;
        }

        /* Full-width textarea */
        .form-container textarea {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
            resize: none;
            min-height: 200px;
        }

        /* When the textarea gets focus, do something */
        .form-container textarea:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Set a style for the submit/send button */
        .form-container .btn {
            background-color: #04AA6D;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            margin-bottom: 10px;
            opacity: 0.8;
        }

        /* Add a red background color to the cancel button */
        .form-container .cancel {
            background-color: #818491;
        }

        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
            opacity: 1;
        }
    </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="51">

<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->


<%--About Us--%>
<div class="container-fluid py-5" id="about">
    <div class="container py-5">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-dark mb-3" style="letter-spacing: 3px;">V??? ch??ng t??i</h6>
            <h1 class="font-secondary display-4">Gi???i thi???u v??? ?????i ng?? c???a studio</h1>
            <i class="far fa-heart text-dark "></i>
        </div>
        <div class="row m-0 mb-4 mb-md-0 pb-2 pb-md-0">
            <div class="col-md-6 p-0 text-center text-md-right">
                <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-5">
                    <h3 class="mb-3">Photographer</h3>
                    <p>Ch???p ???nh c?????i kh??ng ch??? gi??p l??u gi??? l???i nh???ng kho???nh kh???c tr???ng ?????i trong h??nh tr??nh t??nh y??u.
                        B??? ???nh c?????i c??n
                        l?? k??? v???t ??i theo b???n v?? ng?????i ???y su???t cu???c ?????i. L???a ch???n ?????a ch??? ch???p ???nh, d???ch v??? tr???n g??i v???a
                        ?????c ????o v???a ti???t ki???m chi ph?? l?? ??u ti??n c???a nhi???u c???p ????i. N???u b???n ??ang t??m ki???m m???t th????ng
                        hi???u ch???p ???nh uy t??n, ch???t l?????ng th?? Kim Tuy???n Bridal l?? m???t trong nh???ng l???a ch???n ho??n h???o
                        nh???t. </p>
                    <!--                    <h3 class="font-secondary font-weight-normal text-muted mb-3"><i-->
                    <!--                            class="fa fa-male text-primary pr-3"></i>Jack</h3>-->
                    <!--                    <div class="position-relative">-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i class="fab fa-twitter"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-facebook-f"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-linkedin-in"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                    </div>-->
                </div>
            </div>
            <div class="col-md-6 p-0" style="min-height: 400px;">
                <img class="position-absolute w-100 h-100" src="img/photographer2.jpg" style="object-fit: cover;">
            </div>
        </div>
        <div class="row m-0">
            <div class="col-md-6 p-0" style="min-height: 400px;">
                <img class="position-absolute w-100 h-100" src="img/makeup.png" style="object-fit: cover;">
            </div>
            <div class="col-md-6 p-0 text-center text-md-left">
                <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-5">
                    <h3 class="mb-3">Make-up</h3>
                    <p>Chuy???n c?????i xin l?? chuy???n c??? ?????i ng?????i, h??n h???t c??c c?? d??u ?????u l?? t??m ??i???m c???a nh???ng bu???i ti???c
                        c?????i, b???i v???y ngo??i vi???c ch??m s??c b???n th??n c???a m??nh th?? vi???c trang ??i???m c?? d??u sao cho xu???t hi???n
                        th???t r???ng r??? v?? xinh ?????p trong l??? c?????i l?? ??i???u ??????ng nhi??n. H??m nay, Kim Tuy???n Bridal h??n h???nh
                        mang ?????n cho b???n b???ng gi?? d???ch v??? trang ??i???m, trang ??i???m c?? d??u ?????m b???o gi??p b???n c?? ???????c g????ng
                        m???t ho??n h???o nh???t trong ng??y tr???ng ?????i c???a m??nh.</p>
                    <!--                    <h3 class="font-secondary font-weight-normal text-muted mb-3"><i-->
                    <!--                            class="fa fa-female text-primary pr-3"></i>Rose</h3>-->
                    <!--                    <div class="position-relative">-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-facebook-f"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-linkedin-in"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                    </div>-->
                </div>
            </div>
        </div>
        <div class="row m-0 mb-4 mb-md-0 pb-2 pb-md-0">
            <div class="col-md-6 p-0 text-center text-md-right">
                <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-5">
                    <h3 class="mb-3">Customer care</h3>
                    <p>BRILLIANT Bridal lu??n mang xu h?????ng v??y c?????i, ch???p ???nh c?????i make up ?????c ????o v?? m???i nh???t ?????n v???i
                        kh??ch h??ng. ?????m b???o qu?? kh??ch h??ng s??? h???u b??? v??y c?????i ?????p nh???t, ???nh c?????i mang phong c??ch ?????y s???c
                        m??u, ch???t ri??ng cho t???ng c???p ????i. Ch??ng t??i h???a h???n mang ?????n cho kh??ch h??ng nh???ng m??n qu?? tuy???t
                        v???i ??? b??? ???nh c?????i tinh t???, ?????c tr??ng ri??ng v???i ??a d???ng s??? l???a ch???n ho??n h???o cho m???t ????m
                        c?????i.</p>
                    <!--                    <h3 class="font-secondary font-weight-normal text-muted mb-3"><i-->
                    <!--                            class="fa fa-male text-primary pr-3"></i>Jack</h3>-->
                    <!--                    <div class="position-relative">-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i class="fab fa-twitter"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-facebook-f"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square mr-1" href="#"><i-->
                    <!--                                class="fab fa-linkedin-in"></i></a>-->
                    <!--                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>-->
                    <!--                    </div>-->
                </div>
            </div>
            <div class="col-md-6 p-0" style="min-height: 400px;">
                <img class="position-absolute w-100 h-100" src="img/customers_care.png" style="object-fit: cover;">
            </div>
        </div>
    </div>
</div>
<%--End About Us--%>

<!-- Event Start -->
<div class="container-fluid py-5" id="event">
    <div class="container py-5">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Event</h6>
            <h1 class="font-secondary display-4">Our Wedding Event</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h5 class="font-weight-normal text-muted mb-3 pb-3">Clita ipsum aliquyam dolor diam dolores elitr
                    nonumy. Rebum sea vero ipsum eirmod tempor kasd. Diam amet lorem erat eos sit lorem elitr justo</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 border-right border-primary">
                <div class="text-center text-md-right mr-md-3 mb-4 mb-md-0">
                    <img class="img-fluid mb-4" src="img/event-1.jpg" alt="">
                    <h4 class="mb-3">The Reception</h4>
                    <p class="mb-2">123 Street, New York, USA</p>
                    <p class="mb-0">12:00AM - 13:00PM</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="text-center text-md-left ml-md-3">
                    <img class="img-fluid mb-4" src="img/event-2.jpg" alt="">
                    <h4 class="mb-3">Wedding Party</h4>
                    <p class="mb-2">123 Street, New York, USA</p>
                    <p class="mb-0">12:00AM - 13:00PM</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Event End -->

<!-- Story Start-----------Content------------>
<div class="container-fluid py-5" id="story">
    <div class="container pt-5 pb-3">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Story</h6>
            <h1 class="font-secondary display-4">Our Love Story</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="container timeline position-relative p-0">
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
        </div>
    </div>
</div>
<!-- Story End -->

<div class="chat-popup" id="myForm">
    <form action="" class="form-container justify-content-center text-center">
        <h4 class="text-center">Chat v???i nh??n vi??n</h4>
        <input id="textMessage" type="text" class="col-sm-12 mb-2"/>
        <input onclick="sendMessage()" value="G???i" type="button" class="btn-primary col-md-4"/>
        <input onclick="sendMessage()" value="K???t n???i" type="button" class="btn-dark col-md-4"/> <br/><br/>
        <textarea id="textAreaMessage" rows="10" cols="40" disabled></textarea>
        <button type="button" class="btn cancel" onclick="closeForm()">????ng chat</button>
    </form>
</div>
<button class="open-button" onclick="openForm()">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
         stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
        <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
    </svg>
</button>

<%--Open chat box script--%>
<script>
    function openForm() {
        document.getElementById("myForm").style.display = "block";
        document.getElementById("myButton").style.display = "none";
    }

    function closeForm() {
        document.getElementById("myForm").style.display = "none";
        document.getElementById("myButton").style.display = "block";
    }
</script>
<%--End open chat box script--%>

<%--Chat box script--%>
<script type="text/javascript">
    var websocket = new WebSocket("ws://localhost:8080/chatRoomServer");
    websocket.onopen = function (message) {
        processOpen(message);
    };
    websocket.onmessage = function (message) {
        processMessage(message);
    };
    websocket.onclose = function (message) {
        processClose(message);
    };
    websocket.onerror = function (message) {
        processError(message);
    };

    function processOpen(message) {
        textAreaMessage.value += "K???t n???i server... \n";
    }

    function processMessage(message) {
        console.log(message);
        textAreaMessage.value += message.data + " \n";
    }

    function processClose(message) {
        textAreaMessage.value += "Ng???t k???t n???i server... \n";
    }

    function processError(message) {
        textAreaMessage.value += "L???i... " + message + " \n";
    }

    function sendMessage() {
        if (typeof websocket != 'undefined' && websocket.readyState == WebSocket.OPEN) {
            websocket.send(textMessage.value);
            textMessage.value = "";
        }
    }
</script>
<%--End chat box script--%>


<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>
<jsp:include page="view/script.jsp"/>
</body>

</html>
