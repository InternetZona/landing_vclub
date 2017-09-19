{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1080&h=1920&zc=1&aoe=0&far=0"
]}

<section id="thrid-block" class="parallax-container">
    <div class="parallax"><img src="{snippet name="phpthumbon" params=$thumb}"></div>
    <div class="container">
        <div class="block-title text-depth-4">{$page.pagetitle}</div>
        <div class="content-wrapper">
            <div class="row">
                <div class="col s12 push-m2 m8 l12">
                    <ul class="list-unstyled">
                        <li>
                            <div class="number text-depth-4">1</div>
                            <span class="white-text">Заказываете клубную карту по акции</span>
                        </li>
                        <li>
                            <div class="number text-depth-4">2</div>
                            <span class="white-text">Приходите в клуб, мы вам все показываем</span>
                        </li>
                        <li>
                            <div class="number text-depth-4">3</div>
                            <span class="white-text">Оформляете карту со скидкой 10 000 руб.</span>
                        </li>            
                    </ul>
                </div>
            </div>
        </div>
        <div class="block-title text-depth-2"> Количество акционных карт ограничено</div>
        <div class="row">
            <div class="col push-m1 m10 l12 push-xl2 xl10">
                <form id="thrid-block-form" class="row z-depth-2 grey darken-4">
                    <div class="col s12 m6">
                        <div class="input-field">
                            <input id="phone_field_2" name="phone" type="tel" class="masked" data-format="+7 (999) 999-99-99">
                            <label for="phone_field_2">Номер телефона</label>
                        </div>
                    </div>
                    <div class="input-field col s12 m6">
                        <input id="name_field_2" name="username" type="text">
                        <label for="name_field_2">Ваше имя</label>
                    </div>
                    <div class="col s12 m12 l8">
                        <div class="checkbox-field">
                            <input type="checkbox" id="confirm_field_2" name="confirm">
                            <label for="confirm_field_2">Выражаю согласие на использование, обработку и хранение своих персональных данных согласно <a href="{$modx->makeUrl(13)}" target="_blank">Политике компанни</a></label>
                        </div>
                    </div>
                    <input type="hidden" name="action" value="send">
                    <div class="col s12 m12 l4">
                        <button class="btn waves-effect waves-light" type="submit" onclick="yaCounter28299166.reachGoal('zakazana_karta');">Заказать
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>