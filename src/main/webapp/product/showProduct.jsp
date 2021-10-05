<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>$Title$</title>

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
                            <li class="breadcrumb-item active">Product List</li>



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
                        <div class="row">
                            <h3 class="card-title">Danh sách sản phẩm</h3>
                            <form action="/product?action=search" method="post">
                                <input type="text" name="search" value="">
                                <button type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-bordered">
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
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
                        <div class="row">
                            <div id="pagination">
                                <ul class="pagination">
                                    <li class="page-item ${previous}">
                                        <a class="page-link" href="brands?action=page&page=${1}">First</a>
                                    </li>
                                    <li class="page-item ${previous}">
                                        <a class="page-link" href="product?action=page&page=${page-1}">Previous</a>
                                    </li>
                                    <c:forEach begin="1" end="${totalPage}" step="1" var="i">
                                        <c:choose>
                                            <c:when test="${page == 1}">
                                                <li class="page-item active"><a class="page-link " href="product?action=page&page=${i}">${i}</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item"><a class="page-link" href="product?action=page&page=${i}">${i}</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <li class="page-item ${next}">
                                        <a class="page-link" href="product?action=page&page=${page+1}">Next</a>
                                    </li>
                                    <li class="page-item ${next}">
                                        <a class="page-link" href="brands?action=page&page=${totalPage}">Last</a>
                                    </li>
                                </ul>
                            </div>
                            <div style="position: absolute ; right: 30px">
                                <a href="/product?action=create" class="btn btn-primary">Add new</a>
                            </div>
                        </div>
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
<script>
    function confirmDelete(id) {
        let check = confirm("Are you sure to delete?");
        if(check===true) {
            window.location.href = ("product?action=delete&id="+id);
        }
    }
</script>
</body>
</html>







