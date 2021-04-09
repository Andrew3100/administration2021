<?php

include 'lib/database.php';
include 'lib/lib.php';

$k = $_POST['pos'];
$table_name = $_POST['table'];
$red = $_POST['red'];

$field_list = get_field_list($table_name);

$success_array = array();
$j = 1;
for ($i=0;$i<$k;$i++) {
    $val = $_POST['name'.$i];
    $sql = "UPDATE `$table_name` SET $field_list[$j] = '$val' WHERE id = $red";
    $update = $mysqli->query($sql);
    if ($update) {
     echo 'Запрос выполнен успешно';
    }
    $j++;
}
    echo "<script>window.location.replace('index.php?$table_name=1')</script>";



