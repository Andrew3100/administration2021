<?php

echo '<p style="color: green">Для составления отчёта в формате Excel выберете таблицу, галочками отметьте поля, которые необходимо включить с отчёт. 
        После нажатия кнопки "Сформировать отчёт", документ автоматически попадёт в загрузки';

$table_list_for_interface = get_records_sql('administration_table_link','');
while ($table_list_for_interface1 = mysqli_fetch_assoc($table_list_for_interface)) {
    $tables[] = $table_list_for_interface1['linkname'];
}


echo GetParentCollapseOpen();
/*Передаём случайные имена для меток for*/
$lable_array = array('a','b','c','d','e','f','g','h','s','co','r','m','p','x','w','y','z','k');
for ($i=0;$i<count($tables);$i++) {

    echo GetCollapseReports($i,$tables[$i],$lable_array[$i]);

}
echo GetParentCollapseClose();


