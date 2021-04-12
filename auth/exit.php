<?php
$cookiess = $_COOKIE['user'];
include 'lib.php';
fixed_log('Выход из системы',$_COOKIE['user']);
(setcookie('user',$cookiess,time() - 3800000000000000, "/"));
header('Location: /emou_BSU/auth/index.php');
exit('выход');
