<%@ page import="java.util.UUID" %><%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <title>Manage Customer</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
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
                <a class="nav-link active" href="LoadServlet">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Developing.jsp">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="service">Sản phẩm</a>
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
<div class="container">
    <div class="col-md-12 text-center mb-3">
<%--        <c:if action="${search}">--%>
<%--            <h2>ket qua tim kiem</h2>--%>
<%--        </c:if>--%>
<%--        <c:if action !="${search}">--%>
<%--            <h2>Danh sách người dùng</h2>--%>
<%--        </c:if>--%>
        <h2>${action.equals("search") ? "ket qua tim kiem" : "Danh sách người dùng"}</h2>

    </div>
    <div class="row justify-content-center align-items-center">
        <form action="SearchUserServlet" method="post" class="form-inline">
            <input class="form-control" name="fullname" type="search" placeholder="Điền vào tên người dùng.." aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th>Id</th>
            <th>Username</th>
            <th>Fullname</th>
            <th>Email</th>
            <th>Tel</th>
            <th>Confirm Email</th>
            <th>Role</th>
            <th colspan="2">action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="i">
            <tr>
                <td>${i.getId()}</td>
                <td>${i.getUserName()}</td>
                <td>${i.getFullName()}</td>
                <td>${i.getEmail()}</td>
                <td>${i.getTel()}</td>
                <td>${i.isEmail()}</td>
                <td>${i.getRole()}</td>
                <td>
                    <a role="button" class="btn btn-info" href="update?sid=${i.getId()}">Update</a>
                    <a role="button" class="btn btn-danger" href="DeleteControl?sid=${i.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <div class="col-md-12 text-center mb-4">
        <button class="btn btn-success text-warning" data-target="#addForm" data-toggle="modal">Add User</button>
    </div>


    <div class="form-modal-ex">
        <!-- Modal -->
        <div class="modal fade text-left" id="addForm" tabindex="-1" aria-labelledby="myModalLabel33"
             style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel34">Thêm Người dùng</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                        </div>
                        <form action="AddUser" method="post">
                            <div class="row m-1">
                                <label for="name">Tên tài khoản</label>
                                <input type="text" id="name" name="username" class="form-control" placeholder="name">
                            </div>
                            <div class="row m-1">
                                <label for="price">Mật khẩu</label>
                                <input type="password" class="form-control" name="password" id="price" placeholder="password">
                            </div>
                            <div class="row m-1">
                                <label>Họ tên Người dùng</label>
                                <input type="text" class="form-control" name="fullname" placeholder="fullname">
                            </div>
                            <div class="row m-1">
                                <label for="description">Email</label>
                                <input name="email" type="text" class="form-control" id="description"
                                       placeholder="email">
                            </div>
                            <div class="row m-1">
                                <label for="description">Số điện thoại</label>
                                <input name="tel" type="text" class="form-control"
                                       placeholder="tel">
                            </div>
                            <button type="submit" class="btn btn-success">create</button>
                            <a class="btn btn-warning" href="LoadServlet">Back to Manage User</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="../../../app-assets/vendors/js/vendors.min.js"></script>
<script src="../../../app-assets/js/core/app-menu.js"></script>
<script src="../../../app-assets/js/core/app.js"></script>
<script src="../../../app-assets/js/scripts/forms/form-tooltip-valid.js"></script>
</body>
</html>
