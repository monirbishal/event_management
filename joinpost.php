<?php
require_once('include\db_connect.php');

$join_email = $_POST['join_email'];
$join_price = $_POST['join_price'];


 $query_string = "INSERT INTO join_events (join_email, join_price) VALUES ('$join_email', '$join_price')";
 mysqli_query($db_connect,$query_string);
 header('location: index.php');


?>
