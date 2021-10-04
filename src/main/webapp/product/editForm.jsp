<%--
  Created by IntelliJ IDEA.
  User: dat01
  Date: 10/4/2021
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="table/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="table/dist/css/adminlte.min.css">
</head>
<body>
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
                                <a href="/product" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí sản phẩm</p>
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
                            <li class="breadcrumb-item "><a href="/product">Product List</a></li>
                            <li class="breadcrumb-item active">Edit Product</li>



                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>



        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">

                <div class="card">
                    <div class="card-header">
                        <div class="text-center row">
                            <h2>Edit Product</h2>
                        </div>
                        <div class="row">
                            <c:if test="${message!=null}">
                                <c:out value="${message}"></c:out>
                            </c:if>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="product?action=edit&id=${id}" method="post">
                            <div class="mb-3">
                                <label for="product_name" class="form-label">Product Name</label>
                                <input type="text" class="form-control" id="product_name" name="name" value="${product.name}">
                            </div>
                            <div class="mb-3">
                                <label for="product_code" class="form-label">Product Code</label>
                                <input type="text" class="form-control" id="product_code" name="code" value="${product.code}">
                            </div>
                            <div class="mb-3">
                                <label for="product_image" class="form-label">Product Image</label>
                                <input type="text" class="form-control" id="product_image" name="image" value="${product.image}">
                            </div>
                            <div class="mb-3">
                                <label for="product_quantity" class="form-label">Product Quantity</label>
                                <input type="number" class="form-control" id="product_quantity" name="quantity" value="${product.quantity}">
                            </div>
                            <div class="mb-3">
                                <label for="product_price" class="form-label">Product Price</label>
                                <input class="form-control" id="product_price" type="number" name="price" step=".01" value="${product.price}" >
                            </div>
                            <div class="mb-3">
                                <label for="product_discount" class="form-label">Product Discount</label>
                                <input class="form-control" id="product_discount" type="number" name="discount"step=".01" value="${product.discount}" >
                            </div>
                            <div class="mb-3">
                                <label for="product_discount_pct" class="form-label">Product Discount Percent</label>
                                <input class="form-control" id="product_discount_pct" type="number" name="discount_pct" min="0" max="100" value="${product.discount_pct}" >
                            </div>
                            <div class="row">
                                <div class="col">
                                    <select name="category_id" >
                                        <option value="1">Dien thoai</option>
                                        <option value="2">Laptop</option>
                                        <option value="3">May tinh bang</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <select name="brand_id">
                                        <option value="1">SamSung</option>
                                        <option value="2">Iphone</option>
                                        <option value="3">Xiaomi</option>
                                    </select>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="product_description" class="form-label">Product Description</label>
                                <input class="form-control" id="product_description" rows="5" name="description" value="${product.description}">

                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
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
