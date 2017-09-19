{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1080&h=1920&zc=1&aoe=0&far=0"
]}

<section id="second-block" class="z-depth-2" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">
    <div class="container">
        <div class="block-title text-depth-4">
            {$page.pagetitle}
        </div>
        <div class="row">
            <div class="col push-m1 m10 push-l2 l8">
                <div class="content-wrapper">
                    {$page.content}
                </div>
            </div>
        </div>
    </div>
</section>