
<?php
    include 'bootstrap/template.html';
?>
<br><br><br><div class='container-fluid'>
    <div class='row'>
        <div class='col-3'>
            <ul class='list-group '>
                <a style="text-decoration: none" class="text-white" href='index.php?data=1'><li class='list-group-item bg-dark text-center'>Работа с данными</a></li>
                <a style="text-decoration: none" class="text-white" href='index.php?reports=1'><li class='list-group-item bg-dark text-center'>Отчёты</a></li>
                <a style="text-decoration: none" class="text-white" href='index.php?impexp=1'><li style="display: none" class='list-group-item bg-dark text-center'>Импорт / экспорт данных</a></li>
                <?php if (is_site_admin()) {
                echo "<a style='text-decoration: none' class='text-white' href='index.php?logs=1'><li class='list-group-item bg-dark text-center'>Журнал логов</a></li>";
                } ?>

            </ul>
        </div>
        <div class='col-9'>
        <?php
        $array = array('och','zaoch','aus','science','aus_contract','mobile','change','grant','cult_event','cult_contract','inter_events','ekonom_contract','youth');
        if (   $_GET['och']
            OR $_GET['zaoch']
            OR $_GET['aus']
            OR $_GET['international']
            OR $_GET['international_document']
            OR $_GET['mobile']
            OR $_GET['change']
            OR $_GET['grant']
            OR $_GET['cult_event']
            OR $_GET['cult_doc']
            OR $_GET['ec_events']
            OR $_GET['ec_document']
            OR $_GET['young']
            OR $_GET['sport_inter']
            OR $_GET['sport_doc']
            OR $_GET['work']) {
            include 'menu/tables.php';
            echo '
        <div class="container">
            <div class="row">
                <div class="col text-center">
                <a title="Добавить запись" target="_blank" href="add_form.php?table='.gpr().'"><svg style="width: 35px; height: 35px; color: #28a444" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                </svg></a>
                </div>
            </div>
        </div>
        ';
        }
        else {
            GetParam();
        }

        ?>
        </div>
    </div>
</div>
