<?php

include 'lib/lib.php';
include 'lib/database.php';
include 'Classes/PHPExcel.php';


$t = $_POST['table'];
$k = $_POST['k'];
$report_list = array();
for ($i=0;$i<$k;$i++) {
    $report_list[] = $_POST['name'.$i];
}

$string_f = implode(', ',$report_list);
/*Поля таблицы, считаемые с нуля, как в обычном массиве*/
$report_list = explode(', ',$string_f);


$field_for_excel_list11 = array();
$header_for_excel_list11 = array();
for ($i=0;$i<count($report_list);$i++) {

    if ($report_list[$i]!="") {
        $field_for_excel_list = get_records_sql("bsu_form_data","get_name = '$t' AND descriptor_n = '$report_list[$i]'");
        while ($field_for_excel_list1 = mysqli_fetch_assoc($field_for_excel_list)) {

            /*↓↓↓↓↓↓↓ В этом массиве хванится список полей базы, из которых надо вытащить данные в отчёт↓↓↓↓↓↓↓*/
            $field_for_excel_list11[] = $field_for_excel_list1['fn'];
            $header_for_excel_list11[] = $field_for_excel_list1['descriptor_n'];
        }
    }

}
 $field_for_excel_list111 = implode(',',$field_for_excel_list11);

$for_excel = $mysqli->query("SELECT $field_for_excel_list11 FROM $t");

for ($i=0;$i<count($report_list);$i++) {
    if ($report_list[$i]=="") {
        unset($report_list[$i]);
    }
}

//Новый документ Excel
$excel = new PHPExcel();
//Определяем стартовую ячейку для формирования документа
$excel->setActiveSheetIndex(0);
$alphabet = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O');
for ($i=0;$i<count($header_for_excel_list11);$i++) {
        $excel->getActiveSheet()->setCellValue($alphabet[$i].'1',$header_for_excel_list11[$i]);
}

$for_excel = get_records_sql_for_excel($t,'',$field_for_excel_list111);

$row=2;
while ($for_excel1 = mysqli_fetch_assoc($for_excel)) {
    for ($i=0;$i<count($header_for_excel_list11);$i++) {
        if ($for_excel1[$field_for_excel_list11[$i]]!='Заглушка') {
            $excel->getActiveSheet()->setCellValue($alphabet[$i].$row, $for_excel1[$field_for_excel_list11[$i]]);
        }
    }
    $row++;
}
$rep = date('d-m-Y',time());
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="'.$rep.'.xlsx');
header('Cash-Control: max-age=0');
$file = PHPExcel_IOFactory::createWriter($excel,'Excel2007');
$file->save('php://output');