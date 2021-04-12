<?php
include 'bootstrap/template.html';
include 'lib.php';


/*Шапка*/
function GetHeader($color) {
    $header = '<nav class="navbar navbar-expand-lg navbar-light bg-'.$color.'">
              <div class="container-fluid">
                <a style="color: white" class="navbar-brand" href="#">ЭМОУ</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="text-white navbar-nav mr-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a style="color: white" class="nav-link" href="#">Руководство пользователя</a>
                    </li>
                    <li class="nav-item">
                      <a style="color: white" class="nav-link" href="#">Шаблоны импорта</a>
                    </li>
                    <li class="nav-item">
                      <a style="color: white" class="nav-link" href="#">Поделиться отчётом</a>
                    </li>
                  </ul>
                  <!--<form method="GET" name="form" class="d-flex" style="margin-right: 25px;">
                    <input class="form-control mr-2" name="search" type="search" placeholder="Запись содержит..." aria-label="Search">
                    <a class="btn btn-outline-success" href="index.php?search=1">Найти</a>
                  </form>-->
                  
                 
                <li  style="list-style: none"  class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
            '.$_COOKIE['user'].'
          </a>
          <ul class="dropdown-menu" bg-dark aria-labelledby="navbarDropdown">
            <div class="container">
                <div class="row">
                    <!--<div class="col text-center">
                        <li><a class="dropdown-item" href="#">
            <a type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop"><svg style="width: 20px; height: 20px; color: yellow" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
                </svg></a>
                </a></li>
                    </div>-->
                    <div class="col">
                        <li><a class="dropdown-item">
            <a class="btn btn-primary" href="/auth/exit.php" onclick="return confirm(`Выйти из системы?`)"><svg style="width: 20px; height: 20px; color: black" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
                  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
                </svg></a>
            </a></li>
                    </div>
                    
                </div>
            </div>
            
            <li><a class="dropdown-item" href="#">
            
</a></li>
          </ul>
        </li>
                </div>
              </div>
            </nav>';
    return $header;
}

/*Осносной блок контента*/
function GetMainBlock() {
    $main = '<br>'."
    <div class='container-fluid' style='padding: 0'>
        <div class='row'>
            <div class='col-3'>
            <ul class='list-group'>
              <li class='list-group-item'><a href='index.php?data=1'>Работа с данными</a></li>
              <li class='list-group-item'><a href='index.php?reports=1'>Отчёты</a></li>
              <li class='list-group-item'><a href='index.php?impexp=1'>Импорт / экспорт данных</a></li>
              <li class='list-group-item'><a href='index.php?logs=1'>Журнал логов</a></li>
            </ul>
            </div>
            <div class='col-9'>
            
            </div>
        </div>
    </div>       
    ";
    return $main;
}


function GetParentCollapseOpen() {
     $parent_collapse = '<div class="container"><div class="accordion" id="accordionExample">';
     return $parent_collapse;
}
function GetCollapse($id,$text,$array_link,$array_get) {
    $fuck = '';
    $collapse = '
    <!--Тут можно установить фон-->
        
        <div class="card">
            <div class="card-header" id="heading'.$id.'">
              <h2 class="mb-0">
                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapse'.$id.'" aria-expanded="false" aria-controls="collapse">
                  '.$text.'
                </button>
              </h2>
    </div>
    <div id="collapse'.$id.'" class="collapse" aria-labelledby="heading'.$id.'" data-parent="#accordionExample">
      <div class="card-body">';

    for ($i=0;$i<count($array_link);$i++) {
        $fuck .= "<a style='text-decoration: none' href='index.php?$array_get[$i]=1'>$array_link[$i]</a><br><br>";

    }

    $collapse3 = '</div>
    </div>
  </div>';
    return $collapse.$fuck.$collapse3;
}

function GetParentCollapseClose() {
     $parent_collapse_close = '</div></div>';
     return $parent_collapse_close;
}






