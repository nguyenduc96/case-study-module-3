
<%--
  Created by IntelliJ IDEA.
  User: nguyendangtuananh
  Date: 07/10/2021
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <!-- Basic page needs
	============================================ -->
    <title>Market - Premium Multipurpose HTML5/CSS3 Theme</title>
    <meta charset="utf-8">
    <meta name="keywords" content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business" />
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow" />

    <!-- Mobile specific metas
    ============================================ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicon
    ============================================ -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="viewCusomer/theme/icon/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="viewCusomer/theme/icon/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="viewCusomer/theme/icon/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="viewCusomer/theme/icon/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="viewCusomer/theme/icon/favicon.png">

    <!-- Google web fonts
    ============================================ -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <!-- Libs CSS
	============================================ -->
    <link rel="stylesheet" href="viewCusomer/theme/css/bootstrap/css/bootstrap.min.css">
    <link href="viewCusomer/theme/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="viewCusomer/theme/js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="viewCusomer/theme/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="viewCusomer/theme/css/themecss/lib.css" rel="stylesheet">
    <link href="viewCusomer/theme/js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
    ============================================ -->
    <link href="viewCusomer/theme/css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="viewCusomer/theme/css/themecss/so-categories.css" rel="stylesheet">
    <link href="viewCusomer/theme/css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="viewCusomer/theme/css/footer1.css" rel="stylesheet">
    <link href="viewCusomer/theme/css/header1.css" rel="stylesheet">
    <link id="color_scheme" href="viewCusomer/theme/css/theme.css" rel="stylesheet">

    <link href="viewCusomer/theme/css/responsive.css" rel="stylesheet">



</head>

