{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1920&h=1080&zc=1&aoe=0&far=0"
]}

<section id="fifth-block" class="parallax-container">
    <div class="parallax"><img src="{snippet name="phpthumbon" params=$thumb}"></div>
    <div class="container">
        <div class="block-title text-depth-4">{$page.pagetitle}</div>
        <div class="block-title text-depth-2">{$page.introtext}</div>
        <div class="row">
            <div class="col push-m1 m10 push-l1 l10 center-align">                
                <a class="waves-effect waves-light btn btn-large z-depth-2 popup-with-form" href="#modal-form" onclick="yaCounter28299166.reachGoal('knopzakazkartu');">
                    Заказать карту «Без ограничений» со скидкой 10 000 руб.
                </a>
            </div>
        </div>
    </div>
</section>