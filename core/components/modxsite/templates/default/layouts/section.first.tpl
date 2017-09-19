{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1920&h=1080&zc=1&aoe=0&far=0"
]}

<section id="first-block" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">
    <div class="container">
        <div class="row">
            <div class="col m3 hide-on-small-only">
                <img src="{$template_url}images/logo.png" alt="" class="responsive-img">
            </div>
            <div class="col s12 m9">
                <div class="block-title text-depth-4">{$page.introtext}‎</div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 push-m2 m8 l6 xl7">
                <div class="image-wrapper">
                    <img src="{$template_url}images/card/cena2.png" class="responsive-img">
                    <img src="{$template_url}images/card/karta.png" class="responsive-img">
                </div>
            </div>
            <div class="col s12 m12 l6 xl5">                
                <div class="col s12 m6 l12">
                    <div class="countdown-wrapper">
                        <!--<div class="countdown-title white-text">Акция <br> на безлимитные карты <span>до 15 сентября</span></div>-->
                        <div class="countdown-desc">До конца акции:</div>
                        <div class="countdown" data-from="{$page.tvs.eventoff.value}"></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col s12 m6 l12">                    
                    <form id="first-block-form" class="z-depth-2 grey darken-4">
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
                        <input type="hidden" name="action" value="send">
                        <button class="btn waves-effect waves-light" type="submit" onclick="yaCounter28299166.reachGoal('karta_shapka');">Заказать
                            <i class="material-icons right">send</i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>