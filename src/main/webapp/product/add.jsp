<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 04/10/2021
  Time: 4:43 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="../table/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="../table/dist/css/adminlte.min.css">

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

            <span class="brand-text font-weight-light">

            </span>
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

                            <p>
                                <img style="width: 20px;height: 20px;border: 1px solid white;border-radius: 5px" src="data:image/png;base64,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"/>
                                &nbsp;
                                Menu

                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../../index.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>menu 1</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../../index2.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>menu 2</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../../index3.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>menu 3</p>
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
                        <h1> Thêm mới sản phẩm </h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">


                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Create new product</li>



                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>



        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">


                <div class="card-body">
                    <div class="form-group">
                        <label for="inputName">Product Name</label>
                        <input type="text" id="inputName" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="inputName" >Price </label>
                        <input type="text" id="price" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="inputDescription"> Note </label>
                        <textarea id="inputDescription" class="form-control" rows="4"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="inputStatus">isActive</label>
                        <select id="inputStatus" class="form-control custom-select">
                            <option selected disabled>Select one</option>
                            <option>True</option>
                            <option>False</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="inputClientCompany">Product Company</label>
                        <input type="text" id="inputClientCompany" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="inputProjectLeader">Category</label>
                        <input type="text" id="inputProjectLeader" class="form-control">
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <a href="#" class="btn btn-secondary">Cancel</a>
                        <input type="submit" value="Create new Porject" class="btn btn-success float-right">
                    </div>
                </div>






            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <p> Sản phẩm của Tuấn Anh ,  Đạt , Đức , Tú . </p>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>



<script src="../table/plugins/jquery/jquery.min.js"></script>
<script src="../table/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../table/dist/js/adminlte.min.js"></script>
<script src="../table/dist/js/demo.js"></script>


</body>

</html>
