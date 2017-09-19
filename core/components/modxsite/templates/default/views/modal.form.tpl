<form id="modal-form" class="form-horizontal mfp-hide white-popup-block">
    <div class="modal-title">Заказать карту «Без ограничений» со скидкой 10 000 руб.</div>
	<div class="row">
        <div class="input-field col s12 m6">
            <input id="phone_field_3" type="tel" name="phone" class="masked" data-format="+7 (999) 999-99-99">
            <label for="phone_field_3">Номер телефона</label>
        </div>
        <div class="input-field col s12 m6">
            <input id="name_field_3" name="username" type="text">
            <label for="name_field_3">Ваше имя</label>
        </div>
    </div>
	
    <div class="checkbox-field">
        <input type="checkbox" id="confirm_field_3" name="confirm">
        <label for="confirm_field_3">Выражаю согласие на использование, обработку и хранение своих персональных данных согласно <a href="{$modx->makeUrl(13)}" target="_blank">Политике компанни</a></label>
    </div>
    <input type="hidden" name="action" value="send">
    <button type="submit" class="btn btn-default btn-block" onclick="yaCounter28299166.reachGoal('zakazalkartu');">Заказать карту</button>
</form>