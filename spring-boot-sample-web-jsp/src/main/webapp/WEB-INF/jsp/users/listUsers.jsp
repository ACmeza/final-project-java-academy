<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </head>
   <body>
      <nav class="navbar navbar-default">
         <div class="container-fluid">
            <div class="navbar-header">
               <a class="navbar-brand" href="/">Homepage</a>
            </div>
            <ul class="nav navbar-nav">
               <li><a href="/">Welcome</a></li>
               <li class="active"><a href="/users">User List</a></li>
               <li><a href="/users/adduser">Add User</a></li>
            </ul>
         </div>
      </nav>
      <div class="container">
         <h2>User List</h2>
         <table class="table table-striped">
            <thead>
               <tr>
                  <th>ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Age</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${users}" var="user">
                  <tr>
                     <td><a href="/users/details/${user.value.id}">${user.value.id}</a></td>
                     <td>${user.value.firstName}</td>
                     <td>${user.value.lastName}</td>
                     <td>${user.value.email}</td>
                     <td>${user.value.age}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
   </body>
</html>