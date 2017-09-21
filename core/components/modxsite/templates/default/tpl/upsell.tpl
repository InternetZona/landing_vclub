{extends file="index.tpl"}

{block name=processor}
    {assign var=params value=[
        'where' => [
            'id' => 1
        ],
        'showhidden' => true,
        'showunpublished' => true,
        'limit' => 0
    ]}
{/block}

{block name=layouts}

    {assign var=thumb value=[
        'input' => {tv name=background},
        "options" => "&w=1920&h=1080&zc=1&aoe=0&far=0"
    ]}

<section id="upsell-block" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">
    <div class="container">
        <div class="block-title text-depth-4">{field name=pagetitle}</div>
        <p class="title-desc center-align">Мы перезвоним Вам в ближайшее время.</p>

        <div class="card" style="margin-top: 30px;">
            <div class="card-content">
        
                <div class="row">

                    <div class="col s12 m12  push-l2 l8">
                        <div class="text-box">
                            <p>Если Вы планируете посещать клуб вместе с семьёй, другом, подругой, то мы предлагаем Вам забронировать 2 карты <span style="white-space:nowrap;">«Без ограничений»</span> 
                            с еще большей скидкой!</p>
                            <p>Скидка 13 000 рублей! Экономия 26 000 рублей при заказе 2 карт.</p>
                            <p>Закажите 2 карты сейчас и приходите в Vavilov Club на презентацию.</p>
                        </div>  
                    </div>

                    <div class="col s12 push-m2 m8 l5">
                        <div class="image-wrapper">
                            <img src="{$template_url}images/card/upsell_cena.png" class="responsive-img">
                            <img src="{$template_url}images/card/upsell_card.png" class="responsive-img">
                        </div>
                    </div>

                    <div class="col s12 push-m2 m8 push-l1 l6 push-xl2 xl5">           
                        
                        <form id="upsell-form" class="z-depth-2 grey darken-4"  style="margin-top: 40px;">
                            <div class="form-title center-align">Количество карт ограничено</div>
                            <div class="input-field">
                                <input id="phone_field_1" type="tel" name="phone" class="masked" data-format="+7 (999) 999-99-99">
                                <label for="phone_field_1">Номер телефона</label>
                            </div>
                            <div class="input-field">
                                <input id="name_field_1" name="username" type="text">
                                <label for="name_field_1">Ваше имя</label>
                            </div>
                            <div class="checkbox-field">
                                <input type="checkbox" id="confirm_field_1" name="confirm">
                                <label for="confirm_field_1">Выражаю согласие на использование, обработку и хранение своих персональных данных согласно <a href="{$modx->makeUrl(13)}" target="_blank">Политике компанни</a></label>
                            </div>
                            <input type="hidden" name="action" value="send_upsell">
                            <button class="btn waves-effect waves-light" type="submit" onclick="yaCounter28299166.reachGoal('zakaz2kart');">Заказать
                                <i class="material-icons right">send</i>
                            </button>
                        </form>
                    </div>
                </div>

                <p>Для дальнейшего ознакомления с сайтом рекомендуем перейти на главную страницу.</p>
            </div>

            <div class="card-action">
                <a href="{$modx->makeUrl(1)}">Перейти на главную</a>
            </div>
        
        </div>
    </div>
</section>
{/block}

{block name=gMap}{/block}