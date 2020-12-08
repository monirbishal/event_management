<?php
require_once('include\db_connect.php');
$user_name = $_POST['user_name'];
$user_email = $_POST['user_email'];
$user_password = md5($_POST['user_password']);



$query_string = "SELECT count(*) as email_ceck FROM users WHERE user_email='$user_email'";
$db_return = mysqli_query($db_connect,$query_string);
$after_assoc = mysqli_fetch_assoc($db_return);

if ($after_assoc['email_ceck'] == 1) {
  echo "please provide another email address";
}
else {
  $query_string1 ="INSERT INTO users(user_name, user_email, user_password) VALUES ('$user_name', '$user_email', '$user_password')";
  mysqli_query($db_connect,$query_string1);
  header('location: register.php');
}

?>
