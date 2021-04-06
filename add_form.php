<?php

include 'bootstrap/template.html';
include 'lib/lib_html.php';
$table = $_GET['table'];
$get_rec = get_records_sql('administration_table_link',"`link_get` = '$table'");

while ($get_rec1 = mysqli_fetch_assoc($get_rec)) {
    $descriptor = $get_rec1['linkname'];
}

echo "<br><h6 style='text-align: center'>Добавление записи в таблицу <b>$descriptor</b>:</h6>";

GetForm($table);