function getSettingsModalWindow() {
    $style = 'style = "width: 70px; height: 35px;"';
    $modal = '<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Выбор темы</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <h6>Тут можно выбрать тему, которая Вам нравится</h6>
                        <form action="/settings/update_theme.php">
                        <label '.$style.' for="i1" class="btn btn-primary"></label>
                        <input name="1" type="radio" id="i1"><br><br>
                        <label '.$style.' for="i2" class="btn btn-secondary"></label>
                        <input name="1" type="radio" id="i2"><br><br>
                        <label '.$style.' for="i3" class="btn btn-success"></label>
                        <input name="1" type="radio" id="i3"><br><br>
                        <label '.$style.' for="i4" class="btn btn-danger"></label>
                        <input name="1" type="radio" id="i4"><br><br>
                        <label '.$style.' for="i5" class="btn btn-warning"></label>
                        <input name="1" type="radio" id="i5"><br><br>
                        <label '.$style.' for="i6" class="btn btn-info"></label>
                        <input name="1" type="radio" id="i6"><br><br>
                        <label '.$style.' for="i7" class="btn btn-light"></label>
                        <input name="1" type="radio" id="i7"><br><br>
                        <label '.$style.' for="i8" class="btn btn-dark"></label>
                        <input name="1" type="radio" id="i8"><br><br>
                        <label '.$style.' for="i9"class="btn btn-link"></label>
                        <input name="1" type="radio" id="i9">
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
                        <button type="button" class="btn btn-primary">Сохранить</button>
                      </div>
                    </div>
                  </div>
                </div>';
    return $modal;
}





function GetForm($get) {
    $select_field_for_input = get_records_sql('bsu_form_data',"get_name = '$get'");
    echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	      <script src="/main.js"></script>';
    echo '<div class="container">
            <div class="row">
            <div class="col">';
    echo '<form id="form" name="form" action="/add_script.php" method="post" style="width: 400px; margin: auto; margin-top: 20px;">';
    $name = 0;
    while ($select_field_for_input1 = mysqli_fetch_assoc($select_field_for_input)) {
        $type = $select_field_for_input1['type_name'];
        $required = $select_field_for_input1['requred'];
        /*В переменной $required хранится обязательность заполнения*/
        if ($required==1) {
            /*Если в базе 1, то обязательно заполнять*/
            $required = 'required';
        }
        /*Иначе не обязательно, ставим пустой текст*/
        else {
            $required = '';
        }
        if ($type!='list') {
            echo '<div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">'.$select_field_for_input1['descriptor_n'].'</label>
            <input '.$required.' type="'.$type.'" name="name'.$name.'" class="form-control" id="exampleFormControlInput1">
        </div>
        ';
        }
        else {
        $listbox = get_records_sql('ref_country','');
            /*Если листбокс - тянем БД*/
            echo '<div class="mb-3">';
            echo '<label for="exampleFormControlInput1" class="form-label">'.$select_field_for_input1['descriptor_n'].'</label>
                  <select name="name'.$name.'" class="form-select" aria-label="Default select example" id="exampleFormControlInput1">
                    <option name="name'.$name.'">Выберите страну</option>';
            while ($query_country = mysqli_fetch_assoc($listbox)) {

                echo '<option name="name'.$name.'">'.$query_country['name'].'</option>';
            }
            echo '</select>';
            echo '</div>';
    }
    $name++;
    }

    echo "<input name='pos' value='$name' type='hidden'>";
    echo "<input name='table' value='$get' type='hidden'>";
    echo '
    <footer>
        <h4 style="color: black;display: none" class="spasibo_text">Запись сохранена ✔</h4>
    </footer>
    ';
    echo '<button type="submit" class="btn btn-success">Сохранить</button>';
    echo '</div></div></div><form>';
}



