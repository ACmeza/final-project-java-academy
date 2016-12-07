<!DOCTYPE html>
<html lang="en">
   <head>
      <script type="text/javascript">

        function userPage() {
            document.location.href = "/users";
        }

      </script>
   </head>
   <body>
     <h1> Welcome Admin: ${name}</h1>
      <br>
      <br>
      <button class="float-left submit-button" onclick="userPage()">Users </button>

   </body>
</html>