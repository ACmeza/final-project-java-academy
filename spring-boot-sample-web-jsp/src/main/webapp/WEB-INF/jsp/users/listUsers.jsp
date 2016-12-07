<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">
<body>

   <nav>
   <a href="/">Welcome</a> |
   <a href="/users">User List</a> |
   <a href="/users/adduser">Add User</a>
   </nav>

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
            <td align="center">
            <a href="/users/details/${user.value.id}">${user.value.id}</a>
            </td>
            <td align="center">${user.value.firstName}</td>
            <td align="center">${user.value.lastName}</td>
            <td align="center">${user.value.age}</td>
        </tr>
         </c:forEach>
    </tbody>
</table>
</body>

</html>
