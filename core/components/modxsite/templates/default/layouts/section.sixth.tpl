<div id="sixth-block">

    {if $tv = $page.tvs.gallery.value}

        {$gallery = json_decode($tv, true)}

        <div class="cbp gallery">
            
            {foreach $gallery as $item}
                <div class="cbp-item">
                    <a href="{$item.image}" class="cbp-caption cbp-lightbox">
                        <div class="cbp-caption-defaultWrap img-wrapper--shadow">
                            {assign var=thumb value=[
                                'input' => $item.image,
                                "options" => "&w=640&h=480&zc=1&aoe=0&far=0"
                            ]}
                            <img src="{snippet name="phpthumbon" params=$thumb}" alt="">
                        </div>
                    </a>
                </div>
            {/foreach}
        </div>

    {/if}
    
</div>