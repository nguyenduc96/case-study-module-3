<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 10/4/2021
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List brand</title>
</head>
<body>
    <h3>List brand</h3>
    <hr>
    <button><a href="/brands?action=create">Back home</a></button>
    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>Brand name</th>
            <th>Brand image</th>
            <th></th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${brands}" var="brand">
            <tr>
                <td>${brand.id}</td>
                <td>${brand.name}</td>
                <td><img width="40" src="${brand.image}" alt="image logo"></td>
                <td>
                    <button><a href="brands?action=edit&id=${brand.id}">Edit</a></button>
                    <button><a href="brands?action=delete&id=${brand.id}">Delete</a></button>
                </td>
            </tr>
        </c:forEach>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item ${previous}">
                    <a class="page-link" href="brands?action=page&page=${1}">First</a>
                </li>
                <li class="page-item ${previous}">
                    <a class="page-link" href="brands?action=page&page=${page - 1}">Previous</a>
                </li>
                <c:forEach begin="1" end="${totalPage}" step="1" var="i">
                    <c:choose>
                        <c:when test="${page == 1}">
                            <li class="page-item ${active}">
                                <a class="page-link" href="brands?action=page&page=${i}">${i}</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="brands?action=page&page=${i}">${i}</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <li class="page-item ${next}">
                    <a class="page-link" href="brands?action=page&page=${page + 1}">Next</a>
                </li>
                <li class="page-item ${next}">
                    <a class="page-link" href="brands?action=page&page=${totalPage}">Last</a>
                </li>
            </ul>
        </nav>
        </tbody>
    </table>
</body>
</html>
