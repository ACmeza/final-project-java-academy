<html lang="en">
   <head>
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
               <li class="active"><a href="/">Welcome</a></li>
               <li><a href="/users">User List</a></li>
               <li><a href="/users/adduser">Add User</a></li>
            </ul>
         </div>
      </nav>
      <div class="container">
         <h2>Welcome Admin: ${name}</h2>
      </div>
   </body>
</html>