<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
    <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
            rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css"
          href="../../../app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/page-auth.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <!-- END: Custom CSS-->
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Trang quản lý</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="LoadServlet">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="content">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="service">Sản phẩm</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                    Welcome, ${NAME}
                </span>
    <div class="mr-1">
        <a class="btn btn-danger" href="LogoutServlet">Đăng xuất</a>
    </div>
</nav>
<div id="app">
    <div>
        <div class="row">
            <div class="card col-md-12">
                <form action="content" method="post" enctype="multipart/form-data">
                    <div class="col-md-6 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Thêm Blog</h4>
                            </div>
                            <div class="card-body">
                                <form action="content" method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="contentname">Tên Content</label>
                                                <input type="text" id="contentname" class="form-control"
                                                       name="contentname" placeholder="Blog Name">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="contenttype">Loại Content</label>
                                                <select class="custom-select" name="contenttype" id="contenttype">
                                                    <option selected>Blog</option>
                                                    <option >Content</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="label">Label</label>
                                                <input type="text" id="label" class="form-control"
                                                       name="label" placeholder="Label">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="secondlable">Second Label</label>
                                                <input type="text" id="secondlable" class="form-control"
                                                       name="secondlable" placeholder="Second Label">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="image">Ảnh</label>
                                                <input v-on:change="onChange($event)" type="file"
                                                       id="image" name="image">
                                                <div class="col-md-12">
                                                    <img hidden="true" id="preview_image"
                                                         style="max-width: 100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea class="form-control" name="description" id="description" rows="3"
                                                          placeholder="Description"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-success row m-1 btn-block">Tạo
                                                BLog</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-12">
                <table class="card table">
                    <thead class="thead-light">
                    <tr>
                        <th class="col-md-1">Tên Content</th>
                        <th class="col-md-1">Loại Content</th>
                        <th class="col-md-1">Label</th>
                        <th class="col-md-1">Label 2</th>
                        <th class="col-md-2">Số Like</th>
                        <th class="col-md-2">Ảnh</th>
                        <th class="col-md-1">Mô tả</th>
                        <th colspan="2">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="i">
                        <tr>
                            <td class="col-md-1">${i.getContentName()}</td>
                            <td class="col-md-1">${i.getContentType()}</td>
                            <td class="col-md-1">${i.getLabel()}</td>
                            <td class="col-md-1">${i.getSecondLabel()}</td>
                            <td class="col-md-1">${i.getLikeHit()}</td>
                            <td class="col-md-1"><a ><img style="max-width: 100%" src="${i.getImage()}"></a></td>
                            <td class="col-md-1">${i.getDescription()}</td>
                            <td class="col-md-2">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6 m-1"><a
                                                href="delete_content?cid=${i.getContentID()}">
                                            <button class="btn btn-danger">Delete</button>
                                        </a></div>
                                        <div class="col-md-6 m-1"><a
                                                href="update_content?cid=${i.getContentID()}">
                                            <button class="btn btn-warning">Update</button>
                                        </a></div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <jsp:include page="view/chatBox.jsp"></jsp:include>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.1.js"
        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.min.js"
        integrity="sha512-0qU9M9jfqPw6FKkPafM3gy2CBAvUWnYVOfNPDYKVuRTel1PrciTj+a9P3loJB+j0QmN2Y0JYQmkBBS8W+mbezg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.7.10/vue.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.1/toastr.min.js"></script>

<script>
    var app = new Vue({
        el: "#app",
        data: {
            file: '',
            cate_data: []
        },
        created() {
            this.get_cate_data()
        },
        methods: {

            onChange: function (e) {
                $("#preview_image").removeAttr('hidden');
                this.file = e.target.files[0];
                console.log(this.file);
                var img = document.getElementById('preview_image');
                var image = document.getElementById('view_image');
                img.src = URL.createObjectURL(this.file);
                image.src = URL.createObjectURL(this.file);
            },
        }
    })
</script>
</body>

</html>