<?php
session_start();
if (!isset($_SESSION['login_ok'])) {
  header('location: index.php');
}
require_once('dashboard\header.php');
?>

<?php
  require_once('dashboard\footer.php');
?>
