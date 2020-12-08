<?php
session_start();
require_once('include\db_connect.php');

 $user_email = $_POST['email'];
 $user_password = md5($_POST['password']);
$query_string = "SELECT count(*) as total_data FROM users WHERE user_email='$user_email' and user_password='$user_password'";
$db_return = mysqli_query($db_connect,$query_string);
$after_assoc = mysqli_fetch_assoc($db_return);

if ($after_assoc['total_data'] == 1) {
  $_SESSION['login_ok'] = "ok";
  header('location: profile.php');
}
else {
  echo "please provide correct email and password ";
}

?>
