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


    }
    else {
        $sql = "SELECT * FROM `$table`";
        $result = $mysqli->query($sql);


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
    $result = get_records_sql($table_name,'');

    $result_k = mysqli_fetch_assoc($result);

    $keys = count(array_keys($result_k));

    $field_list = get_field_list($table_name);

    unset($field_list[0]);

    unset($field_list[count($field_list)]);

    $icons = GetIconsContainer();
    /*echo '<table class="table table-bordered table-dark">';*/
    while ($result1 = mysqli_fetch_assoc($result)) {

        echo '<tr>';
        $f = 1;
        for ($i=0;$i<$keys-2;$i++) {

            echo '<td style="text-align: center">'.$result1[$field_list[$f]].'</td>';
            $f++;
        }
        echo "<td style='text-align: center'>$icons</td>";
        echo '</tr>';
    }
    echo '</table>';
}


function get_field_list($table_name) {
    $field_list = array();
    include 'database.php';
    $sql = "SHOW COLUMNS FROM `$table_name`";
    $res_sql = $mysqli->query($sql);
    print_r($sql);

    while ($res_sql1 = mysqli_fetch_assoc($res_sql)) {
        $field_list[] = $res_sql1['Field'];
    }
    return $field_list;
}


function debug() {
    ini_set('display_errors', 0);
    ini_set('display_startup_errors', 0);
    error_reporting(E_ALL);
}









