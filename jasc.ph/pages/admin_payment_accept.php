
    <!-- dynamic content will be here -->
<?php
//including the database connection file
include '../config/dbconn.php';
//getting id of the data from url
$id = $_GET['order_id'];
//deleting the row from table
$result = mysqli_query($dbconn, "DELETE  FROM order WHERE order_id=$id");
//redirecting to the display page (index.php in our case)
header("Location:orders.php");
?>
    