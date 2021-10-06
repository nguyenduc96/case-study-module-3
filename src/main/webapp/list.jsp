<%--
  Created by IntelliJ IDEA.
  User: tu
  Date: 10/6/2021
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>first_name</th>
            <th>last_name</th>
            <th>number_phone</th>
            <th>Email</th>
            <th>address</th>
            <th>sex</th>
            <th>date_of_birth</th>
            <th>note</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${first_name}"/></td>
                <td><c:out value="${last_name}"/></td>
                <td><c:out value="${number_phone}"/></td>
                <td><c:out value="${Email}"/></td>
                <td><c:out value="${address}"/></td>
                <td><c:out value="${sex}"/></td>
                <td><c:out value="${date_of_birth}"/></td>
                <td><c:out value="${note}"/></td>

                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>