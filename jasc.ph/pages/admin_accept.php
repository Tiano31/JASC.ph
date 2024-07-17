<?php
session_start();
include('../config/dbconn.php');

if (!isset($_SESSION['id']) || (trim($_SESSION['id']) == '')) {
    header('location:user_login_page.php');
    exit();
}

include('../config/dbconn.php');

if (isset($_GET['order_id'])) {
    $order_id = $_GET['order_id'];

    // Update the database to mark the order as accepted
    $updateQuery = "UPDATE `order` SET accepted = 1 WHERE order_id = $order_id";
    mysqli_query($dbconn, $updateQuery);

    // Include the necessary HTML for successful acceptance
    echo "<!DOCTYPE html>";
    echo "<html lang=\"en\">";
    echo "<head>";
    // ... include head content ...
    echo "<meta charset=\"utf-8\" />";
    echo "<link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"../uploads/newlogo.jpg\">";
    echo "<link rel=\"icon\" type=\"image/jpg\" href=\"../uploads/newlogo.jpg\">";
    echo "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />";
    echo "<title>JASCph Col.</title>";
    echo "<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />";
    echo "<link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700,200\" rel=\"stylesheet\" />";
    echo "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css\" />";
    echo "<link href=\"../assets/css/bootstrap.min.css\" rel=\"stylesheet\" />";
    echo "<link href=\"../assets/css/now-ui-kit.css?v=1.1.0\" rel=\"stylesheet\" />";
    echo "<link href=\"../assets/css/demo.css\" rel=\"stylesheet\" />";
    echo "<link rel=\"stylesheet\" href=\"../plugins/datatables/dataTables.bootstrap.css\" />";
    echo "<style type=\"text/css\">";
    echo "  tr td {";
    echo "    padding-top: -10px!important;";
    echo "    border: 1px solid #000;";
    echo "  }";
    echo "  @media print {";
    echo "      .btn-print {";
    echo "        display:none !important;";
    echo "      }";
    echo "  }";
    echo "</style>";
    echo "</head>";
    echo "</head>";
    echo "<body>";
    echo "<br><br><br>";
    echo "<center>";
    echo "<h3>Parcel will be pick up by logistic partner</h3>";
    echo "<hr color=\"orange\">";
    echo "<br><br>";
    echo "<h3>Payment type will be a <b>Cash On Delivery</b></h3>";
    echo "<h3>Delivery process time, minimum of three(3) days and maximum of five(5) working days.</h3><br>";
    echo "<h5>JASC.ph Collection</h5>";
    echo "<a href=\"admin_index.php\"><button type=\"button\" class=\"btn btn-success btn-round\"><span class=\"now-ui-icons ui-1_check\"></span> Back to Homepage</button></a>";
    echo "</center>";
    echo "<br><br><br><br> <br><br><br><br>";
    echo "<footer class=\"footer\" data-background-color=\"black\">";
    echo "            <div class=\"container\">";
    echo "                <nav>";
    echo "                    <ul>";
    echo "                        <li>";
    echo "                            <a href=\"\" target=\"_blank\">";
    echo "                                JASC.PH HAIR ACCESSORIES";
    echo "                            </a>";
    echo "                        </li>";
    echo "                    </ul>";
    echo "                </nav>";
    echo "                <div class=\"copyright\">";
    echo "                    &copy;";
    echo "                    <script>";
    echo "                        document.write(new Date().getFullYear())";
    echo "                    </script>, Designed and Coded by Group 7.";
    echo "                </div>";
    echo "            </div>";
    echo "        </footer>";
    echo "</body>";
    echo "<script src=\"../assets/js/core/jquery.3.2.1.min.js\" type=\"text/javascript\"></script>";
    echo "<script src=\"../assets/js/core/bootstrap.min.js\" type=\"text/javascript\"></script>";
    echo "<script src=\"../assets/js/now-ui-kit.js?v=1.1.0\" type=\"text/javascript\"></script>";
    echo "<script src=\"../plugins/datatables/jquery.dataTables.min.js\"></script>";
    echo "<script src=\"../plugins/datatables/dataTables.bootstrap.min.js\"></script>";
    echo "<script>";
    echo "  $(function () {";
    echo "    $(\"#tbl\").DataTable({";
    echo "    });";
    echo "  });";
    echo "</script>";
    echo "</html>";

    exit; // Important: exit to prevent further execution
}
?>