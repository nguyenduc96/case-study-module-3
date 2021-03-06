<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 04/10/2021
  Time: 9:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="../table/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="../table/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="../table/dist/css/adminlte.min.css">


</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="login?action=login"> LOGIN </a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Login to start Website</p>

            <form action="login?action=login" method="post">
                <div class="input-group mb-3">
                    <input type="username" class="form-control" placeholder="User name" name="username">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" placeholder="Password" name="password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <p style="color: red">${message}</p>
                <div class="row">
                    <div class="col-6">
                        <button type="button" class="btn btn-primary btn-block">
                            <a href="login?action=register" style="color:#ffffff;">Register</a>
                        </button>
                    </div>
                    <!-- /.col -->
                    <div class="col-6">
                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            <div>
                <div class="col-4"></div>
                <div class="col-4">

                </div>
                <div class="col-4"></div>
            </div>

            <!-- /.social-auth-links -->

        </div>
        <!-- /.login-card-body -->
    </div>
</div>
</body>
<script src="../table/plugins/jquery/jquery.min.js"></script>
<script src="../table/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../table/dist/js/adminlte.min.js"></script>
</html>
