
<?php
    include 'bootstrap/template.html';
?>
<br><br><br><div class='container-fluid'>
    <div class='row'>
        <div class='col-3'>
            <ul class='list-group '>
                <a style="text-decoration: none" class="text-white" href='index.php?data=1'><li class='list-group-item bg-dark text-center'>Работа с данными</a></li>
                <a style="text-decoration: none" class="text-white" href='index.php?reports=1'><li class='list-group-item bg-dark text-center'>Отчёты</a></li>
                <a style="text-decoration: none" class="text-white" href='index.php?impexp=1'><li class='list-group-item bg-dark text-center'>Импорт / экспорт данных</a></li>
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
            OR $_GET['young']) {
            include 'menu/tables.php';
        }
        else {
            GetParam();
        }
        ?>
        </div>
    </div>
</div>
