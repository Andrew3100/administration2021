<?php
$cookiess = $_COOKIE['user'];
(setcookie('user',$cookiess,time() - 3800, "/"));
header('Location: index.html');
