<?php
$x = $_GET['red'];
$y = $_GET['table'];

include 'database.php';

if ($delete = $mysqli->query("UPDATE $y SET status = 0 WHERE id = $x")) {
    echo "<script>window.location.replace('/index.php?$y=1')</script>";
}
