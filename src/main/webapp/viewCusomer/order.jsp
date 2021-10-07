<%--
  Created by IntelliJ IDEA.
  User: nguyendangtuananh
  Date: 06/10/2021
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><%--
  Created by IntelliJ IDEA.
  User: nguyendangtuananh
  Date: 06/10/2021
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <title>Check Order</title>

        <meta charset="utf-8">
        <meta name="keywords" content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business" />
        <meta name="author" content="Magentech">
        <meta name="robots" content="index, follow" />

        <!-- Mobile specific metas
        ============================================ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Favicon
        ============================================ -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="theme/icon/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="theme/icon/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="theme/icon/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="theme/icon/apple-touch-icon-57-precomposed.png">
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
        <link href="theme/css/header1.css" rel="stylesheet">
        <link href="theme/css/checkout.css" rel="stylesheet">
        <link id="color_scheme" href="theme/css/theme.css" rel="stylesheet">

        <link href="theme/css/responsive.css" rel="stylesheet">



    </head>
<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <header id="header" class=" variantleft type_1">
        <!-- Header Top -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="header-top-left form-inline col-sm-6 col-xs-12 compact-hidden">
                        <div class="form-group languages-block ">
                            <form action="index.html" method="post" enctype="multipart/form-data" id="bt-language">
                                <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <img src="theme/image/demo/flags/gb.png" alt="English" title="English">
                                    <span class="">English</span>
                                    <span class="fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.html"><img class="image_flag" src="theme/image/demo/flags/gb.png" alt="English" title="English" /> English </a></li>
                                </ul>
                            </form>
                        </div>

                        <div class="form-group currencies-block">
                            <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
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
                                <li class="account" id="my_account">
                                    <a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span >My Account</span> <span class="fa fa-angle-down"></span></a>
                                    <ul class="dropdown-menu ">
                                        <li><a href="register.html"><i class="fa fa-user"></i> Register</a></li>
                                        <li><a href="login.html"><i class="fa fa-pencil-square-o"></i> Login</a></li>
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
                        <a href="index.html"><img src="theme/image/demo/logos/theme_logo.png" title="Your Store" alt="Your Store" /></a>
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
                                                <a href="product.html"> <img src="theme/image/demo/shop/product/35.jpg" style="width:70px" alt="Filet Mign" title="Filet Mign" class="preview"> </a>
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
                                                <a href="product.html"> <img src="theme/image/demo/shop/product/141.jpg" style="width:70px" alt="Canon EOS 5D" title="Canon EOS 5D" class="preview"> </a>
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
            <li><a href="#">Check Order</a></li>

        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h2 class="title">Checkout</h2>
                <div class="so-onepagecheckout ">


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-default no-padding">
                                    <div class="col-sm-6 checkout-shipping-methods">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-truck"></i> Delivery Method</h4>
                                        </div>
                                        <div class="panel-body ">
                                            <p>Please select the preferred shipping method to use on this order.</p>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" checked="checked" name="Free Shipping">
                                                    Free Shipping - $0.00</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="Flat Shipping Rate">
                                                    Flat Shipping Rate - $7.50</label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-sm-6  checkout-payment-methods">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-credit-card"></i> Payment Method</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>Please select the preferred payment method to use on this order.</p>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" checked="checked" name="Cash On Delivery">Cash On Delivery</label>
                                            </div>

                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="Paypal">Paypal</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>





                            <div class="col-sm-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><i class="fa fa-shopping-cart"></i> Shopping cart</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <td class="text-center">Image</td>
                                                    <td class="text-left">Product Name</td>
                                                    <td class="text-left">Quantity</td>
                                                    <td class="text-right">Unit Price</td>
                                                    <td class="text-right">Total</td>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td class="text-center"><a href="product.html"><img width="60px" src="theme/image/demo/shop/product/E4.jpg" alt="Xitefun Causal Wear Fancy Shoes" title="Xitefun Causal Wear Fancy Shoes" class="img-thumbnail"></a></td>
                                                    <td class="text-left"><a href="product.html">Emasa rumas gacem</a></td>
                                                    <td class="text-left"><div class="input-group btn-block" style="min-width: 100px;">
                                                        <input type="text" name="quantity" value="1" size="1" class="form-control">
                                                        <span class="input-group-btn">
										<button type="submit" data-toggle="tooltip" title="Update" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
										<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger" onClick=""><i class="fa fa-times-circle"></i></button>
										</span></div></td>
                                                    <td class="text-right">$114.35</td>
                                                    <td class="text-right">$114.35</td>
                                                </tr>
                                                </tbody>
                                                <tfoot>
                                                <tr>
                                                    <td class="text-right" colspan="4"><strong>Sub-Total:</strong></td>
                                                    <td class="text-right">$93.73</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-right" colspan="4"><strong>Flat Shipping Rate:</strong></td>
                                                    <td class="text-right">$4.69.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-right" colspan="4"><strong>Eco Tax (-2.00):</strong></td>
                                                    <td class="text-right">$3.75.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-right" colspan="4"><strong>VAT (20%):</strong></td>
                                                    <td class="text-right">$19.68</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-right" colspan="4"><strong>Total:</strong></td>
                                                    <td class="text-right">$121.85</td>
                                                </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><i class="fa fa-pencil"></i> Add Comments About Your Order</h4>
                                    </div>
                                    <div class="panel-body">
                                        <textarea rows="4" class="form-control" id="confirm_comment" name="comments"></textarea>
                                        <br>
                                        <label class="control-label" for="confirm_agree">
                                            <input type="checkbox" checked="checked" value="1" required="" class="validate required" id="confirm_agree" name="confirm agree">
                                            <span>I have read and agree to the <a class="agree" href="#"><b>Terms &amp; Conditions</b></a></span> </label>
                                        <div class="buttons">
                                            <div class="pull-right">
                                                <input type="button" class="btn btn-primary" id="button-confirm" value="Confirm Order">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            <!--Middle Part End -->

        </div>
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
                                    <li><span class="fa fa-map-marker"></span> </li>
                                    <li><span class="fa fa-envelope-o"></span> Email: <a href="#"> hananomai-vn2@chimney.co.jp</a></li>
                                    <li><span class="fa fa-phone">&nbsp;</span> Phone 1: 033.2299.607 <br>Phone 2: 090.228.2626</li>
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
                        <div class="block-payment text-right"><img src="theme/image/demo/content/payment.png" alt="payment" title="payment" ></div>
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


<!-- Theme files
============================================ -->


<script type="text/javascript" src="theme/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="theme/js/themejs/addtocart.js"></script>
<script type="text/javascript" src="theme/js/themejs/application.js"></script>

</body>
</html>

<title>check out</title>
</head>
<body>

</body>
</html>