<body class="res layout-subpage banners-effect-6">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <header id="header" class=" variantleft type_1">
        <!-- Header Top -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="header-top-left form-inline col-sm-6 col-xs-12 compact-hidden">
                        <div class="form-group languages-block ">
                            <form action="#" method="post" enctype="multipart/form-data" id="bt-language">
                                <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <img src="viewCusomer/theme/image/demo/flags/gb.png" alt="English" title="English">
                                    <span class="">English</span>
                                    <span class="fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><img class="image_flag" src="viewCusomer/theme/image/demo/flags/gb.png" alt="English" title="English" /> English </a></li>
                                </ul>
                            </form>
                        </div>

                        <div class="form-group currencies-block">
                            <form action="#" method="post" enctype="multipart/form-data" id="currency">
                                <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <span class="icon icon-credit "></span> US Dollar <span class="fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu btn-xs">
                                    <li> <a href="#">(vnđ) Viet Nam Dong</a></li>
                                    <li> <a href="#">($)&nbsp;US Dollar	</a></li>
                                </ul>
                            </form>
                        </div>
                    </div>
                    <div class="header-top-right collapsed-block text-right  col-sm-6 col-xs-12 compact-hidden">
                        <h5 class="tabBlockTitle visible-xs">More<a class="expander " href="#TabBlock-1"><i class="fa fa-angle-down"></i></a></h5>
                        <div class="tabBlock" id="TabBlock-1">
                            <ul class="top-link list-inline">
                                <li class="account btn-group" id="my_account">
                                    <a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span class="hidden-xs">My Account</span> <span class="fa fa-angle-down "></span></a>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#"><i class="fa fa-pencil-square-o"></i> Log Out</a></li>
                                    </ul>
                                </li>
                                <li class="wishlist"><a href="wishlist.html" id="wishlist-total" class="top-link-wishlist" title="Wish List (2)"><span>Wish List (2)</span></a></li>
                                <li class="checkout"><a href="checkout.html" class="top-link-checkout" title="Checkout"><span >Checkout</span></a></li>
                                <li class="login"><a href="cart.html" title="Shopping Cart"><span >Shopping Cart</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Header Top -->

        <!-- Header center -->
        <div class="header-center left">
            <div class="container">
                <div class="row">
                    <!-- Logo -->
                    <div class="navbar-logo col-md-3 col-sm-12 col-xs-12">
                        <a href="#"><img src="viewCusomer/theme/image/demo/logos/theme_logo.png" title="Your Store" alt="Your Store" /></a>
                    </div>
                    <!-- //end Logo -->

                    <!-- Search -->
                    <div id="sosearchpro" class="col-sm-7 search-pro" style="border-radius: 20px">
                        <form method="GET" action="index.html" >
                            <div id="search0" class="search input-group">
                                <div class="select_category filter_type icon-select">
                                    <select class="no-border" name="category_id">
                                        <option value="0">All Categories</option>
                                    </select>
                                </div>

                                <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="Search" name="search">
                                <span class="input-group-btn">
						<button type="submit" class="button-search btn btn-primary" name="submit_search"><i class="fa fa-search"></i></button>
						</span>
                            </div>
                            <input type="hidden" name="route" value="product/search" />
                        </form>
                    </div>
                    <!-- //end Search -->

                    <!-- Secondary menu -->
                    <div class="col-md-2 col-sm-5 col-xs-12 shopping_cart pull-right">
                        <!--cart-->
                        <div id="cart" class=" btn-group btn-shopping-cart">
                            <a data-loading-text="Loading..." class="top_cart dropdown-toggle" data-toggle="dropdown">
                                <div class="shopcart">
                                    <span class="handle pull-left"></span>
                                    <span class="title">My cart</span>
                                    <p class="text-shopping-cart cart-total-full">2 item(s) - $1,262.00 </p>
                                </div>
                            </a>

                            <ul class="dropdown-menu pull-right shoppingcart-box" role="menu">

                                <li>
                                    <table class="table table-striped">
                                        <tbody>
                                        <tr>
                                            <td class="text-center" style="width:70px">
                                                <a href="product.html"> <img src="viewCusomer/theme/image/demo/shop/product/35.jpg" style="width:70px" alt="Filet Mign" title="Filet Mign" class="preview"> </a>
                                            </td>
                                            <td class="text-left"> <a class="cart_product_name" href="product.html">Filet Mign</a> </td>
                                            <td class="text-center"> x1 </td>
                                            <td class="text-center"> $1,202.00 </td>
                                            <td class="text-right">
                                                <a href="product.html" class="fa fa-edit"></a>
                                            </td>
                                            <td class="text-right">
                                                <a onclick="cart.remove('2');" class="fa fa-times fa-delete"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-center" style="width:70px">
                                                <a href="product.html"> <img src="viewCusomer/theme/image/demo/shop/product/141.jpg" style="width:70px" alt="Canon EOS 5D" title="Canon EOS 5D" class="preview"> </a>
                                            </td>
                                            <td class="text-left"> <a class="cart_product_name" href="product.html">Canon EOS 5D</a> </td>
                                            <td class="text-center"> x1 </td>
                                            <td class="text-center"> $60.00 </td>
                                            <td class="text-right">
                                                <a href="product.html" class="fa fa-edit"></a>
                                            </td>
                                            <td class="text-right">
                                                <a onclick="cart.remove('1');" class="fa fa-times fa-delete"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                                <li>
                                    <div>
                                        <table class="table table-bordered">
                                            <tbody>
                                            <tr>
                                                <td class="text-left"><strong>Sub-Total</strong>
                                                </td>
                                                <td class="text-right">$1,060.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-left"><strong>Eco Tax (-2.00)</strong>
                                                </td>
                                                <td class="text-right">$2.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-left"><strong>VAT (20%)</strong>
                                                </td>
                                                <td class="text-right">$200.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-left"><strong>Total</strong>
                                                </td>
                                                <td class="text-right">$1,262.00</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <p class="text-right"> <a class="btn view-cart" href="cart.html"><i class="fa fa-shopping-cart"></i>View Cart</a>&nbsp;&nbsp;&nbsp; <a class="btn btn-mega checkout-cart" href="checkout.html"><i class="fa fa-share"></i>Checkout</a> </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--//cart-->
                    </div>
                </div>

            </div>
        </div>
        <!-- //Header center -->

        <!-- Header Bottom -->
        <div class="header-bottom">
            <div class="container">
                <div class="row">

                    <div class="sidebar-menu col-md-3 col-sm-6 col-xs-12 ">
                        <div class="responsive so-megamenu ">
                            <div class="so-vertical-menu no-gutter compact-hidden">
                                <nav class="navbar-default">

                                    <div class="container-megamenu vertical  ">

                                        <div id="menuHeading">
                                            <div class="megamenuToogle-wrapper">
                                                <div class="megamenuToogle-pattern">
                                                    <div class="container">
                                                        <div>
                                                            <span></span>
                                                            <span></span>
                                                            <span></span>
                                                        </div>
                                                        All Categories
                                                        <i class="fa pull-right arrow-circle fa-chevron-circle-up"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="navbar-header">
                                            <button type="button" id="show-verticalmenu" data-toggle="collapse" class="navbar-toggle fa fa-list-alt">

                                            </button>
                                            All Categories
                                        </div>
                                        <div class="vertical-wrapper" >
                                            <span id="remove-verticalmenu" class="fa fa-times"></span>
                                            <div class="megamenu-pattern">
                                                <div class="container">
                                                    <ul class="megamenu">
                                                        <c:forEach items="${categories}" var="category">
                                                            <li class="item-vertical style1 with-sub-menu hover">
                                                                <p class="close-menu"></p>
                                                                <a href="/homePage?action=viewByCategory&id=${category.id}" class="clearfix">
                                                                    <img src="viewCusomer/theme/image/theme/icons/2.png" alt="icon">
                                                                    <span>${category.name}</span>
                                                                    <b class="caret"></b>
                                                                </a>
                                                                <div class="sub-menu" data-subwidth="100" >
                                                                    <div class="content" >
                                                                        <div class="row">
                                                                            <div class="col-sm-12">
                                                                                <div class="row">
                                                                                    <c:forEach items="${brands}" var="brand">
                                                                                        <div class="col-md-4 static-menu">
                                                                                            <div class="menu">
                                                                                                <ul>
                                                                                                    <li>
                                                                                                        <a href="/homePage?action=viewByBrand&id=${brand.id}"  class="main-menu">${brand.name}</a>
                                                                                                        <ul>
                                                                                                            <c:forEach items="${products}" var="product">
                                                                                                                <c:if test="${product.brand_id == brand.id}">
                                                                                                                    <c:if test="${product.category_id == category.id}">
                                                                                                                        <li><a href="/homePage?action=detailProduct&id=${product.id}" >${product.name}</a></li>
                                                                                                                    </c:if>
                                                                                                                </c:if>
                                                                                                            </c:forEach>
                                                                                                        </ul>
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </c:forEach>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </c:forEach>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                        </div>

                    </div>

                    <!-- Main menu -->
                    <div class="megamenu-hori header-bottom-right  col-md-9 col-sm-6 col-xs-12 ">
                        <div class="responsive so-megamenu ">
                            <nav class="navbar-default">
                                <div class=" container-megamenu  horizontal">

                                    <div class="navbar-header">
                                        <button type="button" id="show-megamenu" data-toggle="collapse" class="navbar-toggle">
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        Navigation
                                    </div>

                                    <div class="megamenu-wrapper">
                                        <span id="remove-megamenu" class="fa fa-times"></span>
                                        <div class="megamenu-pattern">
                                            <div class="container">
                                                <ul class="megamenu "  data-animationtime="250">
                                                    <li class="with-sub-menu hover">

                                                        <a href="#">Home <b ></b></a>

                                                    </li>
                                                    <li class="with-sub-menu hover">
                                                        <p class="close-menu"></p>
                                                        <a href="#" class="clearfix">
                                                            <strong>APPLE</strong>
                                                            <span class="label"> Hot</span>
                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="sub-menu" style="width: 100%; right: auto;">
                                                            <div class="content" >
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">iPhone</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="category.html">New iPhone 13 Promax </a></li>
                                                                                    <li><a href="category-v2.html">New iPhone 13 Pro </a></li>
                                                                                    <li><a href="category-v2.html">iPhone 12 Promax </a></li>
                                                                                    <li><a href="category-v2.html">iPhone 12 Pro </a></li>

                                                                                </ul>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">iPad</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="product.html">iPad M1 12.9 inch</a></li>
                                                                                    <li><a href="product-v2.html">iPad M1 11 inch</a></li>
                                                                                    <li><a href="product-v3.html">iPad Mini 2020</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">AirPod</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="cart.html">AirPod 2</a></li>
                                                                                    <li><a href="checkout.html">AirPod Pro</a></li>
                                                                                    <li><a href="compare.html">AirPod Max</a></li>


                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Macbook</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="login.html">Macbook Pro M1 13 inch</a></li>
                                                                                    <li><a href="login.html">Macbook Air M1 13 inch</a></li>
                                                                                    <li><a href="login.html">Macbook Pro 16 inch</a></li>
                                                                                    <li><a href="login.html">Macbook Pro 15 inch 2019</a></li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="with-sub-menu hover">
                                                        <p class="close-menu"></p>
                                                        <a href="#" class="clearfix">
                                                            <strong>SAMSUNG</strong>
                                                            <span class="label"> Hot</span>
                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="sub-menu" style="width: 100%; right: auto;">
                                                            <div class="content" >
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">GALAXY</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="category.html"> Galaxy Z Fold3 </a></li>
                                                                                    <li><a href="category.html"> Galaxy A52s  </a></li>
                                                                                    <li><a href="category.html"> Galaxy A52s  </a></li>
                                                                                    <li><a href="category.html"> Galaxy Z Flip  </a></li>


                                                                                </ul>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">GALAXY TAB</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="product.html">Galaxy Tab S7 FE </a></li>
                                                                                    <li><a href="product.html">Galaxy Tab S7 </a></li>
                                                                                    <li><a href="product.html">Galaxy Tab S6 </a></li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">GALAXY WATCH</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="cart.html">GALAXY WATCH 4</a></li>
                                                                                    <li><a href="cart.html">GALAXY WATCH 3</a></li>
                                                                                    <li><a href="cart.html">GALAXY WATCH 2</a></li>



                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="home hover">

                                                        <a href="#">Support <b ></b></a>

                                                    </li>
                                                    <li class="with-sub-menu hover">

                                                        <a href="#">About Us <b ></b></a>

                                                    </li>

                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- //end Main menu -->

                </div>
            </div>

        </div>

        <!-- Navbar switcher -->
        <!-- //end Navbar switcher -->
    </header>
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="breadcrumb">
            <li><a href="#"><i class="fa fa-home"></i></a></li>
            <li><a href="#">Smartphone & Tablets</a></li>
        </ul>

        <div class="row">
            <!--Left Part Start -->
            <aside class="col-sm-4 col-md-3" id="column-left">
                <div class="module menu-category titleLine">
                    <h3 class="modtitle">Categories</h3>
                    <div class="modcontent">
                        <div class="box-category">
                            <ul id="cat_accordion" class="list-group">
                                <c:forEach items="${categories}" var="category">
                                    <li class=""><a href="/homePage?action=viewByCategory&id=${category.id}" class="cutom-parent">${category.name}</a></li>
                                </c:forEach>

                            </ul>
                        </div>


                    </div>
                </div>
