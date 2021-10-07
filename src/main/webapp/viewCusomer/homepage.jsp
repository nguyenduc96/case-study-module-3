<%--
  Created by IntelliJ IDEA.
  User: nguyendangtuananh
  Date: 06/10/2021
  Time: 08:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
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
    <link rel="shortcut icon" href="theme/icon/favicon.png">

    <!-- Google web fonts
	============================================ -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <!-- Libs CSS
	============================================ -->
    <link rel="stylesheet" href="theme/css/bootstrap/css/bootstrap.min.css">
    <link href="theme/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="theme/js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="theme/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="theme/css/themecss/lib.css" rel="stylesheet">
    <link href="theme/js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
        ============================================ -->
    <link href="theme/css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="theme/css/themecss/so-categories.css" rel="stylesheet">
    <link href="theme/css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="theme/css/footer1.css" rel="stylesheet">
    <link href="theme/css/header2.css" rel="stylesheet">
    <link id="color_scheme" href="theme/css/home2.css" rel="stylesheet">
    <link href="theme/css/responsive.css" rel="stylesheet">

</head>
<body class="common-home res layout-home1">

<div id="wrapper" class="wrapper-full banners-effect-7">



    <!-- Header Container  -->
    <header id="header" class=" variantleft type_2">
        <!-- Header Top -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="header-top-left form-inline col-lg-6 col-md-5 col-sm-6 compact-hidden hidden-sm hidden-xs">
                        <div class="form-group navbar-welcome " >
                            Welcome to market <a href="register.html"><strong>Join Free</strong></a> or <a href="login.html"><strong>Sign in</strong></a>
                        </div>
                    </div>
                    <div class="header-top-right collapsed-block text-right col-lg-6 col-md-7 col-sm-12 col-xs-12 compact-hidden">
                        <h5 class="tabBlockTitle visible-xs">More<a class="expander " href="#TabBlock-1"><i class="fa fa-angle-down"></i></a></h5>
                        <div class="tabBlock" id="TabBlock-1">
                            <ul class="top-link list-inline">
                                <li class="account btn-group" id="my_account">
                                    <a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span class="hidden-xs">My Account</span> <span class="fa fa-angle-down "></span></a>
                                    <ul class="dropdown-menu ">
                                        <li><a href="register.html"><i class="fa fa-user"></i> Register</a></li>
                                        <li><a href="login.html"><i class="fa fa-pencil-square-o"></i> Login</a></li>
                                    </ul>
                                </li>
                                <li class="wishlist"><a href="wishlist.html" id="wishlist-total" class="top-link-wishlist" title="Wish List (2)"><span class="hidden-xs">Wish List (2)</span></a></li>
                                <li class="checkout"><a href="checkout.html" class="top-link-checkout" title="Checkout"><span class="hidden-xs">Checkout</span></a></li>

                            </ul>
                            <div class="form-group languages-block ">
                                <form action="index.html" method="post" enctype="multipart/form-data" id="bt-language">
                                    <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                        <img src="theme/image/demo/flags/gb.png" alt="English" title="English">
                                        <span class="hidden-xs">English</span>
                                        <span class="fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#"><img class="image_flag" src="theme/image/demo/flags/gb.png" alt="English" title="English" /> English </a></li>
                                        <li> <a href="#"> <img class="image_flag" src="theme/image/demo/flags/lb.png" alt="Arabic" title="Arabic" /> Arabic </a> </li>
                                    </ul>
                                </form>
                            </div>

                            <div class="form-group currencies-block">
                                <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                    <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                        <span class="icon icon-credit "></span> US Dollar <span class="fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu btn-xs">
                                        <li> <a href="#">(€)&nbsp;Euro</a></li>
                                        <li> <a href="#">(£)&nbsp;Pounds	</a></li>
                                        <li> <a href="#">($)&nbsp;US Dollar	</a></li>
                                    </ul>
                                </form>
                            </div>
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
                        <a href="index.html"><img src="theme/image/demo/logos/theme_logo.png" title="Your Store" alt="Your Store" /></a>
                    </div>
                    <!-- //end Logo -->

                    <!-- Main Menu -->
                    <div class="megamenu-hori navbar-menu col-lg-7 col-md-7 col-sm-6 col-xs-6">
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
                                                <ul class="megamenu " data-transition="slide" data-animationtime="250">
                                                    <li class="home hover">
                                                        <a href="index.html">Home <b class="caret"></b></a>
                                                        <div class="sub-menu" style="width:100%;" >
                                                            <div class="content" >
                                                                <div class="row">
                                                                    <div class="col-md-15">
                                                                        <a href="index.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-1.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - (Default)</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="home2.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-2.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 2</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="home3.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-3.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 3</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="home4.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-4.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 4</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="home5.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-5.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 5</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="home6.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-6.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 6</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="home7.html" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-7.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 7</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="#" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-8.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout 8</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="#" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/home-rtl.jpg" alt="">
																			<span class="btn btn-default">Read More</span>
																		</span>
                                                                            <h3 class="figcaption">Home page - Layout RTL</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-15">
                                                                        <a href="#" class="image-link">
																		<span class="thumbnail">
																			<img class="img-responsive img-border" src="theme/image/demo/feature/comming-soon.png" alt="">

																		</span>
                                                                            <h3 class="figcaption">Comming soon</h3>
                                                                        </a>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="with-sub-menu hover">
                                                        <p class="close-menu"></p>
                                                        <a href="#" class="clearfix">
                                                            <strong>Features</strong>
                                                            <img class="label-hot" src="theme/image/theme/icons/hot-icon.png" alt="icon items">
                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="sub-menu" style="width: 100%; right: auto;">
                                                            <div class="content" >
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Listing pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="#">Category Page 1 </a></li>
                                                                                    <li><a href="#">Category Page 2</a></li>
                                                                                    <li><a href="#">Category Page 3</a></li>
                                                                                </ul>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Product pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="#">Image size - big</a></li>
                                                                                    <li><a href="#">Image size - medium</a></li>
                                                                                    <li><a href="#">Image size - small</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Shopping pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="#">Shopping Cart Page</a></li>
                                                                                    <li><a href="#">Checkout Page</a></li>
                                                                                    <li><a href="#">Compare Page</a></li>
                                                                                    <li><a href="#">Wishlist Page</a></li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">My Account pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="#">Login Page</a></li>
                                                                                    <li><a href="#">Register Page</a></li>
                                                                                    <li><a href="#">My Account</a></li>
                                                                                    <li><a href="#">Order History</a></li>
                                                                                    <li><a href="#">Order Information</a></li>
                                                                                    <li><a href="#">Product Returns</a></li>
                                                                                    <li><a href="#">Gift Voucher</a></li>
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
                                                            <strong>Pages</strong>
                                                            <img class="label-hot" src="theme/image/theme/icons/hot-icon.png" alt="icon items">
                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="sub-menu" style="width: 40%; ">
                                                            <div class="content" >
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <ul class="row-list">
                                                                            <li><a class="subcategory_item" href="#">FAQ</a></li>

                                                                            <li><a class="subcategory_item" href="#">Site Map</a></li>
                                                                            <li><a class="subcategory_item" href="#">Contact us</a></li>
                                                                            <li><a class="subcategory_item" href="#">Banner Effect</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <ul class="row-list">
                                                                            <li><a class="subcategory_item" href="#">About Us 1</a></li>
                                                                            <li><a class="subcategory_item" href="#">About Us 2</a></li>
                                                                            <li><a class="subcategory_item" href="#">About Us 3</a></li>
                                                                            <li><a class="subcategory_item" href="#">About Us 4</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="with-sub-menu hover">
                                                        <p class="close-menu"></p>
                                                        <a href="#" class="clearfix">
                                                            <strong>Categories</strong>
                                                            <span class="label"></span>
                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="sub-menu" style="width: 100%; display: none;">
                                                            <div class="content">
                                                                <div class="row">
                                                                    <div class="col-sm-12">
                                                                        <div class="row">
                                                                            <div class="col-md-4 img img1">
                                                                                <a href="#"><img src="theme/image/demo/cms/img1.jpg" alt="banner1"></a>
                                                                            </div>
                                                                            <div class="col-md-4 img img2">
                                                                                <a href="#"><img src="theme/image/demo/cms/img2.jpg" alt="banner2"></a>
                                                                            </div>
                                                                            <div class="col-md-4 img img3">
                                                                                <a href="#"><img src="theme/image/demo/cms/img3.jpg" alt="banner3"></a>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <a href="#" class="title-submenu">Automotive</a>
                                                                        <div class="row">
                                                                            <div class="col-md-12 hover-menu">
                                                                                <div class="menu">
                                                                                    <ul>
                                                                                        <li><a href="#"  class="main-menu">Car Alarms and Security</a></li>
                                                                                        <li><a href="#"  class="main-menu">Car Audio &amp; Speakers</a></li>
                                                                                        <li><a href="#"  class="main-menu">Gadgets &amp; Auto Parts</a></li>
                                                                                        <li><a href="#"  class="main-menu">More Car Accessories</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <a href="#" class="title-submenu">Electronics</a>
                                                                        <div class="row">
                                                                            <div class="col-md-12 hover-menu">
                                                                                <div class="menu">
                                                                                    <ul>
                                                                                        <li><a href="#"  class="main-menu">Battereries &amp; Chargers</a></li>
                                                                                        <li><a href="#"  class="main-menu">Headphones, Headsets</a></li>
                                                                                        <li><a href="#"  class="main-menu">Home Audio</a></li>
                                                                                        <li><a href="#"  class="main-menu">Mp3 Players &amp; Accessories</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <a href="#" class="title-submenu">Jewelry &amp; Watches</a>
                                                                        <div class="row">
                                                                            <div class="col-md-12 hover-menu">
                                                                                <div class="menu">
                                                                                    <ul>
                                                                                        <li><a href="#"  class="main-menu">Earings</a></li>
                                                                                        <li><a href="#"  class="main-menu">Wedding Rings</a></li>
                                                                                        <li><a href="#"  class="main-menu">Men Watches</a></li>
                                                                                    </ul>
                                                                                </div>
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
                                                            <strong>Accessories</strong>

                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="sub-menu" style="width: 100%; display: none;">
                                                            <div class="content" style="display: none;">
                                                                <div class="row">
                                                                    <div class="col-md-8">
                                                                        <div class="row">
                                                                            <div class="col-md-6 static-menu">
                                                                                <div class="menu">
                                                                                    <ul>
                                                                                        <li>
                                                                                            <a href="#"  class="main-menu">Automotive</a>
                                                                                            <ul>
                                                                                                <li><a href="#">Car Alarms and Security</a></li>
                                                                                                <li><a href="#" >Car Audio &amp; Speakers</a></li>
                                                                                                <li><a href="3#" >Gadgets &amp; Auto Parts</a></li>
                                                                                            </ul>
                                                                                        </li>
                                                                                        <li>
                                                                                            <a href="#"  class="main-menu">Smartphone &amp; Tablets</a>
                                                                                            <ul>
                                                                                                <li><a href="#" >Accessories for i Pad</a></li>
                                                                                                <li><a href="#" >Apparel</a></li>
                                                                                                <li><a href="#" >Accessories for iPhone</a></li>
                                                                                            </ul>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6 static-menu">
                                                                                <div class="menu">

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <span class="title-submenu">Bestseller</span>
                                                                        <div class="col-sm-12 list-product">
                                                                            <div class="product-thumb">
                                                                                <div class="image pull-left">
                                                                                    <a href="#"><img src="theme/image/demo/shop/product/35.jpg" width="80" alt="Filet Mign" title="Filet Mign" class="img-responsive"></a>
                                                                                </div>
                                                                                <div class="caption">
                                                                                    <h4><a href="#">Filet Mign</a></h4>
                                                                                    <div class="rating-box">
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                    </div>
                                                                                    <p class="price">$1,202.00</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12 list-product">
                                                                            <div class="product-thumb">
                                                                                <div class="image pull-left">
                                                                                    <a href="#"><img src="theme/image/demo/shop/product/W1.jpg" width="80" alt="Dail Lulpa" title="Dail Lulpa" class="img-responsive"></a>
                                                                                </div>
                                                                                <div class="caption">
                                                                                    <h4><a href="#">Dail Lulpa</a></h4>
                                                                                    <div class="rating-box">
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                    </div>
                                                                                    <p class="price">$78.00</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12 list-product">
                                                                            <div class="product-thumb">
                                                                                <div class="image pull-left">
                                                                                    <a href="#"><img src="theme/image/demo/shop/product/141.jpg" width="80" alt="Canon EOS 5D" title="Canon EOS 5D" class="img-responsive"></a>
                                                                                </div>
                                                                                <div class="caption">
                                                                                    <h4><a href="#">Canon EOS 5D</a></h4>

                                                                                    <div class="rating-box">
                                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                                    </div>
                                                                                    <p class="price">
                                                                                        <span class="price-new">$60.00</span>
                                                                                        <span class="price-old">$145.00</span>

                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>


                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- //Main Menu -->

                    <!-- Secondary menu -->
                    <div class="col-md-2 col-sm-6 col-xs-6 shopping_cart pull-right">
                        <!--cart-->
                        <div id="cart" class=" btn-group btn-shopping-cart">
                            <a data-loading-text="Loading..." class="top_cart dropdown-toggle" data-toggle="dropdown">
                                <div class="shopcart">
                                    <span class="handle pull-left"></span>
                                    <span class="title">My cart</span>
                                    <p class="text-shopping-cart cart-total-full">2 item(s) - $1,262.00 </p>
                                </div>
                            </a>

                            <ul class="tab-content content dropdown-menu pull-right shoppingcart-box" role="menu">
                                <li>
                                    <table class="table table-striped">
                                        <tbody>
                                        <tr>
                                            <td class="text-center" style="width:70px">
                                                <a href="#"> <img src="theme/image/demo/shop/product/resize/2.jpg" style="width:70px" alt="Filet Mign" title="Filet Mign" class="preview"> </a>
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
                                                <a href="product.html"> <img src="theme/image/demo/shop/product/resize/3.jpg" style="width:70px" alt="Canon EOS 5D" title="Canon EOS 5D" class="preview"> </a>
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
        <div class="header-bottom compact-hidden">
            <div class="container">
                <div class="row">

                    <div class="sidebar-menu col-md-3 col-sm-6 col-xs-8 ">
                        <div class="responsive so-megamenu ">
                            <div class="so-vertical-menu no-gutter compact-hidden">
                                <nav class="navbar-default">
                                    <div class="container-megamenu vertical open">
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
                                                        <li class="item-vertical style1 with-sub-menu hover">
                                                            <p class="close-menu"></p>
                                                            <a href="#" class="clearfix">
                                                                <img src="theme/image/theme/icons/2.png" alt="icon">
                                                                <span>Mobile Phone</span>
                                                                <b class="caret"></b>
                                                            </a>
                                                            <div class="sub-menu" data-subwidth="100" >
                                                                <div class="content" >
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <div class="row">
                                                                                <div class="col-md-4 static-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#"  class="main-menu">Apple</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" >iPhone 13 ProMax</a></li>
                                                                                                    <li><a href="#" >iPhone 13</a></li>
                                                                                                    <li><a  href="#" >iPhone 12 ProMax</a></li>
                                                                                                    <li><a href="#" >iPhone 12</a></li>
                                                                                                    <li><a href="#" >iPhone 13 Mini</a></li>
                                                                                                    <li><a href="#" >iPhone 13</a></li>
                                                                                                </ul>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#"  class="main-menu">Samsung</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" >Samsung Galaxy Flip Z</a></li>
                                                                                                    <li><a href="#" >Samsung Galaxy S21</a></li>
                                                                                                    <li><a href="#" >Samsung Galaxy Tab S</a></li>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 static-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#"  class="main-menu">OPPO</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" >OPPO Reno 6</a></li>
                                                                                                    <li><a href="#" >OPPO A74</a></li>
                                                                                                </ul>
                                                                                            </li>

                                                                                        </ul>
                                                                                    </div>
                                                                                </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </li>
                                                        <li class="item-vertical with-sub-menu hover">
                                                            <p class="close-menu"></p>
                                                            <a href="#" class="clearfix">
                                                                <span class="label"></span>
                                                                <img src="theme/image/theme/icons/2.png" alt="icon">
                                                                <span>Tablet</span>
                                                                <b class="caret"></b>
                                                            </a>
                                                            <div class="sub-menu" data-subwidth="60" >
                                                                <div class="content">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div class="row">
                                                                                <div class="col-md-12 static-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#" onclick="window.location = '81';" class="main-menu">Apple</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" onclick="window.location = '33_63';">iPad Pro M1 12.9 inch</a></li>
                                                                                                    <li><a href="#" onclick="window.location = '24_64';">iPad Pro M1 11 inch</a></li>
                                                                                                    <li><a href="#" onclick="window.location = '17';">iPad Pro 12.9 inch 2020</a></li>
                                                                                                    <li><a href="#" onclick="window.location = '17';">iPad Pro 11 inch 2020</a></li>
                                                                                                    <li><a href="#" onclick="window.location = '17';">iPad Pro 10.9 inch 2019</a></li>
                                                                                                </ul>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#" onclick="window.location = '18_46';" class="main-menu">SAMSUNG</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" onclick="window.location = '25_28';">SAMSUNG GALAXY TAB S7 FE</a></li>
                                                                                                    <li><a href="#" onclick="window.location = '80';">SAMSUNG GALAXY TAB S7</a></li>
                                                                                                    <li><a href="#" onclick="window.location = '24_66';">SAMSUNG GALAXY TAB S6</a></li>
                                                                                                </ul>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#" onclick="window.location = '25_31';" class="main-menu">Xiaomi</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" onclick="window.location = '57_73';">Xiaomi Pad 5</a></li>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="row banner">
                                                                                <a href="#">
                                                                                    <img src="theme/image/demo/cms/menu_bg2.jpg" alt="banner1">
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item-vertical with-sub-menu hover">
                                                            <p class="close-menu"></p>
                                                            <a href="#" class="clearfix">
                                                                <img src="theme/image/theme/icons/2.png" alt="icon">
                                                                <span>Laptop</span>
                                                                <b class="caret"></b>
                                                            </a>
                                                            <div class="sub-menu" data-subwidth="100" >
                                                                <div class="content" >
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="row">
                                                                                <div class="col-md-4 static-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#" class="main-menu">Apple</a>
                                                                                                <ul>
                                                                                                    <li><a href="#" >Macbook Pro M1</a></li>
                                                                                                    <li><a href="#" >Macbook Air M1</a></li>
                                                                                                    <li><a href="#" >Macbook Pro 16 inch 2019</a></li>
                                                                                                    <li><a href="#" >Macbook Pro 15 inch 2019</a></li>
                                                                                                    <li><a href="#" >Macbook Pro 13 inch 2020</a></li>
                                                                                                    <li><a href="#" >Macbook Air 13 inch 2020</a></li>
                                                                                                </ul>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="24" onclick="window.location = '24';" class="main-menu">Dell</a>
                                                                                                <ul>
                                                                                                    <li>
                                                                                                        <a href="#" >Dell Gaming G3</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >Dell Inspiron</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >Dell XPS i7</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#">Dell XPS i5</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#">Dell Gaming G15</a>
                                                                                                    </li>

                                                                                                </ul>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 static-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#"  class="main-menu">Asus</a>
                                                                                                <ul>
                                                                                                    <li>
                                                                                                        <a href="#">Asus TUF Gaming FX7</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >Asus TUF Gaming FX5</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >Asus ROG G14</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#">Asus Zenbook</a>
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#"  class="main-menu">HP</a>
                                                                                                <ul>
                                                                                                    <li>
                                                                                                        <a href="#" >HP Envy 13</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >HP 340s G7</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >HP Omen 15</a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#" >HP EliteBook</a>
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item-vertical css-menu with-sub-menu hover">
                                                            <p class="close-menu"></p>
                                                            <a href="#" class="clearfix">

                                                                <img src="theme/image/theme/icons/2.png" alt="icon">
                                                                <span>Phụ Kiện</span>
                                                                <b class="caret"></b>
                                                            </a>
                                                            <div class="sub-menu" data-subwidth="30" style="width: 270px; display: none; right: 0px;">
                                                                <div class="content" style="display: none;">
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <div class="row">
                                                                                <div class="col-sm-12 hover-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#" class="main-menu">Ốp Lưng điện thoại</a>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#" class="main-menu">Sạc dự phòng</a>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#" class="main-menu">Thẻ nhớ</a>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#" class="main-menu">Dán màn hình</a>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#" class="main-menu">Phụ kiện Table, Laptop</a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                        </div>

                    </div>

                    <!-- Search -->
                    <div class="header-bottom-right  col-md-9 col-sm-6 col-xs-4 ">
                        <div id="sosearchpro" class="col-sm-7 search-pro">
                            <form method="GET" action="index.html">
                                <div id="search0" class="search input-group">
                                    <div class="select_category filter_type icon-select">
                                        <select class="no-border" name="category_id">
                                            <option value="0">All Categories</option>
                                            <option value="78">Apple</option>
                                            <option value="77">SAMSUNG</option>
                                            <option value="82">OPPO</option>
                                            <option value="82">Xiaomi</option>
                                            <option value="82">Asus</option>
                                            <option value="82">Dell</option>
                                            <option value="82">HP</option>
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
                    </div>
                    <!-- //end Search -->

                </div>
            </div>

        </div>


    </header>
    <!-- //Header Container  -->
    <!-- Block Spotlight1  -->
    <section class="so-spotlight1">
        <div class="container">
            <div class="row">
                <div id="yt_header_right" class="col-lg-offset-3 col-lg-9 col-md-12">
                    <div class="slider-container ">
                        <div id="so-slideshow" >
                            <div class="module">
                                <div class="yt-content-slider yt-content-slider--arrow1"  data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column0="1" data-items_column1="1" data-items_column2="1"  data-items_column3="1" data-items_column4="1" data-arrows="yes" data-pagination="no" data-lazyload="yes" data-loop="no" data-hoverpause="yes">
                                    <div class="yt-content-slide">
                                        <a href="#"><img src="theme/image/product/iphonenew.jpeg" style="width: 1100px;height: 422px" alt="slider1" class="img-responsive"></a>
                                    </div>
                                    <div class="yt-content-slide">
                                        <a href="#"><img src="theme/image/product/applewatch.jpeg" style="width: 1100px;height: 422px" alt="slider2" class="img-responsive"></a>
                                    </div>
                                    <div class="yt-content-slide">
                                        <a href="#"><img src="theme/image/product/ipadbanner.jpeg" style="width: 1100px;height: 422px" alt="slider3" class="img-responsive"></a>
                                    </div>
                                </div>
                                <div class="loadeding"></div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //Block Spotlight1  -->

    <!-- Block Spotlight2  -->
    <section class="so-spotlight2">
        <div class="container">
            <div class="row">
                <div class="news-letter col-md-3 col-sm-12 col-xs-12">
                    <div class="newsletter">
                        <h2>NewsLetter</h2>
                        <p class="page-heading-sub hidden-md hidden-sm"> Please sign up to the Market mailing list to receive updates on new arrivals, special offers and other discount information </p>
                        <form action="#" method="post">
                            <div class="form-group required">
                                <div class="input-box">
                                    <input type="email" name="txtemail" id="txtemail" value="" placeholder="" class="form-control input-lg"> </div>
                                <div class="subcribe">
                                    <button type="submit" class="btn btn-default btn-lg" onclick="return subscribe();">Subscribe</button> <span>Subscribe</span> </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="banner-html  hidden-xs col-md-9 col-sm-12 col-xs-12">
                    <div class="module">
                        <div class="modcontent clearfix">
                            <div class="m-banner">
                                <div class="m-banner-right">
                                    <div class="m-banner2 banners">
                                        <div>
                                            <a href="#"><img src="theme/image/product/banner2.png" style="width: 590px;height: 120px" alt="banner1"></a>
                                        </div>
                                    </div>

                                    <div class="m-banner34">
                                        <div class="m-banner3 banners">
                                            <div>
                                                <a href="#"><img src="theme/image/product/paypal.jpeg" style="width: 290px;height: 120px" alt="banner1"></a>
                                            </div>
                                        </div>
                                        <div class="m-banner4 banners ">
                                            <div>
                                                <a href="#"><img src="theme/image/product/tragop.jpeg" style="width: 290px;height: 120px"  alt="banner1"></a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="m-banner1 banners hidden-xs">
                                    <div>
                                        <a href="#"><img src="theme/image/product/banner4.jpeg" style="width: 270px;height: 250px" alt="banner1"></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //Block Spotlight2  -->

    <!-- Main Container  -->
    <div class="main-container container">

        <div class="row">
            <div id="content" class="col-md-9 col-sm-12 col-xs-12">

                <div class="module tab-slider titleLine">
                    <h3 class="modtitle">Featured Product</h3>
                    <div id="so_listing_tabs_1" class="so-listing-tabs first-load module">
                        <div class="loadeding"></div>
                        <div class="ltabs-wrap">
                            <div class="ltabs-tabs-container"  data-delay="300" data-duration="600" data-effect="starwars" data-ajaxurl="" data-type_source="0" data-lg="3" data-md="2" data-sm="2" data-xs="1"  data-margin="30">
                                <!--Begin Tabs-->
                                <div class="ltabs-tabs-wrap">
                                    <span class="ltabs-tab-selected">Jewelry &amp; Watches	</span> <span class="ltabs-tab-arrow">▼</span>
                                    <div class="item-sub-cat">
                                        <ul class="ltabs-tabs cf">
                                            <li class="ltabs-tab tab-sel" data-category-id="20" data-active-content=".items-category-20"> <span class="ltabs-tab-label"> Hot Deals						</span> </li>

                                        </ul>
                                    </div>
                                </div>
                                <!-- End Tabs-->
                            </div>
                            <div class="ltabs-items-container">
                                <!--Begin Items-->
                                <div class="ltabs-items ltabs-items-selected items-category-20 grid" data-total="10">
                                    <div class="ltabs-items-inner ltabs-slider ">
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/iphone13promax.jpeg" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/iphone13promax.jpeg" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <span class="label label-sale">-15%</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">iPhone 13 Promax</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">32.450.000</span>
                                                            <span class="price-old">34.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/samsung1.jpeg" style="width: 250px;height: 250px"  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/samsung1.jpeg" style="width: 250px;height: 250px"  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--New Label-->
                                                    <span class="label label-new">New</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">SamSung GalaxyZ Flip 3</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">23.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/iphone13.jpeg" style="width: 250px;height: 250px"  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/iphone13.jpeg" style="width: 250px;height: 250px"   alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">iPhone 13</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">24.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/applewatch3.png" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/applewatch3.png" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>

                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Apple Watch Serial 6</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">7.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/macbook.png" style="width: 250px ;height:250px "  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/macbook.png" style="width: 250px ;height:250px "  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>

                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Macbook Air M1 128GB</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">25.900.00</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/ipadpro.png" style="width: 250px;height: 250px"  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/ipadpro.png" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <span class="label label-sale">-15%</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">iPad Pro M1 2021 256Gb</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">38.900.000</span>
                                                            <span class="price-old">41.000.000/span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/airpod.png"  style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/airpod.png" style="width: 250px;height: 250px"  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Airpods Pro</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">5.250.000</span>
                                                            <span class="price-old">5.650.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <div class="ltabs-items items-category-18 grid" data-total="11">
                                    <div class="ltabs-loading"></div>

                                </div>
                                <div class="ltabs-items  items-category-25 grid" data-total="11">
                                    <div class="ltabs-loading"></div>
                                </div>
                            </div>
                            <!--End Items-->

                        </div>

                    </div>
                </div>
                <div class="module">
                    <div class="modcontent clearfix">
                        <div class="banners">
                            <div>
                                <a href="#"><img src="theme/image/product/backtooffice.png" alt="left-image"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="module tab-slider titleLine">
                    <h3 class="modtitle">New Products</h3>
                    <div id="so_listing_tabs_2" class="so-listing-tabs first-load module">
                        <div class="ltabs-wrap">
                            <div class="ltabs-tabs-container"  data-delay="300" data-duration="600" data-effect="starwars" data-ajaxurl="" data-type_source="0" data-lg="3" data-md="2" data-sm="2" data-xs="1"  data-margin="30">
                                <!--Begin Tabs-->
                                <div class="ltabs-tabs-wrap">
                                    <span class="ltabs-tab-selected">Tuaans ANh</span> <span class="ltabs-tab-arrow">▼</span>
                                    <div class="item-sub-cat">
                                        <ul class="ltabs-tabs cf">
                                            <li class="ltabs-tab tab-sel" data-category-id="20" data-active-content=".items-category-20"> <span class="ltabs-tab-label">Jewelry &amp; Watches						</span> </li>
                                            <li class="ltabs-tab " data-category-id="18" data-active-content=".items-category-18"> <span class="ltabs-tab-label">Electronics		</span> </li>
                                            <li class="ltabs-tab " data-category-id="25" data-active-content=".items-category-25"> <span class="ltabs-tab-label">Sports &amp; Outdoors	</span> </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Tabs-->
                            </div>
                            <div class="ltabs-items-container">
                                <!--Begin Items-->
                                <div class="ltabs-items ltabs-items-selected items-category-20 grid" data-total="10">
                                    <div class="ltabs-items-inner ltabs-slider ">

                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img " style="height: 240px">
                                                        <img src="theme/image/product/GalazyTabS7FE.png"  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/GalazyTabS7FE.png"  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>

                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Samsung Galaxy Tab 7</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">13.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img " style="height: 240px">
                                                        <img src="theme/image/product/XiaomiNote9.png" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/XiaomiNote9.png"  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>

                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Xiaomi Note 9 4GB</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">4.400.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/iphone13promax.jpeg" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/iphone13promax.jpeg" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <span class="label label-sale">-10%</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">iPhone 13 Promax</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">32.450.000</span>
                                                            <span class="price-old">34.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/galaxynote22.png" style="width: 270px;height: 240px"  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/galaxynote22.png" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <span class="label label-sale">KM Cực lớn</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Galaxy Note 22</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">29.900.000</span>
                                                            <span class="price-old">34.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/OppoReno6.png" style="width: 270px;height: 240px"  alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/OppoReno6.png" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--New Label-->
                                                    <span class="label label-new">New</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">Oppo Reno 6 Z 5G</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">9.490.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/iphone12.png" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/iphone12.png" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->

                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">iPhone 12 64GB</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">19.000.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>
                                        <div class="ltabs-item product-layout">
                                            <div class="product-item-container">
                                                <div class="left-block">
                                                    <div class="product-image-container second_img ">
                                                        <img src="theme/image/product/iphone13promax.jpeg" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img-responsive" />
                                                        <img src="theme/image/product/iphone13promax.jpeg" style="width: 270px;height: 240px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
                                                    </div>
                                                    <!--Sale Label-->
                                                    <span class="label label-sale">-10%</span>
                                                    <!--full quick view block-->
                                                    <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="quickview.html">  Quickview</a>
                                                    <!--end full quick view block-->
                                                </div>
                                                <div class="right-block">
                                                    <div class="caption">
                                                        <h4><a href="product.html">iPhone 13 Promax</a></h4>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            <span class="price-new">32.450.000</span>
                                                            <span class="price-old">34.900.000</span>
                                                        </div>
                                                    </div>

                                                    <div class="button-group">
                                                        <button class="addToCart" type="button" data-toggle="tooltip" title="Add to Cart" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Compare this Product" onclick="compare.add('42');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div><!-- right block -->
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <div class="ltabs-items items-category-18 grid" data-total="11">
                                    <div class="ltabs-loading"></div>

                                </div>
                                <div class="ltabs-items  items-category-25 grid" data-total="11">
                                    <div class="ltabs-loading"></div>
                                </div>
                            </div>
                            <!--End Items-->


                        </div>

                    </div>
                </div>



            </div>
            <aside class="col-md-3 col-xs-12  content-aside right_column">
                <div class="module latest-product titleLine">
                    <h3 class="modtitle">Latest Product</h3>
                    <div class="modcontent ">
                        <div class="product-latest-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="theme/image/product/sacpin.png" alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive" style="width: 100px; height: 82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Sạc pin iPhone chính hãng</a></h4>

                                        <div class="price">
                                            <span class="price-new">699.000</span>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="product-latest-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="theme/image/product/battery.png" alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive" style="width: 100px; height: 82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Pin dự phòng Akker</a></h4>

                                        <div class="price">
                                            <span class="price-new">499.000</span>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="product-latest-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="theme/image/product/AirPodsMaxApple.png" alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive" style="width: 100px; height: 82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Apple AirPods Max</a></h4>

                                        <div class="price">
                                            <span class="price-new">11.900.00</span>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="product-latest-item transition">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="theme/image/product/airpod2.png" alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive" style="width: 100px; height:82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Apple AirPod 2</a></h4>
                                        <div class="price">
                                            <span class="price-new">3.250.000</span>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                    </div>

                </div>
                <div class="module titleLine">
                    <h3 class="modtitle">Clients say</h3>
                    <div class="modcontent">
                        <div class="block-clientsay block ">

                            <div class="yt-content-slider slider-clients-say"  data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column0="1" data-items_column1="1" data-items_column2="1"  data-items_column3="1" data-items_column4="1" data-arrows="yes" data-pagination="no" data-lazyload="yes" data-loop="no" data-hoverpause="yes">

                                <div class="yt-content-slide">
                                    <div class="client-cont">Tôi đã mua hàng và rất hài lòng về thái độ phục vụ và giá cả cạnh tranh tại đây/</div>
                                    <div class="client-info"><img src="theme/image/product/Hop.jpg" alt="">
                                        <div class="inner">Văn Hợp
                                            <p>Leader VNG</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="yt-content-slide">
                                    <div class="client-cont">Với mạng lưới phủ khắp nội thành Hà Nội tôi đã tham khảo rất nhiều và đặt trọn niềm tin vào Tuấn Anh Mobile</div>
                                    <div class="client-info"><img src="theme/image/product/Quan.jpg" alt="">
                                        <div class="inner">Trọng Quân
                                            <p>Trader Master</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="module">
                    <div class="modcontent clearfix">
                        <div class="banners">
                            <div>
                                <a href="#"><img src="theme/image/team3.png" alt="banner1"></a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="module">
                    <div class="modcontent clearfix">
                        <div class="banners">
                            <div>
                                <a href="#"><img src="theme/image/product/banner6.png" alt="banner1"></a>
                            </div>
                        </div>

                    </div>
                </div>
            </aside>

        </div>
    </div>
    <!-- //Main Container -->
    <!-- Block Spotlight3  -->
    <section class="so-spotlight3">
        <div class="container">
            <div class="row">

            </div>
        </div>
    </section>
    <!-- //Block Spotlight3  -->

    <script type="text/javascript">
        <!--
        var $typeheader = 'header-home2';
        //-->
    </script>

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
                                    <li><span class="fa fa-map-marker"></span> My Company, 42 avenue des Champs Elysées 75000 Paris France</li>
                                    <li><span class="fa fa-envelope-o"></span> Email: <a href="#"> sales@yourcompany.com</a></li>
                                    <li><span class="fa fa-phone">&nbsp;</span> Phone 1: 0123456789 <br>Phone 2: (123) 4567890</li>
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
                    <div class="col-sm-5 copyright-text"> © 2021 Store. All Rights Reserved. </div>
                    <div class="col-sm-7">
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
<!-- Social widgets -->
<section class="social-widgets visible-lg">
    <ul class="items">
        <li class="item item-01 facebook"> <a href="php/facebook.php?account=envato" class="tab-icon"><span class="fa fa-facebook"></span></a>
            <div class="tab-content">
                <div class="title">
                    <h5>FACEBOOK</h5>
                </div>
                <div class="loading">
                    <img src="theme/image/theme/lazy-loader.gif" class="ajaxloader" alt="loader">
                </div>
            </div>
        </li>
        <li class="item item-02 twitter"> <a href="php/twitter.php?account_twitter=envato" class="tab-icon"><span class="fa fa-twitter"></span></a>
            <div class="tab-content">
                <div class="title">
                    <h5>TWITTER FEEDS</h5>
                </div>
                <div class="loading">
                    <img src="theme/image/theme/lazy-loader.gif" class="ajaxloader" alt="loader">
                </div>
            </div>
        </li>
        <li class="item item-03 youtube"> <a href="#" class="tab-icon"><span class="fa fa-youtube"></span></a>
            <div class="tab-content">
                <div class="title">
                    <h5>YouTube</h5>
                </div>
                <div class="loading"> <img src="theme/image/theme/lazy-loader.gif" class="ajaxloader" alt="loader"></div>
            </div>
        </li><div class="product-item-container">
        <div class="left-block">
            <div class="product-image-container second_img ">
                <img src="theme/image/product/GalazyTabS7FE.png" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img-responsive">
                <img src="theme/image/product/GalazyTabS7FE.png" style="width: 250px;height: 250px" alt="Apple Cinema 30&quot;" class="img_0 img-responsive">
            </div>

            <!--full quick view block-->
            <a class="quickview iframe-link visible-lg" data-fancybox-type="iframe" href="quickview.html">  Quickview</a>
            <!--end full quick view block-->
        </div>
        <div class="right-block">
            <div class="caption">
                <h4><a href="product.html">Galaxy Tab S7 FE </a></h4>
                <div class="ratings">
                    <div class="rating-box">
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                    </div>
                </div>

                <div class="price">
                    <span class="price-new">13.990.000</span>
                </div>
            </div>

            <div class="button-group">
                <button class="addToCart" type="button" data-toggle="tooltip" title="" onclick="cart.add('42', '1');" data-original-title="Add to Cart"><i class="fa fa-shopping-cart"></i> <span class="">Add to Cart</span></button>
                <button class="wishlist" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('42');" data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                <button class="compare" type="button" data-toggle="tooltip" title="" onclick="compare.add('42');" data-original-title="Compare this Product"><i class="fa fa-exchange"></i></button>
            </div>
        </div><!-- right block -->
    </div>
    </ul>
</section>	<!-- End Social widgets -->


<!-- Include Libs & Plugins
============================================ -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="theme/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="theme/js/bootstrap.min.js"></script>
<script type="text/javascript" src="theme/js/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="theme/js/themejs/libs.js"></script>
<script type="text/javascript" src="theme/js/unveil/jquery.unveil.js"></script>
<script type="text/javascript" src="theme/js/countdown/jquery.countdown.min.js"></script>
<script type="text/javascript" src="theme/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
<script type="text/javascript" src="theme/js/datetimepicker/moment.js"></script>
<script type="text/javascript" src="theme/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="theme/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="theme/js/modernizr/modernizr-2.6.2.min.js"></script>


<!-- Theme files
============================================ -->
<script type="text/javascript" src="theme/js/themejs/application.js"></script>
<script type="text/javascript" src="theme/js/themejs/homepage.js"></script>
<script type="text/javascript" src="theme/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="theme/js/themejs/addtocart.js"></script>

</body>
</html>
