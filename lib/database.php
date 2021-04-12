<?php
$db_host = "bsu-do-sql-pegas.bsu.edu.ru";
$db_user = "ADMIN"; // Логин БД
$db_password = "b1g#psKT"; // Пароль БД
$db_base = 'administration2021'; // Имя БД

// Подключение к базе данных
$mysqli = new mysqli($db_host,$db_user,$db_password,$db_base);
$mysqli->set_charset("utf8");
if ($mysqli->connect_error) {
    echo "Ошибка подключения к базе данных";
}

