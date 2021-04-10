<?php
include 'lib.php';
$login = trim($_POST['login']);
$password = md5(trim($_POST['password']));

$db_host = "localhost";
$db_user = "root"; // Логин БД
$db_password = ""; // Пароль БД
$db_base = 'administration2021'; // Имя БД

// Подключение к базе данных
$mysqli = new mysqli($db_host, $db_user, $db_password, $db_base);
$mysqli->set_charset("utf8");


$result =  (get_records_sql('users',"login = '$login' AND password = '$password'"));
while ($result1 = mysqli_fetch_assoc($result)) {
$username = $result1['login'];
$p = $result1['password'];
}
if ($username!=NULL AND $password!=NULL) {
    if (count($result)!=0) {
        setcookie('user',$username,time() + 3600, "/");
        header('Location: /index.php?data=1');
        fixed_log('Авторизация в системе',$_COOKIE['user']);
    }

}
else {
    echo 'Такого пользователя нет в системе. Обратитесь к <a target="_blank" href="mailto: funikov.1997@mail.ru?subject=Проблемы со входом в ЭМОУ">администратору системы.</a>';
    $mysqli->close();

}


exit();

/*ПЕРЕНОС ПОЛЬЗОВАТЕЛЕЙ*/


$db_host = "localhost";
$db_user = "root"; // Логин БД
$db_password = ""; // Пароль БД
$db_base = 'administration2021'; // Имя БД

// Подключение к базе данных
$mysqli = new mysqli($db_host, $db_user, $db_password, $db_base);
/*$mysqli->set_charset("utf8");*/


// Параметры для подключения
$db_host = "bsu-do-sql-pegas.bsu.edu.ru";
$db_user = "ADMIN"; // Логин БД
$db_password = "b1g#psKT"; // Пароль БД
$db_base = 'emou2020'; // Имя БД
//Подключаемся к БД
$mysqli_2020 = new mysqli($db_host,$db_user,$db_password,$db_base);
//Если есть ошибка соединения, выводим её и убиваем подключение
if ($mysqli_2020->connect_error)
{
    echo "Ошибка подключения к базе данных ЭМОУ";

}

$users_selector = $mysqli_2020->query("SELECT country,high_educ,spo,aspir,one_curs,expelled FROM fulltime_education LIMIT 1,75");
$mysqli_2020->set_charset("utf8");
$i=1;
while ($users_selector1 = mysqli_fetch_assoc($users_selector) ) {
    echo '<pre>';
    var_dump($l1 = ($users_selector1['country']));
    var_dump($l2 = ($users_selector1['high_educ']));
    var_dump($l3 = ($users_selector1['spo']));
    var_dump($l4 = ($users_selector1['aspir']));
    var_dump($l5 = ($users_selector1['one_curs']));
    var_dump($l6 = ($users_selector1['expelled']));
    echo '</pre>';
    $inserted = $mysqli->query("INSERT INTO `och` (`country`,`full_educ`,`spo`,`aspir`,`first_course`,`expelled`) VALUES ('$l1','$l2','$l3','$l4','$l5','$l6')");
    /*if ($inserted) {
        echo "Вставлено успешно $i записей";
    }
    $i++;*/
}




