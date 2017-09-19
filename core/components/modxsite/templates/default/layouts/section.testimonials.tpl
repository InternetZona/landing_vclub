<div class="section">
    <div class="block-title text-depth-4">{$page.pagetitle}</div>
        {if $tv = $page.tvs.testimonials.value}
            <div class="row">
                {$testimonials = array_slice(json_decode($tv, true),0,3)}

                {foreach $testimonials as $data}
                    <div class="col s12 m12 l4 testimonial-item">
                        <div class="testimonial-text">{$data.text}</div>
                        <div class="testimonial-client">

                            {assign var=thumb value=[
                                'input' => $data.photo,
                                "options" => "&w=50&h=50&zc=1&aoe=0&far=0"
                            ]}

                            <img src="{snippet name="phpthumbon" params=$thumb}" alt="" class="circle">

                            <span>{$data.name}</span>
                        </div>
                    </div>
                {/foreach}
            </div>
        {/if}
    </div>
</div>