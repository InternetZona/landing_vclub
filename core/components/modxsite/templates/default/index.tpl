<!DOCTYPE html>
<html>
<head>
    {snippet name="MetaX@MetaX"}
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link type="text/css" rel="stylesheet" href="{$template_url}libs/cubeportfolio/css/cubeportfolio.min.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="{$template_url}css/style.min.css"  media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>

    {block name=processor}
        {assign var=params value=[
            'where' => [
                'template:!=' => 3
            ],
            'showhidden' => true,
            'showunpublished' => true,
            'limit' => 0
        ]}
    {/block}

    {processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

    {if $result.success && $result.count > 0}
        <div class="wrapper">
            {include file="layouts/header.tpl" contacts=[
                'phone'     => $result.object[1].tvs.phone.value,
                'address'   => $result.object[1].tvs.address.value,
                'worktime'  => $result.object[1].tvs.worktime.value
            ]}

            {block name=layouts}{/block}
        </div>

        {include file="layouts/footer.tpl"}

        {block name="modal"}{/block}
    {/if}

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="{$template_url}js/scripts.min.js"></script>
    {block name=gMap}
        <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&amp;key=AIzaSyCYbQxooUJ2nnngHqQJscPW9J9dAggbavk&amp;callback=initMap" async="" defer=""></script>
    {/block}
</body>
</html>