{assign var=thumb value=[
    'input' => $page.tvs.background.value,
    "options" => "&w=1080&h=1920&zc=1&aoe=0&far=0"
]}
<section id="fourth-block" class="z-depth-2" style="background-image: linear-gradient(rgba(20,20,20, .5), rgba(20,20,20, .5)), url({snippet name="phpthumbon" params=$thumb});">
    <div class="container">
        <div class="block-title text-depth-4">{$page.pagetitle}</div>

        {if $tv = $page.tvs.listing.value}

            {$listing = json_decode($tv, true)}

            <div class="row">

                {foreach $listing as $item}
                    <div class="col s12 m6 l4 list-item">
                        <figure>
                            {assign var=thumb value=[
                                'input' => $item.image,
                                "options" => "&w=400&h=400&zc=1&aoe=0&far=0"
                            ]}
                            <img src="{snippet name="phpthumbon" params=$thumb}" class="responsive-img" alt="{$item.title}">                    
                        </figure>
                        <div class="caption-title">{$item.title}</div>
                        <div class="caption-desc">{$item.desc}</div>
                    </div>
                {/foreach}

            </div>

        {/if}

    </div>
</section>