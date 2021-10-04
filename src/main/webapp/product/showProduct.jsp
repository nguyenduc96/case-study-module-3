<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<header>
    <div class="container-fluid"><ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Active</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Dropdown</a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Separated link</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
        </li>
    </ul></div>
</header>
<div class="row">
    <div class="col-2">
        <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 280px;">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
                <span class="fs-4">Sidebar</span>
            </a>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
                        Home
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link text-white">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link text-white">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
                        Orders
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link text-white">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
                        Products
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link text-white">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
                        Customers
                    </a>
                </li>
            </ul>
            <hr>
            <div class="dropdown">
                <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                    <strong>mdo</strong>
                </a>
                <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                    <li><a class="dropdown-item" href="#">New project...</a></li>
                    <li><a class="dropdown-item" href="#">Settings</a></li>
                    <li><a class="dropdown-item" href="#">Profile</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Sign out</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-10">
        <h2 class="text-uppercase text-center mb-5">User list</h2>
        <div class="row">
            <form action="/product" method="get">
                <input type="text" name="search" value="">
                <button type="submit">Search</button>
            </form>
        </div>
        <table class="table table-success table-striped">
            <thead>
            <tr>
                <th scope="col">Product ID</th>
                <th scope="col">Product Name</th>
                <th scope="col">Product Code</th>
                <th scope="col">Product Image</th>
                <th scope="col">Product Quantity</th>
                <th scope="col">Product Discount</th>
                <th scope="col">Product Discount Percent</th>
                <th scope="col">Product Category</th>
                <th scope="col">Product Brand</th>
                <th scope="col">Product Description</th>
                <th scope="col">Product Create Date</th>
                <th scope="col">Product Is Active</th>
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
                    <td>${product.code}</td>
                    <td><img src="${product.image}" alt="" width="100px" height="100px"></td>
                    <td>${product.quantity}</td>
                    <td>${product.discount}</td>
                    <td>${product.discount_pct}</td>
                    <td>${product.getCategory().getName()}</td>
                    <td>${product.getBrand().getName()}</td>
                    <td>${product.description}</td>
                    <td>${product.created_at}</td>
                    <c:choose>
                        <c:when test="${product.isActive()}">
                            <td>Hiện</td>
                        </c:when>
                        <c:otherwise>
                            <td>Ẩn</td>
                        </c:otherwise>
                    </c:choose>
                    <td><a href="product?action=detail&id=${product.id}" class="btn btn-info">View</a></td>
                    <td><a href="product?action=edit&id=${product.id}" class="btn btn-success">Edit</a></td>
                    <td><button type="button" class="btn btn-warning" onclick="confirmDelete(${product.id})">Delete</button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="/product?action=create" class="btn btn-primary">Add new</a>
        <div>
            <nav aria-label="...">
                <ul class="pagination">
                    <li class="page-item ${pre}">
                        <a class="page-link" href="product?action=page&offset=${offset2-5}">Previous</a>
                    </li>
                    <c:forEach begin="1" end="${totalPage}" step="1" var="i">
                        <c:choose>
                            <c:when test="${offset2==((i-1)*5)}">
                                <li class="page-item active"><a class="page-link " href="users?action=page&offset=${5*(i-1)}">${i}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item"><a class="page-link" href="users?action=page&offset=${5*(i-1)}">${i}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <li class="page-item ${next}">
                        <a class="page-link" href="product?action=page&offset=${offset2+5}">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
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
