<?php

/*
Процессор, определяющий по запрошенному действию какой процессор выполнять
*/


class modSiteWebPublicActionProcessor extends modProcessor{
    
    protected static $actualClassName;
    
    public static function getInstance(modX &$modx,$className,$properties = array()) {

        // Здесь мы имеем возможность переопределить реальный класс процессора
        if(!empty($properties['action']) && !self::$actualClassName){
             
            switch($properties['action']){
                

                case 'send':
                    require_once MODX_CORE_PATH . 'components/modxsite/processors/web/sendmail.class.php';
                    self::$actualClassName = "modSiteWebSendmailProcessor";
                    break; 
                
                case 'send_upsell':
                    $properties['subject'] = "Upsell Заказ 2 карт «Без ограничений» по 50 тыс. руб.";
                    require_once MODX_CORE_PATH . 'components/modxsite/processors/web/sendmail.class.php';                    
                    self::$actualClassName = "modSiteWebSendmailProcessor";
                    break;

                default:;
            } 
        }
        
        if(self::$actualClassName){
            $className = self::$actualClassName;
            return $className::getInstance($modx,$className,$properties);
        }

        return parent::getInstance($modx,$className,$properties);
    }
    
    
    public function process(){
        
        $error = 'Действие не существует или не может быть выполнено';
        $this->modx->log(xPDO::LOG_LEVEL_ERROR, __CLASS__ . " - {$error}");
        $this->modx->log(xPDO::LOG_LEVEL_ERROR, print_r($this->getProperties(), true));
        return $this->failure($error);
    }
    
}

return 'modSiteWebPublicActionProcessor';