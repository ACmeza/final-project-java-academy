<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">

   <head>
      <script type="text/javascript">

        function addUser() {
            document.location.href = "users/adduser";
        }

      </script>
   </head>

<body>

<table style="width:100%">
    <thead>
         <tr>
             <th>ID</th>
             <th>First Name</th>
             <th>Last Name</th>
             <th>Age</th>
         </tr>
    </thead>
    <tbody>
         <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.age}</td>
        </tr>
         </c:forEach>
    </tbody>

</table>

	 <button class="float-left submit-button" onclick="addUser()">Add user </button>
</body>

</html>
