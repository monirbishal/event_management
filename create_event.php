<?php
session_start();
if (!isset($_SESSION['login_ok'])) {
  header('location: index.php');
}
require_once('dashboard\header.php');
?>

    <div class="container">
      <div class="row">
        <div class="col-md-6 offset-3 mt-5">
          <form action="eventpost.php" method="post">
            <h2>Creat Event</h2>
            <div class="form-group">
              <label for="">Event Name</label>
              <input type="text" class="form-control" placeholder="event name" name="event_name">
            </div>
            <div class="form-group">
              <label for="">Event Date</label>
              <input type="date" class="form-control" placeholder="event date" name="event_date">
            </div>
            <div class="form-group">
              <label for="">Event Place</label>
              <input type="text" class="form-control" placeholder="event place" name="event_place">
            </div>
            <div class="form-group">
              <label for="">Event Details</label>
              <input type="text" class="form-control" placeholder="event detalis" name="event_details">
            </div>
            <div class="form-group">
              <label for="">capacity</label>
              <input type="number" class="form-control" placeholder="capacity" name="capacity">
            </div>
            <div class="form-group">
              <label for="">price</label>
              <input type="text" class="form-control" placeholder="price" name="price">
            </div>

            <button type="submit" class="btn btn-primary">submit</button>
          </form>

        </div>
      </div>
    </div>
    <?php
      require_once('dashboard\footer.php');
    ?>
