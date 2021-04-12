<?php
include 'lib/database.php';
$data = $_GET['search'];

echo '<h3>Результаты поиска:<br></h3>';

/*Получаем список таблицы базы данных*/
$table_list = $mysqli->query("SHOW TABLES FROM administration2021");
$table_list_array = array();
//var_dump($table_list);
/*Собираем результат запрос васоциативный массив*/
while ($table_l = mysqli_fetch_assoc($table_list)) {
    /*Массив таблиц базы данных*/
    $table_list_array[] =  $table_l['Tables_in_administration2021'];
}


for ($i=0;$i<=count($table_list_array);$i++) {
    if ($table_list_array[$i]!='administration_table_link' AND $table_list_array[$i]!='logs' AND $table_list_array[$i]!='bsu_form_data' AND $table_list_array[$i]!='users') {
        echo 'вход';
        //$fields = get_field_list($table_list_array[$i]);
        //$field_on_search = implode($fields,' OR ');
        echo '<pre';
        //var_dump($field_on_search);
        echo '</pre';
    }

    //$search = get_records_sql($table_list_array[$i],'');

}


