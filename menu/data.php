<?php
include 'bootstrap/template.html';


/*ссылки*/
$array1 = (get_array_links('Образование'));
$array2 = (get_array_links('Культура'));
$array3 = (get_array_links('Экономическая политика'));
$array4 = (get_array_links('Молодёжная политика'));
$array5 = (get_array_links('Физкультура и спорт'));
$array6 = (get_array_links('Труд и занятость'));
/*геты*/
$array_get1 = (get_array_GET('Образование'));
$array_get2 = (get_array_GET('Культура'));
$array_get3 = (get_array_GET('Экономическая'));
$array_get4 = (get_array_GET('Молодёжная'));
$array_get5 = (get_array_GET('Физкультура и спорт'));
$array_get6 = (get_array_GET('Труд и занятость'));



/*Выводим открывающий тег для коллапса*/
echo GetParentCollapseOpen();
/*Выводим ссылки коллапса, передаём заголовок и айдишник, чтобы они корректно закрывались*/
echo GetCollapse(1,'Образование',$array1,$array_get1);
echo GetCollapse(2,'Культура',$array2,$array_get2);
echo GetCollapse(3,'Экономическая политика',$array3,$array_get3);
echo GetCollapse(4,'Молодёжная политика',$array4,$array_get4);
echo GetCollapse(5,'Физкультура и спорт',$array5,$array_get5);
echo GetCollapse(6,'Труд и занятость',$array6,$array_get6);
/*Выводим закрывающий тег для коллапса*/
echo GetParentCollapseClose();
