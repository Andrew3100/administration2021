<?php

/*Написать проверку аторизации*/
/*Написать коннект к базе данных*/
/*Написать антирежим отладки*/




function GetParam() {
    if ($_GET['data']) {
        include 'menu/data.php';
    }
    if ($_GET['reports']) {
        include 'menu/report.php';
    }
    if ($_GET['impexp']) {
        include 'menu/managment.php';
    }

}


function get_records_sql($table,$condition)
{
    include 'database.php';
    if ($condition!='') {
        $sql = "SELECT * FROM `$table` WHERE $condition";
        $result = $mysqli->query($sql);
/*        print_r($sql);*/

    }
    else {
        $sql = "SELECT * FROM `$table`";
        $result = $mysqli->query($sql);
/*        print_r($sql);*/

    }
    return $result;
}

function get_records_sql_for_excel($table,$condition,$fields)
{
    include 'database.php';
    if ($condition!='') {
        $sql = "SELECT $fields FROM `$table` WHERE $condition";
        $result = $mysqli->query($sql);
        /*        print_r($sql);*/

    }
    else {
        $sql = "SELECT $fields FROM `$table`";
        $result = $mysqli->query($sql);
        /*        print_r($sql);*/

    }
    return $result;
}

function get_array_links($header) {
    $datas = get_records_sql('administration_table_link',"header LIKE '%$header%'" );
    $education_link_array = array();
    while ($datas1 = mysqli_fetch_assoc($datas))
    {
        $link_array[] = $datas1['linkname'];
    }

    return $link_array;
}

function get_array_GET($header) {
    $datas_get = get_records_sql('administration_table_link',"header LIKE '%$header%'" );
    $get_array = array();
    while ($datas1_get = mysqli_fetch_assoc($datas_get))
    {
        $get_array[] = $datas1_get['link_get'];
    }

    return $get_array;
}

function gpr() {
    $url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    $url = substr($url,0,-2);
    $get = strpos($url,'?');
    $get = substr($url,$get+1);
    return $get;
}

function get_table_headers($array) {
    echo '<table class="table table-bordered table-dark"><thead><tr>';
    for ($i=0;$i<count($array);$i++) {
        echo '<td style="text-align: center">'.$array[$i].'</td>';
    }
    echo '<td style="text-align: center">Действия</td></tr></thead>';
    /*echo '</table>';*/
}

function get_table_content($table_name) {
    $result = get_records_sql($table_name,'status = 1');

    $result_k = mysqli_fetch_assoc($result);

    $keys = count(array_keys($result_k));

    $field_list = get_field_list($table_name);

    unset($field_list[0]);

    unset($field_list[count($field_list)]);

    /*echo '<table class="table table-bordered table-dark">';*/
    while ($result1 = mysqli_fetch_array($result)) {

        echo '<tr>';
        $f = 1;
        for ($i=0;$i<$keys-2;$i++) {

            echo '<td style="text-align: center">'.$result1[$field_list[$f]].'</td>';
            $f++;
        }

        $update = '<a href="update_form.php?red='.$result1['id'].'&table='.gpr().'"><svg style="color: #e8eab5" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16">
  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/>
</svg></a>';
        $delete = '<a href="/actions/delete.php?red='.$result1['id'].'&table='.gpr().'"><svg onclick="return  confirm(`Подтвердите удаление записи`)" style="color: red" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
</svg></a>';

        echo "<td style='text-align: center'>
        <div class='container'>
            <div class='row'>
                <div class='col'>
                $update
                </div>
                <div class='col'>
                $delete
                </div>
            </div>    
        </div>
        </td>";
        echo '</tr>';
    }
    echo '</table>';
}


function get_field_list($table_name) {
    $field_list = array();
    include 'database.php';
    $sql = "SHOW COLUMNS FROM `$table_name`";
    $res_sql = $mysqli->query($sql);


    while ($res_sql1 = mysqli_fetch_assoc($res_sql)) {
        $field_list[] = $res_sql1['Field'];
    }
    unset($field_list[0]);
    unset($field_list[count($field_list)]);
    return $field_list;
}


function debug() {
    ini_set('display_errors', 0);
    ini_set('display_startup_errors', 0);
    error_reporting(E_ALL);
}






function fixed_log($event,$user) {
    include 'database.php';
    $time = date("H:i:s",time());
    $date = date('Y-m-d',time());
    $date = explode('-',$date);
    $date = implode($date,'-');

    $fixed_log = $mysqli->query("INSERT INTO logs (`event`,`date`,`time`,`username`) VALUES ('$event','$date','$time','$user')");

}




