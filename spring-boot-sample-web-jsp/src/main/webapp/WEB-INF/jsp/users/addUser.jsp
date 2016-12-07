<!DOCTYPE html>
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
                  <li><a href="/users">User List</a></li>
                  <li class="active"><a href="/users/adduser">Add User</a></li>
                </ul>
              </div>
            </nav>

         <div class="container">
           <h2>Add User</h2>
           <form action="/users/create" method="post">
             <div class="form-group">
               <label for="firstName">First Name:</label>
               <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name" required>
             </div>
             <div class="form-group">
               <label for="lastNname">Last Name:</label>
               <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name" required>
             </div>
             <div class="form-group">
               <label for="age">Age:</label>
               <input type="number" class="form-control" id="age" name="age" placeholder="Enter age" required>
             </div>
             <button type="submit" class="btn btn-default">Submit</button>
           </form>
         </div>

   </body>
</html>