<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>$Title$</title>--%>

<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">--%>

<%--    <link rel="stylesheet" href="table/plugins/fontawesome-free/css/all.min.css">--%>


<%--    <link rel="stylesheet" href="table/dist/css/adminlte.min.css">--%>



<%--</head>--%>
<%--<body class="hold-transition sidebar-mini">--%>

<%--<div class="wrapper">--%>
<%--    <!-- Navbar -->--%>
<%--    <nav class="main-header navbar navbar-expand navbar-white navbar-light">--%>
<%--        <!-- Left navbar links -->--%>
<%--        <ul class="navbar-nav">--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item d-none d-sm-inline-block">--%>
<%--                <a href="../../index3.html" class="nav-link">Home</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item d-none d-sm-inline-block">--%>
<%--                <a href="#" class="nav-link">Tuỳ chọn </a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <!-- Right navbar links -->--%>
<%--        <ul class="navbar-nav ml-auto">--%>
<%--        </ul>--%>
<%--    </nav>--%>





<%--    <!-- /.navbar -->--%>

<%--    <!-- Main Sidebar Container -->--%>
<%--    <aside class="main-sidebar sidebar-dark-primary elevation-4">--%>
<%--        <!-- Brand Logo -->--%>
<%--        <a href="../../index3.html" class="brand-link">--%>

<%--            <span class="brand-text font-weight-light">LOGO NHÓM 3</span>--%>
<%--        </a>--%>






<%--        <!-- Sidebar -->--%>
<%--        <div class="sidebar">--%>
<%--            <!-- Sidebar user (optional) -->--%>
<%--            <div class="user-panel mt-3 pb-3 mb-3 d-flex">--%>
<%--                <h2 style="color: white;font-weight: 5;text-align: center;"> ADMIN </h2>--%>
<%--            </div>--%>

<%--            <!-- SidebarSearch Form -->--%>
<%--            <div class="form-inline">--%>
<%--                <div class="input-group" data-widget="sidebar-search">--%>
<%--                    <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">--%>
<%--                    <div class="input-group-append">--%>
<%--                        <button class="btn btn-sidebar">--%>
<%--                            <i class="fas fa-search fa-fw"></i>--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <!-- Sidebar Menu -->--%>
<%--            <nav class="mt-2">--%>
<%--                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">--%>
<%--                    <!-- Add icons to the links using the .nav-icon class--%>
<%--                         with font-awesome or any other icon font library -->--%>
<%--                    <li class="nav-item">--%>
<%--                        <a href="#" class="nav-link">--%>
<%--                            <i class="nav-icon fas fa-tachometer-alt"></i>--%>
<%--                            <p>--%>
<%--                                Menu--%>
<%--                                <i class="right fas fa-angle-left"></i>--%>
<%--                            </p>--%>
<%--                        </a>--%>
<%--                        <ul class="nav nav-treeview">--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="/brands" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>List brand</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="/categories" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>List category</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="/product" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Quản lí sản phẩm</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="/product?action=showDeleteProduct" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Sản phẩm đã xoá</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="../../index2.html" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Quản lí order</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="../../index3.html" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Quản lí danh mục</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>

<%--                    <li class="nav-item">--%>
<%--                        <a href="../gallery.html" class="nav-link">--%>
<%--                            <i class="nav-icon far fa-image"></i>--%>
<%--                            <p>--%>
<%--                                Tuỳ chọn--%>
<%--                            </p>--%>
<%--                        </a>--%>
<%--                    </li>--%>

<%--                    <li class="nav-item">--%>
<%--                        <a href="../gallery.html" class="nav-link">--%>
<%--                            <i class="nav-icon far fa-image"></i>--%>
<%--                            <p>--%>
<%--                                thích loại nào thì add không thích thì xoá--%>
<%--                            </p>--%>
<%--                        </a>--%>
<%--                    </li>--%>


<%--                </ul>--%>
<%--            </nav>--%>
<%--            <!-- /.sidebar-menu -->--%>
<%--        </div>--%>
<%--        <!-- /.sidebar -->--%>
<%--    </aside>--%>




<%--    <!-- Content Wrapper. Contains page content -->--%>



<%--    <div class="content-wrapper">--%>


<%--        <section class="content-header">--%>
<%--            <div class="container-fluid">--%>

