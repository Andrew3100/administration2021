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


function GetIconsContainer() {
    $icons = '
    <div class="container-fluid" style="padding: 0">
        <div class="row">
            <div class="col"><svg style="color: #e8eab5" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16">
  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/>
</svg></div>
            <div class="col"><svg style="color: red" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
</svg></div>
        </div>
    </div>
    ';
    return $icons;
}
