
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
        input {
            width: 220px;
            height: 36px;
            border-radius: 10px;
            color: black;
        }

        select, option {
            margin-left: 15px;
            color: black;
            margin-top: 8px;
            min-width: 120px;
            min-height: 30px;
            border-radius: 8px;
            border: none;
        }
    </style>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header">
            <a href="/admin"><img style="width : 140px; margin: 20px 20px 20px 30px; border-radius: 5px"
                                  class="main-logo" src="viewAdmin/theme/img/lg.png" alt=""/></a>
            <strong><img src="viewAdmin/theme/img/lg.png" alt=""/></strong>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li>
                        <a href="/product" aria-expanded="false">&nbsp;&nbsp;<img
                                src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; Product Manager</a>
                    </li>
                    <li>
                        <a href="/categories" aria-expanded="false"> &nbsp;&nbsp;<img
                                src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; Category
                            Manager</a>
                    </li>
                    <li>
                        <a href="/brands" aria-expanded="false">&nbsp;&nbsp;<img
                                src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; Brand
                            Manager</a>
                    </li>
                    <li>
                        <a href="/users" aria-expanded="false">&nbsp;&nbsp;<img
                                src="viewAdmin/theme/img/logo/pngegg.png" height="15" width="15"/>&nbsp; User
                            Manager</a>
                    </li>
                    <li>
                        <a href="/product?action=showDeleteProduct" aria-expanded="false"><img
                                src="viewAdmin/theme/img/logo/delete.png" height="35" width="30"/> Product recycle
                            bin</a>
                    </li>
                    <li>
                        <a href="/categories?ation=listdel" aria-expanded="false"><img
                                src="viewAdmin/theme/img/logo/delete.png" height="35" width="30"/> Category recycle bin</a>
                    </li>
                    <li>
                        <a href="/brands?action=listdel" aria-expanded="false"><img
                                src="viewAdmin/theme/img/logo/delete.png" height="35" width="30"/> Brand recycle bin
                        </a>
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
                                            <button type="button" class="btn btn-custon-rounded-three btn-primary"
                                                    style="margin: 20px 0 0 30px; border-radius: 25px">
                                                <a style="text-decoration: none; color: #ffffff" href="/admin">Home</a>
                                            </button>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="header-right-info">
                                        <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                            <li class="nav-item dropdown" style="float: right">
                                                <button type="button" class="btn btn-custon-rounded-three btn-primary"
                                                        style="margin-right: 40px; border-radius: 25px">
                                                    <a style="text-decoration: none; color: #ffffff"
                                                       href="/login?action=login">Log out</a></button>
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
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <ul class="breadcome-menu" style="margin-right: 50px;margin-top:20px">
                                        <li><a href="/admin">Home</a> <span class="bread-slash">/</span>
                                        </li>
                                        <li><a href="/product">Product list</a> <span class="bread-slash">/</span>
                                        </li>
                                        <li><span class="bread-blod">Edit product</span>
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
        <div class="container-fluid">
            <div class="sparkline8-list" style="color: white">
                <div class="sparkline8-hd">
                    <div class="main-sparkline8-hd">
                        <p></p>
                    </div>
                </div>
                <div class="sparkline8-graph">
                    <div class="static-table-list">
                        <div class="card card-solid">
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
                                                    <c:forEach items="${categories}" var="category">
                                                        <c:choose>
                                                            <c:when test="${category.id==product.category_id}">
                                                                <option value="${category.id}" selected>${category.name}</option>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <option value="${category.id}">${category.name}</option>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col">
                                                <select name="brand_id">
                                                    <c:forEach items="${brands}" var="brand">
                                                        <c:choose>
                                                            <c:when test="${brand.id==product.brand_id}">
                                                                <option value="${brand.id}" selected>${brand.name}</option>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <option value="${brand.id}">${brand.name}</option>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Static Table End -->
</div>

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