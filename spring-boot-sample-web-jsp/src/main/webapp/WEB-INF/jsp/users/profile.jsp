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
      <h4>
         Name : ${user.firstName} ${user.lastName}
         <br>
         Email : ${user.email}
         <br>
         Age : ${user.age}
      </h4>
      <div class="col-sm-6">
         <h2>My hobbies</h2>
         <table class="table table-striped">
            <thead>
               <tr>
                  <th>Hobby</th>
                  <th>Description</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${hobbies}" var="hobby">
                  <tr>
                     <td>${hobby.name}</td>
                     <td>${hobby.description}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
      <div class="col-sm-6">
         <h2>Add new hobby</h2>
         <form action="/users/profile/${id}/createhobby" method="post">
            <div class="form-group">
               <label for="hobby">Hobby:</label>
               <input type="text" class="form-control" id="hobby" name="hobby" placeholder="Enter hobby" required>
            </div>
            <div class="form-group">
               <label for="description">Description:</label>
               <input type="text" class="form-control" id="description" name="description" placeholder="Enter description" required>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
         </form>
      </div>
   </body>
</html>