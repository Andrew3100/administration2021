<?php


include 'bootstrap/template.html';
/*Имя гет-параметра, уникального для данной таблицы*/

$recordss = array();

/*Имя GET, оно же имя таблицы БД*/
$get = gpr();

/*Получаем все шапки для таблицы, привязанной к этому GET*/
$result = get_records_sql('bsu_form_data',"get_name = '$get'");

/*Массив шапок*/
while ($records = mysqli_fetch_assoc($result)) {
    $recordss[] = $records['descriptor_n'];
}

/*Рисуем шапки*/
get_table_headers($recordss);
/*Рисуем записи*/
get_table_content($get);