function GetFormUpd($get,$red) {
    echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	      <script src="/main.js"></script>';
    $values = array();
    $datas = get_records_sql($get,"id = $red");
    while ($datas1 = mysqli_fetch_assoc($datas)) {
        unset($datas1['id']);
        unset($datas1['status']);
        /*echo '<pre>';
        var_dump($datas1);
        echo '</pre>';*/


/*        var_dump($field_list = get_field_list($get));*/

        $field_list = get_field_list($get);
        for ($i=1;$i<=count($datas1);$i++) {
            $values[] = $datas1[$field_list[$i]];
        }

    }

    $select_field_for_input = get_records_sql('bsu_form_data',"get_name LIKE '$get%'");

    echo '<div class="container">
            <div class="row">
            <div class="col text-center">';

    echo '<form name="form1" id="form1" method="post" action="/update_script.php" style="width: 400px; margin: auto; margin-top: 20px;">';
    $name = 0;
    $field_counter = 0;
    while ($select_field_for_input1 = mysqli_fetch_assoc($select_field_for_input)) {
        $type = $select_field_for_input1['type_name'];
        if ($type!='list') {
            echo '<div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">'.$select_field_for_input1['descriptor_n'].'</label>
            <input value="'.$values[$field_counter].'" type="'.$type.'" name="name'.$name.'" class="form-control" id="exampleFormControlInput1">
        </div>
        ';
        }
        else {
            $listbox = get_records_sql('ref_country','');
            /*Если листбокс - тянем БД*/
            echo '<div class="mb-3">';
            echo '<label for="exampleFormControlInput1" class="form-label">'.$select_field_for_input1['descriptor_n'].'</label>
                  <select name="name'.$name.'" class="form-select" aria-label="Default select example" id="exampleFormControlInput1">
                    <option name="name'.$name.'">'.$values[$field_counter].'</option>';
            while ($query_country = mysqli_fetch_assoc($listbox)) {

                echo '<option name="name'.$name.'">'.$query_country['name'].'</option>';
            }
            echo '</select>';
            echo '</div>';
        }
        $name++;
        $field_counter++;
    }
    /*Используется для определения количества постов для обновления данных*/
    $get = $_GET['table'];
    $red = $_GET['red'];
    echo "<input name='pos' value='$name' type='hidden'>";
    echo "<input name='table' value='$get' type='hidden'>";
    echo "<input name='red' value='$red' type='hidden'>";
    echo '
    <footer>
        <h4 style="color: black;display: none" class="spasibo_text1">Запись № '.$red.' обновлена ✔</h4>
    </footer>
    ';
    echo '<button type="submit" class="btn btn-success">Обновить</button>';
    echo '</div></div></div><form>';
}


function GetCollapseReports($id,$text,$label_name) {
    $fuck = '';
    $collapse = '
    <!--Тут можно установить фон-->
        
        <div class="card">
            <div class="card-header" id="heading'.$id.'">
              <h2 class="mb-0">
                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapse'.$id.'" aria-expanded="false" aria-controls="collapse">
                  '.$text.'
                <svg style="color: black;width: 15px;height: 15px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down" viewBox="0 0 16 16">
                    <path d="M3.204 5h9.592L8 10.481 3.204 5zm-.753.659 4.796 5.48a1 1 0 0 0 1.506 0l4.796-5.48c.566-.647.106-1.659-.753-1.659H3.204a1 1 0 0 0-.753 1.659z"/>
                </svg>
                </button>
              </h2>
    </div>
    <div id="collapse'.$id.'" class="collapse" aria-labelledby="heading'.$id.'" data-parent="#accordionExample">
      <div class="card-body">';

    $linkes = get_records_sql('administration_table_link',"linkname = '$text'");

    while ($linkes1 = mysqli_fetch_assoc($linkes)) {
        $get_param = $linkes1['link_get'];
    }

    $linkes_list = get_records_sql('bsu_form_data',"get_name = '$get_param'");
    echo '<form method="post" action="/reports/excel_report.php">';
    $l=0;
    while ($linkes_list1 = mysqli_fetch_assoc($linkes_list)) {
        $fuck .= '<div class="form-check">
  <input name="name'.$l.'" class="form-check-input" type="checkbox" value="'.$linkes_list1['descriptor_n'].'" id="'.$label_name.$l.'">
  <label class="form-check-label" for="'.$label_name.$l.'">
    '.$linkes_list1['descriptor_n'].'
  </label>
  
</div>';
            $l++;
    }
    $button = '<input name="k" type="hidden" value="'.$l.'">
               <input name="table" type="hidden" value="'.$get_param.'">
               <button class="btn btn-warning" type="submit">Сформировать отчёт</button>';

    $collapse3 = '</div>
    </div>
  </div></form>';
    return $collapse.$fuck.$button.$collapse3;
}
