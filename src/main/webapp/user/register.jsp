<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 04/10/2021
  Time: 9:32 CH
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
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="/brands"> D <sup>2</sup> T <sup>2</sup></a>
    </div>

    <div class="card">
        <div class="card-body register-card-body">
            <p class="login-box-msg">Register a new membership</p>

            <form action="users?action=register" method="post">
                <div class="input-group mb-3">
                    <input type="text" id="name" class="form-control" placeholder="User name" name="username"
                           onchange="checkRegister()">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>

                <p id="output_username">${messagename}</p>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" onchange="checkPasswordLength()" placeholder="Password"
                           name="password" id="password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <p id="output_length" style="color:red;"></p>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" onchange="checkPassword()" placeholder="Retype password"
                           name="rePassword" id="rePassword">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <p id="output" style="color:red;"></p>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="First name" id="firstName" name="first_name"
                           onchange="checkRegister()">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <p id="output_firstName"></p>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Last name" id="lastName" name="last_name"
                           onchange="checkRegister()">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <p id="output_lastName"></p>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Number phone" id="phone" name="number_phone"
                           onchange="checkRegister()">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-phone"></span>
                        </div>
                    </div>
                </div>
                <p id="output_phone">${messagephone}</p>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Address" id="address" name="address"
                           onchange="checkRegister()">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-address-book"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="email" class="form-control" placeholder="Email" id="mail" name="email"
                           onchange="checkRegister()">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <p id="output_mail">${messagemail}</p>
                <div class="col-md-12 mb-4 ">
                    <h6 class="mb-2 pb-1">Gender: </h6>
                    <div class="form-check form-check-inline mr-4">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="sex"
                                id="femaleGender"
                                value="Female"
                                checked
                        />
                        <label class="form-check-label" for="femaleGender">Female</label>
                    </div>

                    <div class="form-check form-check-inline mr-4">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="sex"
                                id="maleGender"
                                value="Male"
                        />
                        <label class="form-check-label" for="maleGender">Male</label>
                    </div>

                    <div class="form-check form-check-inline mr-4">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="sex"
                                id="otherGender"
                                value="Other"
                        />
                        <label class="form-check-label" for="otherGender">Other</label>
                    </div>

                </div>

                <div class="input-group mb-3">
                    <input type="date" class="form-control" id="date" name="date_of_birth" onchange="checkRegister()">
                </div>
                <p id="output_date"></p>
                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" id="agreeTerms" name="terms" value="agree" checked="checked">
                            <label for="agreeTerms">
                                I agree to the <a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-4" id="button">
                        <button type="submit" class="btn btn-primary btn-block" disabled>Register</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.form-box -->
    </div><!-- /.card -->
</div>
<script>
    function checkPassword() {
        let password = document.getElementById("password").value;
        let rePassword = document.getElementById("rePassword").value;
        if (password.length < 6 || rePassword.length < 6) {
            document.getElementById("output").innerText = "Password is too short. Phải lớn hơn 6 ký tự";
        }
        if (password !== rePassword) {
            document.getElementById("output").innerText = "*Passwords do not match";
        } else {
            document.getElementById("output").innerText = "";
        }
    }

    function checkPasswordLength() {
        let password = document.getElementById("password").value;
        if (password.length < 6 || password.length > 16) {
            document.getElementById("output_length").innerText = "*Password is too short or long. Password is between 6 - 16 characters";
        } else {
            document.getElementById("output_length").innerText = "";
        }
    }
</script>
<script type="text/javascript">
    function checkRegister() {
        let username = document.getElementById("name").value;
        let usernamePattern = /^[a-zA-Z0-9]{6,18}$/;
        let regexPhone = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        let firstName = document.getElementById("firstName").value;
        let lastName = document.getElementById("lastName").value;
        let date = document.getElementById("date").value;
        let phone = document.getElementById("phone").value;
        let mail = document.getElementById("mail").value;
        if (!usernamePattern.test(username)) {
            document.getElementById("output_username").innerText = "Username is between 6 - 16 characters";
        } else if (!regexPhone.test(phone)) {
            document.getElementById("output_phone").innerText = "Phone number is not match. Phone number must have 10 characters";
        } else if (firstName === "") {
            document.getElementById("output_firstName").innerText = "Field can not empty";
        } else if (lastName === "") {
            document.getElementById("output_lastName").innerText = "Field can not empty";
        } else if (date === "") {
            document.getElementById("output_date").innerText = "Field can not empty";
        } else if (mail === "") {
            document.getElementById("output_mail").innerText = "Field can not empty";
        } else {
            document.getElementById("button").innerHTML = "<button type='submit' class='btn btn-primary btn-block'>Register</button>";
        }
    }
</script>
</body>
<script src="../table/plugins/jquery/jquery.min.js"></script>
<script src="../table/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../table/dist/js/adminlte.min.js"></script>
</html>
