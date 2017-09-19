<header>
    <div class="container">
        <div class="row nomargins">
            <div class="col s3 hide-on-med-and-up">
                <img src="{$template_url}images/logo.png" alt="" class="responsive-img">
            </div>
            <div class="col s9 m5 l3 xl3">
                <i class="tiny material-icons">phone_in_talk</i> 
                <span>{$contacts.phone}</span>
            </div>
            <div class="col m7 l4 xl4 hide-on-small-only">
                <i class="tiny material-icons">access_time</i> 
                <span>{$contacts.worktime}</span>
            </div>
            <div class="col l5 xl5 hide-on-med-and-down">
                <i class="tiny material-icons">location_on</i> 
                <span>{$contacts.address}</span>
            </div>
        </div>
    </div>
</header>