<%--                <div class="module latest-product titleLine">--%>
<%--                    <h3 class="modtitle">Latest Product</h3>--%>
<%--                    <div class="modcontent ">--%>
<%--                        <div class="product-latest-item">--%>
<%--                            <div class="media">--%>
<%--                                <div class="media-left">--%>
<%--                                    <a href="#"><img src="image/demo/shop/product/m1.jpg" alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive" style="width: 100px; height: 82px;"></a>--%>
<%--                                </div>--%>
<%--                                <div class="media-body">--%>
<%--                                    <div class="caption">--%>
<%--                                        <h4><a href="#">Sunt Molup</a></h4>--%>

<%--                                        <div class="price">--%>
<%--                                            <span class="price-new">$100.00</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="ratings">--%>
<%--                                            <div class="rating-box">--%>
<%--                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>--%>
<%--                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>--%>
<%--                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>--%>
<%--                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>--%>
<%--                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>


<%--                    </div>--%>

<%--                </div>--%>
<%--                <div class="module">--%>
<%--                    <div class="modcontent clearfix">--%>
<%--                        <div class="banners">--%>
<%--                            <div>--%>
<%--                                <a href="#"><img src="image/demo/cms/left-image-static.png" alt="left-image"></a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
            </aside>
            <!--Left Part End -->

            <!--Middle Part Start-->
            <div id="content" class="col-md-9 col-sm-8">
                <div class="products-category">
                    <div class="category-derc">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="banners">
                                    <div>
                                        <a  href="#"><img src="viewCusomer/theme/image/demo/shop/category/electronic-cat.png" alt="Apple Cinema 30&quot;"><br></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Filters -->
                    <div class="product-filter filters-panel">
                        <div class="row">
                            <div class="col-md-2 visible-lg">
                                <div class="view-mode">
                                    <div class="list-view">
                                        <button class="btn btn-default grid active" data-view="grid" data-toggle="tooltip"  data-original-title="Grid"><i class="fa fa-th"></i></button>
                                        <button class="btn btn-default list" data-view="list" data-toggle="tooltip" data-original-title="List"><i class="fa fa-th-list"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //end Filters -->
                    <!--changed listings-->
                    <div class="products-list row grid">
                        <c:forEach items="${productList}" var="product">
                            <div class="product-layout col-md-4 col-sm-6 col-xs-12 ">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container lazy second_img ">
                                            <a href="/homePage?action=detailProduct&id=${product.id}">
                                                <img src="${product.image}"  style="width: 250px;height: 230px" class="img-responsive" />
                                                <img src="${product.image}"  alt="${product.name}" style="width: 250px;height: 230px" class="img_0 img-responsive" />
                                            </a>
                                        </div>
                                        <!--Sale Label-->
                                        <c:if test="${product.discount_pct > 0}">
                                            <span class="label label-sale">Sale ${product.discount_pct}</span>
                                        </c:if>

                                    </div>


                                    <div class="right-block">
                                        <div class="caption">
                                            <h4><a href="/homePage?action=detailProduct&id=${product.id}">${product.name}</a></h4>
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                </div>
                                            </div>

                                            <div class="price">
                                                <span class="price-new"><ftm:formatNumber value="${product.price - (product.price*product.discount_pct/100)}"></ftm:formatNumber>VND</span>
                                                <c:if test="${product.discount_pct > 0}">
                                                    <span class="price-old"><ftm:formatNumber value="${product.price}"></ftm:formatNumber>VND</span>
                                                    <span class="label label-percent">-${product.discount_pct}%</span>
                                                </c:if>
                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">Add to Cart</span></button>
                                            <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                            <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div><!-- right block -->

                                </div>
                            </div>
                        </c:forEach>
                        <div class="clearfix visible-xs-block"></div>




                    </div>					<!--// End Changed listings-->
                    <!-- Filters -->
                    <!-- //end Filters -->

                </div>

            </div>


        </div>
        <!--Middle Part End-->
    </div>
    <!-- //Main Container -->


    <!-- Footer Container -->
    <footer class="footer-container type_footer1">
        <!-- Footer Top Container -->
        <section class="footer-top">
            <div class="container content">
                <div class="row">
                    <div class="col-sm-6 col-md-3 box-information">
                        <div class="module clearfix">
                            <h3 class="modtitle">Information</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="faq.html">FAQ</a></li>
                                    <li><a href="order-history.html">Order history</a></li>
                                    <li><a href="order-information.html">Order information</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3 box-service">
                        <div class="module clearfix">
                            <h3 class="modtitle">Customer Service</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="contact.html">Contact Us</a></li>
                                    <li><a href="return.html">Returns</a></li>
                                    <li><a href="sitemap.html">Site Map</a></li>
                                    <li><a href="my-account.html">My Account</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3 box-account">
                        <div class="module clearfix">
                            <h3 class="modtitle">My Account</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="#">Brands</a></li>
                                    <li><a href="gift-voucher.html">Gift Vouchers</a></li>
                                    <li><a href="#">Affiliates</a></li>
                                    <li><a href="#">Specials</a></li>
                                    <li><a href="#" target="_blank">Our Blog</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3 collapsed-block ">
                        <div class="module clearfix">
                            <h3 class="modtitle">Contact Us	</h3>
                            <div class="modcontent">
                                <ul class="contact-address">
                                    <li><span class="fa fa-map-marker"></span> My Store, 1st Ly Thai To, Hoan Kiem, Ha Noi, Viet Nam</li>
                                    <li><span class="fa fa-envelope-o"></span> Email: <a href="#"> D2T2@chimney.co.jp</a></li>
                                    <li><span class="fa fa-phone">&nbsp;</span> Phone 1: 0332299607 <br>Phone 2: 0902282626</li>
                                </ul>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </section>
        <!-- /Footer Top Container -->

        <!-- Footer Bottom Container -->
        <div class="footer-bottom-block ">
            <div class=" container">
                <div class="row">
                    <div class="col-sm-5 copyright-text"> © 2016 Market. All Rights Reserved. </div>
                    <div class="col-sm-7">
                        <div class="block-payment text-right"><img src="viewCusomer/image/demo/content/payment.png" alt="payment" title="payment" ></div>
                    </div>
                    <!--Back To Top-->
                    <div class="back-to-top"><i class="fa fa-angle-up"></i><span> Top </span></div>

                </div>
            </div>
        </div>
        <!-- /Footer Bottom Container -->


    </footer>
    <!-- //end Footer Container -->

</div>


<!-- Cpanel Block -->
<div id="sp-cpanel_btn" class="isDown visible-lg">
    <i class="fa fa-cog"></i>
</div>

<!-- Include Libs & Plugins
	============================================ -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="viewCusomer/theme/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/bootstrap.min.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/themejs/libs.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/unveil/jquery.unveil.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/countdown/jquery.countdown.min.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/datetimepicker/moment.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/jquery-ui/jquery-ui.min.js"></script>


<!-- Theme files
============================================ -->


<script type="text/javascript" src="viewCusomer/theme/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/themejs/addtocart.js"></script>
<script type="text/javascript" src="viewCusomer/theme/js/themejs/application.js"></script>
<script type="text/javascript">
// Check if Cookie exists
if($.cookie('display')){
    view = $.cookie('display');
}else{
    view = 'grid';
}
if(view) display(view);
//--></script>
</body>
</html>
