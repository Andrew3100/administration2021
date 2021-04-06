<?php

include 'lib/database.php';
include 'lib/lib.php';

$k = $_POST['pos'];
$table_name = $_POST['table'];
$red = $_POST['red'];

($field_list = get_field_list($table_name));
echo '<pre>';
var_dump($field_list);
echo '</pre>';
$for_insert_fields = '(';
$post = 0;
$for_insert_values = "(";
for ($i=1;$i<=$k;$i++) {
    $for_insert_values .= "'";
    $for_insert_values .= $_POST['name'.$post];
    $for_insert_fields .= "`";
    $for_insert_fields .= $field_list[$i];
    if ($i==$k) {
        $for_insert_fields .= "`";
        $for_insert_values .= "'";
    }
else {
        $for_insert_fields .= "`, ";
        $for_insert_values .= "', ";
    }
    $post++;

}
$for_insert_values .= ")";
/*Строка для вставки данных*/
$for_insert_fields .= ')';

$sql = "INSERT INTO `$table_name` $for_insert_fields VALUES $for_insert_values";
$insert = $mysqli->query($sql);
if ($insert) {
    echo "<script>window.location.replace('add_form.php?table=$table_name')</script>";

}
else {
    print_r($sql);
}