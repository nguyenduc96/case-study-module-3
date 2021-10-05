<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 04/10/2021
  Time: 11:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
<<<<<<< HEAD
</head>
<body>

</body>
=======

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
                  <a href="brands?action=listdel">List Brand Deleted</a>
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
                  <h3 class="card-title">Danh sách sản phẩm</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table class="table table-bordered">
                    <thead>
                    <tr>
                      <th style="width: 10px">Number</th>
                      <th>Name</th>
                      <th>Quantity</th>
                      <th>Price</th>
                      <th>img</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>1.</td>
                      <td>product 1</td>
                      <td>5</td>
                      <td>100.000</td>
                      <td><img src="" alt=""></td>
                    </tr>
                    
                    </tbody>
                  </table>
                </div>
                <div class="card-footer clearfix">
                  <ul class="pagination pagination-sm m-0 float-right">
                    <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                  </ul>
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
>>>>>>> 536e12136bc0c99f9d048dbc46cbca2ba26f680b
</html>
