<?php


include 'bootstrap/template.html';
/*Имя гет-параметра, уникального для данной таблицы*/

$recordss = array();
$get = gpr();
$result = get_records_sql('bsu_form_data',"get_name LIKE '$get%'");

while ($records = mysqli_fetch_assoc($result)) {
    $recordss[] = $records['descriptor_n'];
}


get_table_headers($recordss);
get_table_content($get);