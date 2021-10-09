<%--
  Created by IntelliJ IDEA.
  User: nguyendangtuananh
  Date: 09/10/2021
  Time: 00:00
  To change this template use File | Settings | File Templates.
--%>
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
<%--    <div class="container-fluid">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                <div class="logo-pro">--%>
<%--                    <a href="/admin"><img class="main-logo" src="viewAdmin/theme/img/lg-removebg.png" alt="" /></a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
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
                                            <input type="text" placeholder="Search..." style="height: 36px; width: 220px; margin: 10px 0 0 20px; border-radius: 25px; border: none">
                                            <button type="button" class="btn btn-custon-rounded-three btn-default" style="border-radius: 25px;margin: 8px 0px 8px 10px; border: none">Search</button>
                                        </div>
                                   </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <ul class="breadcome-menu" style="margin-right: 50px;margin-top:20px">
                                        <li><a href="#">Home</a> <span class="bread-slash"></span>
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
                        <button type="button" class="btn btn-custon-rounded-three btn-primary" style="border-radius: 25px">Create New Product</button>
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
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mamun</td>
                                <td>Roshid</td>
                                <td>@Facebook</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Suhag</td>
                                <td>Khan</td>
                                <td>@Twitter</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Sakil</td>
                                <td>Shak</td>
                                <td>@Linkedin</td>
                            </tr>
                            </tbody>
                        </table>
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
