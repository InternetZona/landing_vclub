{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1920&h=1080&zc=1&aoe=0&far=0"
]}

<section id="seventh-block" class="parallax-container">    
    <div class="parallax"><img src="{snippet name="phpthumbon" params=$thumb}"></div>
    <div class="container">
        <div class="block-title text-depth-4">{$page.pagetitle}</div>
        <div class="block-title text-depth-2">{$page.introtext}</div>
    </div>
</section>