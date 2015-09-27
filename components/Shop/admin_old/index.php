<?php
global $SHOP_ADMIN_TEST_MOD;
$SHOP_ADMIN_TEST_MOD = TRUE;
                
function createdDir($dirUpload) {
    if (!file_exists($dirUpload)) { 
        mkdir($dirUpload, 0777, true);
        chmod($dirUpload, 0777);
    }
}
$path = './resources/Components/Shop/';
$dirs = array('ImportFilesMySQL', 'ImportFilesXML', 'ImportLogsHtml', 'ImportLogsText');
foreach ($dirs as $value) {
    createdDir($path.$value);
}
$mainPanelUI = new AdminPanel_ComponentPanelUI_Main();
$mainPanelUI->addElement('importUnloadingShop', 'Импортировать выгрузку', 'shopImportXMLtoMYSQL.php');
$mainPanelUI->addElement('restartImportShop', 'Повторный запуск импорта', 'restartImportShopUI.php');
$mainPanelUI->addElement('removeUnloadingShop', 'Удалить выгрузку (backUp)', 'removeUnloadingShopUI.php');
$mainPanelUI->addElement('viewLogsShop', 'Просмотр логов', 'viewLogsShopUI.php');
$mainPanelUI->addElement('uploadImagesItemsShop', 'Залить изображения товаров и иконки групп', 'uploadImagesItemsShopUI.php');
$mainPanelUI->addElement('changeProductShop', 'Изменение товара', 'changeProductShopUI.php');
$mainPanelUI->addElement('changeGroupShop', 'Изменение группы', 'changeGroupShopUI.php');
$mainPanelUI->addElement('scalarUnitsShop', 'Скалярные единицы измерения', 'scalarUnitsShopUI.php');
$mainPanelUI->addElement('prefixesScalarUnitsShop', 'Префиксы скалярных единиц измерения', 'prefixesScalarUnitsShopUI.php');
$mainPanelUI->getUI();