<%--                <div class="row mb-2">--%>
<%--                    <div class="col-sm-6">--%>
<%--                        <h1> Trang dành cho admin</h1>--%>
<%--                    </div>--%>
<%--                    <div class="col-sm-6">--%>
<%--                        <ol class="breadcrumb float-sm-right">--%>


<%--                            <li class="breadcrumb-item"><a href="#">Home</a></li>--%>
<%--                            <li class="breadcrumb-item active">Product List</li>--%>



<%--                        </ol>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div><!-- /.container-fluid -->--%>
<%--        </section>--%>



<%--        <!-- Main content -->--%>
<%--        <section class="content">--%>
<%--            <div class="container-fluid">--%>

<%--                <div class="card">--%>
<%--                    <div class="card-header">--%>
<%--                        <div class="row">--%>
<%--                            <h3 class="card-title">Danh sách sản phẩm</h3>--%>
<%--                            <form action="/product?action=search" method="post">--%>
<%--                                <input type="text" name="search" value="">--%>
<%--                                <button type="submit">Search</button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /.card-header -->--%>
<%--                    <div class="card-body">--%>
<%--                        <table class="table table-striped">--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th scope="col">Product ID</th>--%>
<%--                                <th scope="col">Product Name</th>--%>
<%--                                <th scope="col">Product Image</th>--%>
<%--                                <th scope="col">Product Quantity</th>--%>
<%--                                <th scope="col">Product Category</th>--%>
<%--                                <th scope="col">Product Brand</th>--%>
<%--                                <th></th>--%>
<%--                                <th></th>--%>
<%--                                <th></th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <c:forEach items="${products}" var="product">--%>
<%--                                <tr>--%>
<%--                                    <td>${product.id}</td>--%>
<%--                                    <td>${product.name}</td>--%>
<%--                                    <td><img src="${product.image}" alt="" width="100px" height="100px"></td>--%>
<%--                                    <td>${product.quantity}</td>--%>
<%--                                    <td>${product.getCategory().getName()}</td>--%>
<%--                                    <td>${product.getBrand().getName()}</td>--%>
<%--                                    <td><a href="product?action=detail&id=${product.id}" class="btn btn-info">View</a></td>--%>
<%--                                    <td><a href="product?action=edit&id=${product.id}" class="btn btn-success">Edit</a></td>--%>
<%--                                    <td><button type="button" class="btn btn-warning" onclick="confirmDelete(${product.id})">Delete</button></td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>

<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                    </div>--%>
<%--                    <!-- /.card-body -->--%>
<%--                    <div class="card-footer clearfix">--%>
<%--                        <div class="row">--%>
<%--                            <div id="pagination">--%>
<%--                                <ul class="pagination">--%>
<%--                                    <li class="page-item ${previous}">--%>
<%--                                        <a class="page-link" href="brands?action=page&page=${1}">First</a>--%>
<%--                                    </li>--%>
<%--                                    <li class="page-item ${previous}">--%>
<%--                                        <a class="page-link" href="product?action=page&page=${page-1}">Previous</a>--%>
<%--                                    </li>--%>
<%--                                    <c:forEach begin="1" end="${totalPage}" step="1" var="i">--%>
<%--                                        <c:choose>--%>
<%--                                            <c:when test="${page == i}">--%>
<%--                                                <li class="page-item active"><a class="page-link " href="product?action=page&page=${i}">${i}</a></li>--%>
<%--                                            </c:when>--%>
<%--                                            <c:otherwise>--%>
<%--                                                <li class="page-item"><a class="page-link" href="product?action=page&page=${i}">${i}</a></li>--%>
<%--                                            </c:otherwise>--%>
<%--                                        </c:choose>--%>
<%--                                    </c:forEach>--%>
<%--                                    <li class="page-item ${next}">--%>
<%--                                        <a class="page-link" href="product?action=page&page=${page+1}">Next</a>--%>
<%--                                    </li>--%>
<%--                                    <li class="page-item ${next}">--%>
<%--                                        <a class="page-link" href="brands?action=page&page=${totalPage}">Last</a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div style="position: absolute ; right: 30px">--%>
<%--                                <a href="/product?action=create" class="btn btn-primary">Add new</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--            </div><!-- /.container-fluid -->--%>
<%--        </section>--%>
<%--        <!-- /.content -->--%>
<%--    </div>--%>
<%--    <!-- /.content-wrapper -->--%>
<%--    <footer class="main-footer">--%>
<%--        <p>Sản phẩm của Tuấn Anh, Đạt, Đức, Tú.</p>--%>
<%--    </footer>--%>

