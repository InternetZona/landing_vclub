{extends file="index.tpl"}

{block name=processor}
    {assign var=params value=[
        'where' => [
            'id' => 1
        ],
        'showhidden' => true,
        'showunpublished' => true,
        'limit' => 0
    ]}
{/block}

{block name=layouts}

    {assign var=thumb value=[
        'input' => {tv name=background},
        "options" => "&w=1920&h=1080&zc=1&aoe=0&far=0"
    ]}

    <div id="page" class="parallax-container">
        <div class="parallax"><img src="{snippet name="phpthumbon" params=$thumb}"></div>
        <div class="container">
            <div class="block-title text-depth-4">{field name=pagetitle}</div>
            {if {field name=content}}
                <div class="row">
                    <div class="col s12 m12 push-l1 l10 push-xl2 xl8">
                        <div class="card">
                            <div class="card-content">
                            {field name=content}
                            </div>
                            <div class="card-action">
                                <a href="{$modx->makeUrl(1)}">Перейти на главную</a>
                            </div>
                        </div>
                    </div>
                </div>
            {/if}
        </div>
    </div>
{/block}

{block name=gMap}{/block}