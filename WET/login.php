<?php
include 'connection.php';
session_start();

//session are used to store user data (like login info across pages.)

if(isset($_POST['submit'])){
$email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));


   $select = mysqli_query($conn, "SELECT * FROM `user_form` WHERE email = '$email' AND password = '$pass'") or die('query failed');
   if(mysqli_num_rows($select) > 0){
      $row = mysqli_fetch_assoc($select);
      //fetch user details.
      $_SESSION['user_id'] = $row['id'];
      //set session variable  user_id
      header('location:index.php');
   }else{
      $message[] = 'incorrect password or email!';
   }

}

?>

<!---->
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>login Page </title>    

   <!--  css file link  -->
   <link rel="stylesheet" href="styless.css">

</head>
<body>

<?php
if(isset($message)){
   // if wrong password 
   foreach($message as $message){
      echo '<div class="message" onclick="this.remove();">'.$message.'</div>';
   }
}
?>
   
<div class="form-container">

   <form action="" method="post">
      <h3>login now</h3>
      <input type="email" name="email" required placeholder="enter email" class="box">
      <input type="password" name="password" required placeholder="enter password" class="box">
      <input type="submit" name="submit" class="btn" value="login now">
      <p>don't have an account? <a href="register.php">register now</a></p>
   </form>

</div>

</body>
</html>