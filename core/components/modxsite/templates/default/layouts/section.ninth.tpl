{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1080&h=1920&zc=1&aoe=0&far=0"
]}
<section id="ninth-block" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">

    <div class="container">
        <div class="block-title text-depth-4">{$page.pagetitle}</div>
        <div class="content-wrapper">
            {$page.content}
        </div>
    </div>
    <div id="map" height="400"></div>
</section>