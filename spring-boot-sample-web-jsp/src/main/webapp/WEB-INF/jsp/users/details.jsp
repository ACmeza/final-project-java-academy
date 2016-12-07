<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">

<body>

Name : ${user.firstName} ${user.lastName}
<br>
Age : ${user.age}

<table>
    <thead>
         <tr>
             <th>Hobbies</th>
         </tr>
    </thead>
    <tbody>
         <c:forEach items="${hobbies}" var="hobby">
        <tr>
            <td align="center">${hobby}</td>
        </tr>
         </c:forEach>
    </tbody>
</table>

<form action="/users/details/${id}/createhobby" method="post">
      New Hobby:<br>
      <input type="text" name="hobby"><br>
      <input type="submit" value="Submit">
</form>

</body>

</html>
