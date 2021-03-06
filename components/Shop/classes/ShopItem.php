<?php
/**
 * класс отображения информации по одному товару
 * @author Максим
 */
class ShopItem {

    private $SQL_HELPER;
    private $elementID;
    private $HTML;
    private $data;
    private $price;
    private $imgSizeMidle = "_200x200";

    /**
     * Конструктор класса
     * @global type $_SQL_HELPER
     */
    public function __construct() {
        global $_SQL_HELPER;
        $this->SQL_HELPER = $_SQL_HELPER;
        $this->elementID = ShopPageInfoHelper::shopPageUrlElement();
        $this->getDataItem();
        if ($this->checkElementID()) {
            $this->generateHtml();
        } else {
            $this->generateUrlErrorHtml();
        }
    }

    /**
     * Проверяем есть ил даныне по такому товару
     * @return boolean
     */
    private function checkElementID() {
        if($this->elementID !== NULL) {
            $query = "SELECT count(`id`) as amount FROM `ShopItems` WHERE `id`='".$this->elementID."';";
            $rezult = $this->SQL_HELPER->select($query,1);
            return $rezult['amount'] === '1';
        } else {
            return FALSE;
        }
    }

    /**
     * Генерируем HTML в случае ошибки в URL строке браузера
     */
    private function generateUrlErrorHtml() {
        $this->HTML = '';
        $this->HTML .= '<div class="UrlErrorHtml">';
            $this->HTML .= 'Такого товара в данном разделе нет.';
        $this->HTML .= '</div>';
    }

    /**
     * Получение данных Item
     */
    private function getDataItem() {
        $query = "SELECT * FROM `ShopItems` WHERE `id` = '".$this->elementID."';";
        $this->data = $this->SQL_HELPER->select($query,1);
    }

    /**
     * Получение цены
     */
    private function getPrice() {
        $id = ShopGroupPriceType::getPriceTypeID();
        $query = "SELECT `value` FROM `ShopItemsPrices` WHERE `price` = '".$id."' AND `item` = '".$this->elementID."';";
        $this->price = $this->SQL_HELPER->select($query,1);
    }

    /**
     * Генерируем HTML информации о товаре
     */
    private function generateHtml() {
        $this->getPrice();
        $property = ShopItemDataHelper::getProperty($this->elementID, $this->data['group']);
        $this->HTML = '<div class="ShopItemMainWrapper">';
            $this->HTML .= '<div class="ShopItemLeftBlock">';
            $this->HTML .= '<div class="ShopItemIMG">';
            $this->HTML .= '<a class="fancybox-gallery" href="'.ShopItemDataHelper::getImage($this->elementID, '').'">';
            $this->HTML .= '<img src="'.ShopItemDataHelper::getImage($this->elementID, $this->imgSizeMidle).'" alt="'.$this->data['itemName'].'" title="'.$this->data['itemName'].'">';
            $this->HTML .= '</a>';
            $this->HTML .= '</div>';  // ShopItemIMG
            $this->HTML .= '<div class="ShopItemName">';
            $this->HTML .= $this->data['itemName'];
            $this->HTML .= '</div>';  // ShopItemName
            $this->HTML .= '<div class="ShopItemPrice">';
            if($this->data['pricePer'] == '') {
                $this->data['pricePer'] = 'шт';
            }
            if($this->price['value'] > 0) {
                $this->HTML .= TextGenerator::formattingPrices_RUB($this->price['value']);
                $this->HTML .= "<span class='PricePer'>/".$this->data['pricePer']."</span>";
            }
            $this->HTML .= '</div>';  // ShopItemPrice
            $this->HTML .= ShopItemAmountScale::getAmountScale($this->data['totalAmount'], $this->data['minAmount']);
            $this->HTML .= '<div class="ShopItemBuyButtonWrapper">';
            $this->HTML .= ShopBasketHelper::getDysplayButtonBuy($this->elementID, $this->data['totalAmount'] > 0);
            $this->HTML .= '</div>';  // ShopItemBuyButtonWrapper
            $this->HTML .= '</div>';  // ShopItemLeftBlock
            $this->HTML .= '<div class="ShopItemMainBlock">';
            $this->HTML .= '<div class="ShopItemDescription">';
            $this->HTML .= $this->data['description'];
            $this->HTML .= '</div>';  // ShopItemDescription
            $this->HTML .= '<div class="ShopItemParams">';
            foreach ($property as $property) {
                $this->HTML .= '<div class="ShopItemParam">';
                $this->HTML .= '<div class="ShopItemParamName"><div>';
                $this->HTML .= $property['propertyName'].' :';
                $this->HTML .= '</div></div>';  // ShopItemParamName
                $this->HTML .= '<div class="ShopItemParamValue"><div>';
                $this->HTML .= ShopItemDataHelper::getHtmlAllValue($property, $property['oneOfAllValues'] === "1");
                $this->HTML .= '</div></div>';  // ShopItemParamValue
                $this->HTML .= '</div>';  // ShopItemParam
            }
            $this->HTML .= $this->getShopItemsAmountForShops();
            $this->HTML .= '</div>';  // ShopItemParams
            $this->HTML .= '</div>';  // ShopItemMainBlock
            $this->HTML .= '<div class="clear"></div>';
        $this->HTML .= '</div>';  // ShopItemMainWrapper
    }
    
    private function getShopItemsAmountForShops() {
        $query = "SELECT 
            SIA.`item`, 
            SIA.`storage`, 
            SIA.`value` , 
            SS.`storageName` 
            FROM `ShopItemsAmount` as SIA
            LEFT JOIN `ShopStorages` as SS
            ON SIA.`storage`=SS.`id`
            WHERE SIA.`item` = '".$this->elementID."';";
        $rezult = $this->SQL_HELPER->select($query);
        $out = '<div class="ShopItemsAmountForShops">';
        foreach ($rezult as $value) {
            $out .= '<div class="ShopItemsAmountForShopsBlock">';
            $out .= '<div class="ShopItemsAmountForShopsName">'.$value['storageName'].'</div>';
            $out .= ShopItemAmountScale::getAmountScale($value['value'], $this->data['totalAmount']);
//            $out .= '<div class="clear"></div>';
            $out .= '</div>';
        }
        $out .= '</div>';
        return $out;
    }

    /**
     * выводим HTML
     */
    public function get() {
        echo $this->HTML;
    }

    /**
     * Возвращаем HTML
     * @return string $this->HTML - сгенерированный HTML
     */
    public function getHtml() {
        return $this->HTML;
    }
}