<%--    <!-- Control Sidebar -->--%>
<%--    <aside class="control-sidebar control-sidebar-dark">--%>
<%--        <!-- Control sidebar content goes here -->--%>
<%--    </aside>--%>
<%--    <!-- /.control-sidebar -->--%>
<%--</div>--%>



<%--<script src="table/plugins/jquery/jquery.min.js"></script>--%>
<%--<script src="table/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="table/dist/js/adminlte.min.js"></script>--%>
<%--<script src="table/dist/js/demo.js"></script>--%>
<%--<script>--%>
<%--    function confirmDelete(id) {--%>
<%--        let check = confirm("Are you sure to delete?");--%>
<%--        if(check===true) {--%>
<%--            window.location.href = ("product?action=delete&id="+id);--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>


<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 10/4/2021
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin Page</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">

    <link rel="stylesheet" href="viewAdmin/theme/css/bootstrap.min.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/font-awesome.min.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/owl.carousel.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/owl.theme.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/owl.transitions.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/animate.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/normalize.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/meanmenu.min.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/main.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/morrisviewAdmin/theme/js/morris.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/scrollbar/jquery.mCustomScrollbar.min.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="viewAdmin/theme/css/metisMenu/metisMenu-vertical.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="viewAdmin/theme/css/calendar/fullcalendar.print.min.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/style.css">

    <link rel="stylesheet" href="viewAdmin/theme/css/responsive.css">

    <script src="viewAdmin/theme/js/vendor/modernizr-2.8.3.min.js"></script>

    <style>
        button {
            min-width: 100px;
            border-radius: 15px;
            border: none;
            color: black;
        }
    </style>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header">
            <a href="/admin"><img style="width : 140px; margin: 20px 20px 20px 30px; border-radius: 5px"  class="main-logo" src="viewAdmin/theme/img/lg.png" alt="" /></a>
            <strong><img src="viewAdmin/theme/img/lg.png" alt="" /></strong>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li>
                        <a href="/product" aria-expanded="false">&nbsp;&nbsp;<img src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; Product Manager</a>
                    </li>
                    <li>
                        <a href="/categories" aria-expanded="false"> &nbsp;&nbsp;<img src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; Category Manager</a>
                    </li>
                    <li>
                        <a href="/brands" aria-expanded="false">&nbsp;&nbsp;<img src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; Brand Manager</a>
                    </li>
                    <li>
                        <a href="/users" aria-expanded="false">&nbsp;&nbsp;<img src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; User Manager</a>
                    </li>
                    <li>
                        <a href="/product?action=showDeleteProduct" aria-expanded="false"><img src="viewAdmin/theme/img/logo/delete.png" height="35" width="30"/> Product recycle bin</a>
                    </li>
                    <li>
                        <a href="/categories?ation=listdel" aria-expanded="false"><img src="viewAdmin/theme/img/logo/delete.png" height="35" width="30"/> Category recycle bin</a>
                    </li>
                    <li>
                        <a href="/brands?action=listdel" aria-expanded="false"><img src="viewAdmin/theme/img/logo/delete.png" height="35" width="30"/> Brand  recycle bin </a>
                    </li>
                </ul>
            </nav>
        </div>
    </nav>
</div>

<div class="all-content-wrapper">
    <div class="header-advance-area">
        <div class="header-top-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="header-top-wraper">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="header-top-menu tabl-d-n">
                                        <ul class="nav navbar-nav mai-top-nav">
                                            <button type="button" class="btn btn-custon-rounded-three btn-primary" style="margin: 20px 0 0 30px; border-radius: 25px">
                                                <a style="text-decoration: none; color: #ffffff" href="/admin">Home</a></button>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="header-right-info">
                                        <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                            <li class="nav-item dropdown" style="float: right">
                                                <button type="button" class="btn btn-custon-rounded-three btn-primary"
                                                        style="margin-right: 40px; border-radius: 25px" >
                                                    <a style="text-decoration: none; color: #ffffff" href="/login?action=login">Log out</a></button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="breadcome-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcome-list single-page-breadcome">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div class="breadcome-heading ">
                                        <div class="row">
                                            <form action="/product?action=search" method="post">
                                                <input type="text" name="search" placeholder="Search..." style="height: 36px; width: 220px; margin: 10px 0 0 20px; border-radius: 25px; border: none" value="">
                                                <button type="submit" class="btn btn-custon-rounded-three btn-default" style="border-radius: 25px;margin: 8px 0px 8px 10px; border: none">Search</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <ul class="breadcome-menu" style="margin-right: 50px;margin-top:20px">
                                        <li><a href="/admin" style="text-decoration: none;">Home</a><span class="bread-slash">/</span>
                                        </li>
                                        <li><span class="bread-blod">List product </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="static-table-area mg-t-15">
        <div class="container-fluid" >
            <div class="sparkline8-list" style="color: white">
                <div class="sparkline8-hd">
                    <div class="main-sparkline8-hd">
                        <button type="button" class="btn btn-custon-rounded-three btn-primary" style="border-radius: 30px">
                            <a href="product?action=create" style="color:#ffffff;">Create New Product</a>
                        </button>
                    </div>
                    <div class="main-sparkline8-hd">
                        <p></p>
                    </div>
                </div>
                <div class="sparkline8-graph">
                    <div class="static-table-list">
                        <table class="table" style="color: white">
                            <thead>
                            <tr>
                                <th scope="col">Product ID</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Product Image</th>
                                <th scope="col">Product Quantity</th>
                                <th scope="col">Product Category</th>
                                <th scope="col">Product Brand</th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${products}" var="product">
                                <tr>
                                    <td>${product.id}</td>
                                    <td>${product.name}</td>
                                    <td><img src="${product.image}" alt="" width="100px" height="100px"></td>
                                    <td>${product.quantity}</td>
                                    <td>${product.getCategory().getName()}</td>
                                    <td>${product.getBrand().getName()}</td>
                                    <td><a href="product?action=detail&id=${product.id}" class="btn btn-info">View</a></td>
                                    <td><a href="product?action=edit&id=${product.id}" class="btn btn-success">Edit</a></td>
                                    <td><button type="button" class="btn btn-warning" onclick="confirmDelete(${product.id})">Delete</button></td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item ${previous}">
                                <a class="page-link" href="brands?action=page&page=${1}">First</a>
                            </li>
                            <li class="page-item ${previous}">
                                <a class="page-link" href="brands?action=page&page=${page - 1}">Previous</a>
                            </li>
                            <c:forEach begin="1" end="${totalPage}" step="1" var="i">
                                <c:choose>
                                    <c:when test="${page == 1}">
                                        <li class="page-item ${active}">
                                            <a class="page-link"
                                               href="brands?action=page&page=${i}">${i}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item">
                                            <a class="page-link"
                                               href="brands?action=page&page=${i}">${i}</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <li class="page-item ${next}">
                                <a class="page-link" href="brands?action=page&page=${page + 1}">Next</a>
                            </li>
                            <li class="page-item ${next}">
                                <a class="page-link" href="brands?action=page&page=${totalPage}">Last</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Static Table End -->
</div>

<script>
    function confirmDelete(id) {
        let checkDelete = confirm("Are you sure you want to delete it?");
        if (checkDelete) {
            window.location.href = "product?action=delete&id=" + id;
        }
    }
</script>
<!-- jquery
    ============================================ -->
<script src="viewAdmin/theme/js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="viewAdmin/theme/js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="viewAdmin/theme/js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="viewAdmin/theme/js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="viewAdmin/theme/js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="viewAdmin/theme/js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="viewAdmin/theme/js/jquery.scrollUp.min.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="viewAdmin/theme/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="viewAdmin/theme/js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="viewAdmin/theme/js/metisMenu/metisMenu.min.js"></script>
<script src="viewAdmin/theme/js/metisMenu/metisMenu-active.js"></script>
<!-- peity JS
    ============================================ -->
<script src="viewAdmin/theme/js/peity/jquery.peity.min.js"></script>
<script src="viewAdmin/theme/js/peity/peity-active.js"></script>
<!-- sparkline JS
    ============================================ -->
<script src="viewAdmin/theme/js/sparkline/jquery.sparkline.min.js"></script>
<script src="viewAdmin/theme/js/sparkline/sparkline-active.js"></script>
<!-- tab JS
    ============================================ -->
<script src="viewAdmin/theme/js/tab.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="viewAdmin/theme/js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="viewAdmin/theme/js/main.js"></script>
</body>
</html>





