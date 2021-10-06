<%--
  Created by IntelliJ IDEA.
  User: dat01
  Date: 10/5/2021
  Time: 2:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>
        <c:out value="${product.name}">
        </c:out>
    </title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="table/plugins/fontawesome-free/css/all.min.css">


    <link rel="stylesheet" href="table/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="../../index3.html" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Tuỳ chọn </a>
            </li>
        </ul>
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
        </ul>
    </nav>





    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="../../index3.html" class="brand-link">

            <span class="brand-text font-weight-light">LOGO NHÓM 3</span>
        </a>






        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <h2 style="color: white;font-weight: 5;text-align: center;"> ADMIN </h2>
            </div>

            <!-- SidebarSearch Form -->
            <div class="form-inline">
                <div class="input-group" data-widget="sidebar-search">
                    <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-sidebar">
                            <i class="fas fa-search fa-fw"></i>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Menu
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="/brands" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>List brand</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/categories" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>List category</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/product" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí sản phẩm</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/product?action=showDeleteProduct" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Sản phẩm đã xoá</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../../index2.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí order</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../../index3.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí danh mục</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="../gallery.html" class="nav-link">
                            <i class="nav-icon far fa-image"></i>
                            <p>
                                Tuỳ chọn
                            </p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="../gallery.html" class="nav-link">
                            <i class="nav-icon far fa-image"></i>
                            <p>
                                thích loại nào thì add không thích thì xoá
                            </p>
                        </a>
                    </li>


                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>




    <!-- Content Wrapper. Contains page content -->



    <div class="content-wrapper">


        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1> Trang dành cho admin</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">


                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="/product">Product List</a></li>
                            <li class="breadcrumb-item active">Product Detail</li>



                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>



        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <img src="${product.image}" alt="" width="200px" height="200px">
                        <p><c:out value="${product.id}"></c:out></p>
                        <p><c:out value="${product.name}"></c:out></p>
                        <p><c:out value="${product.code}"></c:out></p>
                        <p><c:out value="${product.quantity}"></c:out></p>
                        <p><c:out value="${product.price}"></c:out></p>
                        <p><c:out value="${product.discount}"></c:out></p>
                        <p><c:out value="${product.discount_pct}"></c:out></p>
                        <p><c:out value="${product.getCategory().getName()}"></c:out></p>
                        <p><c:out value="${product.getBrand().getName()}"></c:out></p>
                        <p><c:out value="${product.description}"></c:out></p>
                        <p><c:out value="${product.created_at}"></c:out></p>
                        <p><c:out value="${product.updated_at}"></c:out></p>
                    </div>
                    <div class="col">
                        <form action="productdetail?action=edit&id=${productDetail.id}">
                            <p>
                                <label>Image</label>
                                <input type="text" name="image"  value="${productDetail.image}">
                            </p>
                            <p>
                                <label>Screen Tech</label>
                                <input type="text" name="image"  value="${productDetail.screen_tech}">
                            </p>
                            <p>
                                <label>Screen resolution</label>
                                <input type="text" name="image"  value="${productDetail.screen_resolution}">
                            </p>
                            <p>
                                <label>Front Camera</label>
                                <input type="text" name="image"  value="${productDetail.front_camera_tech}">
                            </p>
                            <p>
                                <label>Rear Camera</label>
                                <input type="text" name="image"  value="${productDetail.rear_camera_teach}">
                            </p>
                            <p>
                                <label>Operator System</label>
                                <input type="text" name="image"  value="${productDetail.operator_system}">
                            </p>
                            <p>
                                <label>CPU</label>
                                <input type="text" name="image"  value="${productDetail.cpu}">
                            </p>
                            <p>
                                <label>RAM</label>
                                <input type="text" name="image"  value="${productDetail.ram}">
                            </p>
                            <p>
                                <label>Memory</label>
                                <input type="text" name="image"  value="${productDetail.memory}">
                            </p>
                            <p>
                                <label>Connect</label>
                                <input type="text" name="image"  value="${productDetail.connect}">
                            </p>
                            <p>
                                <label>Pin</label>
                                <input type="text" name="image"  value="${productDetail.pin}">
                            </p>
                            <p>
                                <label>Charge</label>
                                <input type="text" name="image"  value="${productDetail.charge}">
                            </p>
                            <button type="submit">Save</button>
                        </form>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <p>Sản phẩm của Tuấn Anh, Đạt, Đức, Tú.</p>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>


<script src="table/plugins/jquery/jquery.min.js"></script>
<script src="table/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="table/dist/js/adminlte.min.js"></script>
<script src="table/dist/js/demo.js"></script>
</body>
</html>
