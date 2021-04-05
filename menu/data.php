<?php
include 'bootstrap/template.html';



$array1 = (get_array_links('Образование'));
$array2 = (get_array_links('Культура'));
$array3 = (get_array_links('Экономическая политика'));
$array4 = (get_array_links('Молодёжная политика'));
$array5 = (get_array_GET('Образование'));
$array6 = (get_array_GET('Культура'));
$array7 = (get_array_GET('Экономическая'));
$array8 = (get_array_GET('Молодёжная'));



/*Выводим открывающий тег для коллапса*/
echo GetParentCollapseOpen();
/*Выводим ссылки коллапса, передаём заголовок и айдишник, чтобы они корректно закрывались*/
echo GetCollapse(1,'Образование',$array1,$array5);
echo GetCollapse(2,'Культура',$array2,$array6);
echo GetCollapse(3,'Экономическая политика',$array3,$array7);
echo GetCollapse(4,'Молодёжная политика',$array4,$array8);
/*Выводим закрывающий тег для коллапса*/
echo GetParentCollapseClose();
