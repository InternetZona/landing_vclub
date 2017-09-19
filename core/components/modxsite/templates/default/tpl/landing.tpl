{extends file="index.tpl"}

{block name=layouts}
    {include file="layouts/section.first.tpl" page=$result.object[1]}
    {include file="layouts/section.second.tpl" page=$result.object[2]}
    {include file="layouts/section.thrid.tpl" page=$result.object[3]}
    {include file="layouts/section.fourth.tpl" page=$result.object[4]}
    {include file="layouts/section.fifth.tpl" page=$result.object[5]}
    {include file="layouts/section.sixth.tpl" page=$result.object[6]}

    {assign var=thumb value=[
        'input' => 'assets/components/modxsite/templates/default/images/demo/ornaments.jpg',
        "options" => "&w=1080&h=1920&zc=1&aoe=0&far=0"
    ]}

    <section class="z-depth-2" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">
        <div class="container">
            {include file="layouts/section.featured.tpl" page=$result.object[16]}
            {include file="layouts/section.testimonials.tpl" page=$result.object[10]}
        </div>
    </section>
    
    {include file="layouts/section.seventh.tpl" page=$result.object[7]}
    {include file="layouts/section.eighth.tpl" page=$result.object[8]}
    {include file="layouts/section.ninth.tpl" page=$result.object[9]}
{/block}

{block name=modal}
    {include file="views/modal.form.tpl"}
{/block}