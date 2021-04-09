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
    }

}
else {
    echo 'Такого пользователя нет в системе. Обратитесь к <a target="_blank" href="mailto: funikov.1997@mail.ru?subject=Проблемы со входом в ЭМОУ">администратору системы.</a>';
    $mysqli->close();

}




/*ПЕРЕНОС ПОЛЬЗОВАТЕЛЕЙ*/
/*




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
    echo "Ошибка подключения к базе данных";
    exit('Жопа, друг мой');
}

$users_selector = $mysqli_2020->query("SELECT login,password FROM users");

while ($users_selector1 = mysqli_fetch_assoc($users_selector) ) {
    $l = ($users_selector1['login']);
    $p = ($users_selector1['password']);
    $inserted = $mysqli->query("INSERT INTO `users` (`login`,`password`) VALUES ('$l','$p')");
    if ($inserted) {
        echo 'Вставлено';
    }
}*/



