{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1080&h=1920&zc=1&aoe=0&far=0"
]}
<section id="eighth-block" class="z-depth-2" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">

    <div class="container">

        <div class="block-title text-depth-4">
            {$page.pagetitle}
        </div>

        <div class="row">

            <div class="col s12 m7 l6">
                <div class="image-wrapper">
                    <img src="{$template_url}images/card/karta.png" class="responsive-img">
                    <img src="{$template_url}images/card/cena2.png" class="responsive-img">
                </div>
            </div>
        
            <div class="col s12 m5 l4 push-l2">                
                
                <form id="eighth-block-form" class="z-depth-2 grey darken-4">
                    <div class="input-field">
                        <input id="phone_field_4" type="tel" name="phone" class="masked" data-format="+7 (999) 999-99-99">
                        <label for="phone_field_4">Номер телефона</label>
                    </div>
                    <div class="input-field">
                        <input id="name_field_4" name="username" type="text">
                        <label for="name_field_4">Ваше имя</label>
                    </div>
                    <div class="checkbox-field">
                        <input type="checkbox" id="confirm-field-4" name="confirm">
                        <label for="confirm-field-4">Выражаю согласие на использование, обработку и хранение своих персональных данных согласно <a href="{$modx->makeUrl(13)}" target="_blank">Политике компанни</a></label>
                    </div>
                    <input type="hidden" name="action" value="send">
                    <button class="btn waves-effect waves-light" type="submit" onclick="yaCounter28299166.reachGoal('zakazkartniz');">Забронировать карту
                        <i class="material-icons right">send</i>
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>