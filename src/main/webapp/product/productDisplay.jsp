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
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Menu
                <i class="right fas fa-angle-left"></i>
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
            <h1> Hiển thị sản phẩm -- ghi cho dễ phân biệt </h1>
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

      <div class="card card-solid">
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none">LOWA Men’s Renegade GTX Mid Hiking Boots Review</h3>
              <div class="col-12">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKcIJst8VttjNJ9IJYS5a7V9JPLBLWT3YFKA&usqp=CAU" class="product-image" alt="Product Image">
              </div>
              <div class="col-12 product-image-thumbs">
                <div class="product-image-thumb active"><img src="data:image/jpeg;base64,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" alt="Product Image"></div>
                <div class="product-image-thumb" ><img src="data:image/jpeg;base64,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" alt="Product Image"></div>
                <div class="product-image-thumb" ><img src="data:image/jpeg;base64,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" alt="Product Image"></div>
                <div class="product-image-thumb" ><img src="data:image/jpeg;base64,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" alt="Product Image"></div>
                <div class="product-image-thumb" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKcIJst8VttjNJ9IJYS5a7V9JPLBLWT3YFKA&usqp=CAU" alt="Product Image"></div>
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <h3 class="my-3">LOWA Men’s Renegade GTX Mid Hiking Boots Review</h3>
              <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terr.</p>

              <hr>
              <h4>Available Colors</h4>
              <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-default text-center active">
                  <input type="radio" name="color_option" id="color_option_a1" autocomplete="off" checked>
                  Green
                  <br>
                  <i class="fas fa-circle fa-2x text-green"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a2" autocomplete="off">
                  Blue
                  <br>
                  <i class="fas fa-circle fa-2x text-blue"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a3" autocomplete="off">
                  Purple
                  <br>
                  <i class="fas fa-circle fa-2x text-purple"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a4" autocomplete="off">
                  Red
                  <br>
                  <i class="fas fa-circle fa-2x text-red"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a5" autocomplete="off">
                  Orange
                  <br>
                  <i class="fas fa-circle fa-2x text-orange"></i>
                </label>
              </div>

              <h4 class="mt-3">Size <small>Please select one</small></h4>
              <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b1" autocomplete="off">
                  <span class="text-xl">S</span>
                  <br>
                  Small
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b2" autocomplete="off">
                  <span class="text-xl">M</span>
                  <br>
                  Medium
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b3" autocomplete="off">
                  <span class="text-xl">L</span>
                  <br>
                  Large
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b4" autocomplete="off">
                  <span class="text-xl">XL</span>
                  <br>
                  Xtra-Large
                </label>
              </div>

              <div class="bg-gray py-2 px-3 mt-4">
                <h2 class="mb-0">
                  $80.00
                </h2>
                <h4 class="mt-0">
                  <small>Ex Tax: $80.00 </small>
                </h4>
              </div>

              <div class="mt-4">
                <div class="btn btn-primary btn-lg btn-flat">
                  <i class="fas fa-cart-plus fa-lg mr-2"></i>
                  Add to Cart
                </div>

                <div class="btn btn-default btn-lg btn-flat">
                  <i class="fas fa-heart fa-lg mr-2"></i>
                  Add to Wishlist
                </div>
              </div>

              <div class="mt-4 product-share">
                <a href="#" class="text-gray">
                  <i class="fab fa-facebook-square fa-2x"></i>
                </a>
                <a href="#" class="text-gray">
                  <i class="fab fa-twitter-square fa-2x"></i>
                </a>
                <a href="#" class="text-gray">
                  <i class="fas fa-envelope-square fa-2x"></i>
                </a>
                <a href="#" class="text-gray">
                  <i class="fas fa-rss-square fa-2x"></i>
                </a>
              </div>

            </div>
          </div>
          <div class="row mt-4">
            <nav class="w-100">
              <div class="nav nav-tabs" id="product-tab" role="tablist">
                <a class="nav-item nav-link active" id="product-desc-tab" data-toggle="tab" href="#product-desc" role="tab" aria-controls="product-desc" aria-selected="true">Description</a>
                <a class="nav-item nav-link" id="product-comments-tab" data-toggle="tab" href="#product-comments" role="tab" aria-controls="product-comments" aria-selected="false">Comments</a>
                <a class="nav-item nav-link" id="product-rating-tab" data-toggle="tab" href="#product-rating" role="tab" aria-controls="product-rating" aria-selected="false">Rating</a>
              </div>
            </nav>
            <div class="tab-content p-3" id="nav-tabContent">
              <div class="tab-pane fade show active" id="product-desc" role="tabpanel" aria-labelledby="product-desc-tab"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. </div>
              <div class="tab-pane fade" id="product-comments" role="tabpanel" aria-labelledby="product-comments-tab"> Vivamus rhoncus nisl sed venenatis luctus. Sed condimentum risus ut tortor feugiat laoreet. Suspendisse potenti. Donec et finibus sem, ut commodo lectus. Cras eget neque dignissim, placerat orci interdum, venenatis odio. Nulla turpis elit, consequat eu eros ac, consectetur fringilla urna. Duis gravida ex pulvinar mauris ornare, eget porttitor enim vulputate. Mauris hendrerit, massa nec aliquam cursus, ex elit euismod lorem, vehicula rhoncus nisl dui sit amet eros. Nulla turpis lorem, dignissim a sapien eget, ultrices venenatis dolor. Curabitur vel turpis at magna elementum hendrerit vel id dui. Curabitur a ex ullamcorper, ornare velit vel, tincidunt ipsum. </div>
              <div class="tab-pane fade" id="product-rating" role="tabpanel" aria-labelledby="product-rating-tab"> Cras ut ipsum ornare, aliquam ipsum non, posuere elit. In hac habitasse platea dictumst. Aenean elementum leo augue, id fermentum risus efficitur vel. Nulla iaculis malesuada scelerisque. Praesent vel ipsum felis. Ut molestie, purus aliquam placerat sollicitudin, mi ligula euismod neque, non bibendum nibh neque et erat. Etiam dignissim aliquam ligula, aliquet feugiat nibh rhoncus ut. Aliquam efficitur lacinia lacinia. Morbi ac molestie lectus, vitae hendrerit nisl. Nullam metus odio, malesuada in vehicula at, consectetur nec justo. Quisque suscipit odio velit, at accumsan urna vestibulum a. Proin dictum, urna ut varius consectetur, sapien justo porta lectus, at mollis nisi orci et nulla. Donec pellentesque tortor vel nisl commodo ullamcorper. Donec varius massa at semper posuere. Integer finibus orci vitae vehicula placerat. </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>

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

<script>
  $(document).ready(function() {
    $('.product-image-thumb').on('click', function () {
      var $image_element = $(this).find('img')
      $('.product-image').prop('src', $image_element.attr('src'))
      $('.product-image-thumb.active').removeClass('active')
      $(this).addClass('active')
    })
  })
</script>


</body>

</html>
