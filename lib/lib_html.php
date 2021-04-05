<?php
include 'bootstrap/template.html';
include 'lib.php';

/*Шапка*/
function GetHeader($color) {
    $header = '<nav class="navbar navbar-expand-lg navbar-light bg-'.$color.'">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                        Dropdown
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                  </ul>
                  <form class="d-flex">
                    <input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>
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
                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapse'.$id.'" aria-expanded="false" aria-controls="collapse'.$id.'">
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



