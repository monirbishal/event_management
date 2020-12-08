<?php
require_once('include\db_connect.php');

$event_name = $_POST['event_name'];
$event_date = $_POST['event_date'];
$event_place = $_POST['event_place'];
$event_details = $_POST['event_details'];
$capacity = $_POST['capacity'];
$price = $_POST['price'];

 $query_string = "INSERT INTO events (event_name, event_date, event_place, event_delails, capacity, price) VALUES ('$event_name', '$event_date', '$event_place', '$event_details', '$capacity', '$price')";
 mysqli_query($db_connect,$query_string);
 header('location: create_event.php');


?>
