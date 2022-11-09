<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="loaded" lang="en" data-textdirection="ltr" style="--vh:7.46px;">
<!-- BEGIN: Head-->
<head>
    <jsp:include page="view/header.jsp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="app-assets/images/ico/relationship.png">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
          rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/page-auth.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="pace-done vertical-layout blank-page navbar-floating footer-static menu-hide vertical-overlay-menu"
      data-open="click" data-menu="vertical-menu-modern" data-col="blank-page">
<div><%= request.getAttribute("message") %></div>
<div id="wait_alert" class="alert alert-info" hidden role="alert">Đang tạo tài khoản cho bạn, vui lòng chờ trong ít giây.</div>
<div class="pace pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
<!-- BEGIN: Content-->
<div class="app-content content ">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <div class="auth-wrapper auth-v2">
                <div class="auth-inner row m-0">
                    <!-- Left Text-->
                    <div class="d-none d-lg-flex col-lg-8 align-items-center p-5">
                        <div class="w-100 d-lg-flex align-items-center justify-content-center px-5">
                            <img class="img-fluid" style="max-width: 100%; max-height: 100%" src="img/anhcuoilogin.jpg" alt="Login V2">
                        </div>
                    </div>
                    <!-- /Left Text-->
                    <!-- Login-->
                    <div class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-5 bg-gradient-info">
                        <div class="col-12 col-sm-8 col-md-6 col-lg-12 px-xl-2 mx-auto">
                            <h2 class="card-title font-weight-bold mb-1">Đăng nhập</h2>
                            <form class="auth-login-form mt-2" action="LoginServlet" method="POST"
                                  novalidate="novalidate">
                                <div class="form-group">
                                    <label class="form-label" for="username">Tài khoản</label>
                                    <input class="form-control" id="username" type="text" name="username"
                                           placeholder="Input Username or Email"
                                           aria-describedby="username username-error" autofocus="" tabindex="1"
                                           aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <div class="d-flex justify-content-between">
                                        <label for="login-password">Mật khẩu</label><a
                                            href="ForgotPasswordServlet"><small>Quên mật khẩu?</small></a>
                                    </div>
                                    <div class="input-group input-group-merge form-password-toggle">
                                        <input class="form-control form-control-merge" id="login-password"
                                               type="password" name="password" placeholder="*********"
                                               aria-describedby="login-password" tabindex="2" aria-invalid="false">
                                        <div class="input-group-append"><span class="input-group-text cursor-pointer"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="feather feather-eye"><path
                                                d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12"
                                                                                                                cy="12"
                                                                                                                r="3"></circle></svg></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input class="custom-control-input" id="remember-me" type="checkbox"
                                               tabindex="3">
                                        <label class="custom-control-label" for="remember-me"> Ghi nhớ tôi</label>
                                    </div>
                                </div>
                                <div>
                                    <%= request.getAttribute("MESSAGE") %>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block waves-effect waves-float waves-light"
                                        tabindex="4">Đăng nhập
                                </button>
                            </form>
                            <p class="text-center mt-2"><span>Bạn chưa có tài khoản?</span><a
                                    href="RegisterServlet"><span>&nbsp;Đăng ký</span></a></p>
                            <div class="divider my-2">
                                <div class="divider-text">hoặc đăng nhập bằng</div>
                            </div>
                            <div class="auth-footer-btn d-flex justify-content-center">
                                <a class="btn btn-facebook waves-effect waves-float waves-light"
                                   href="javascript:void(0)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                         stroke-linejoin="round" class="feather feather-facebook">
                                        <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                                    </svg>
                                </a>
                                <a class="btn btn-google waves-effect waves-float waves-light"
                                   href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/AccessGoogle/login-google&response_type=code
    &client_id=352140522561-vpmetjr6bjce1vod9b0cppihhbcgdesh.apps.googleusercontent.com&approval_prompt=force">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                         stroke-linejoin="round" class="feather feather-mail">
                                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                        <polyline points="22,6 12,13 2,6"></polyline>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /Login-->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: Content-->
<!-- BEGIN: Vendor JS-->
<script src="app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->
<!-- BEGIN: Page Vendor JS-->
<script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
<!-- END: Page Vendor JS-->
<!-- BEGIN: Theme JS-->
<script src="app-assets/js/core/app-menu.js"></script>
<script src="app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->
<!-- BEGIN: Page JS-->
<script src="app-assets/js/scripts/pages/page-auth-login.js"></script>
<!-- END: Page JS-->
<script>
    $(window).on('load', function () {
        if (feather) {
            feather.replace({
                width: 14,
                height: 14
            });
        }
    })
</script>
<script>
    $(document).ready(function () {
        $("#register").click(function () {
            console.log(1)
            $("#wait_alert").removeAttr('hidden')
        })
    })
</script>
</body><!-- END: Body-->
</html>