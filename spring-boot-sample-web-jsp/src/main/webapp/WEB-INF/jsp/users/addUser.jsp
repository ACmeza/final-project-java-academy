<!DOCTYPE html>

<html lang="en">

<body>

   <nav>
   <a href="/">Welcome</a> |
   <a href="/users">User List</a> |
   <a href="/users/adduser">Add User</a>
   </nav>

	<form action="/users/create" method="post">
      First Name:<br>
      <input type="text" name="firstName" required><br>
      Last Name:<br>
      <input type="text" name="lastName" required><br>
      Age:<br>
      <input type="number" name="age" required><br>
      <input type="submit" value="Submit">
    </form>
</body>

</html>
