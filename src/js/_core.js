(function($) {

    var scripts = {};

    $.App = {
        init: function(settings) {
            var defaults = {
                plugin_path:    'assets/components/modxsite/templates/default/'
            };

            $.extend(defaults, settings);
            this.settings = defaults;

            $.App.utilites.loadScript("libs/materialize/js/materialize.min.js", function() {
                Waves.displayEffect();
                $('.modal').modal();
                $('.parallax').parallax();
            });

            var $countdowns = $('.countdown');

            if ( $countdowns.length > 0 ) {
                
                $.App.utilites.loadScript("libs/countdown/jquery.countdown.pack.min.js", function() {

                    $countdowns.each(function() {
                        var $this = $(this),
                            date = $this.attr('data-from');

                        if (date) {
                            var d = new Date(date);
                            $this.countdown({
                                until: new Date(d),
                                labels: ['Лет', 'Месяцев', 'Недель', 'Дней', 'Часов', 'Минут', 'Секунд'],
                                labels1: ['Год', 'Месяц', 'Неделя', 'День', 'Час', 'Минута', 'Секунда'],
                                labels2: ['Года', 'Месяца', 'Недели', 'Дня', 'Часа', 'Минуты', 'Секунды'],
                                compactLabels: ['л', 'м', 'н', 'д'], compactLabels1: ['г', 'м', 'н', 'д'],
                                whichLabels: function(amount) {
                                    var units = amount % 10;
                                    var tens = Math.floor((amount % 100) / 10);
                                    return (amount == 1 ? 1 : (units >= 2 && units <= 4 && tens != 1 ? 2 :
                                        (units == 1 && tens != 1 ? 1 : 0)));
                                },
                                digits: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
                                timeSeparator: ':', isRTL: false
                            });
                        }
                    });
                });
            }

            var _container = jQuery('input.masked');
            if(_container.length > 0) {
    
                $.App.utilites.loadScript('libs/form.masked/jquery.maskedinput.js', function() {
                    
                    _container.each(function() {
                    
                        var _t 				= jQuery(this);
                            _format 		= _t.attr('data-format') 		|| '(999) 999-999999',
                            _placeholder 	= _t.attr('data-placeholder') 	|| 'X';
    
                        jQuery.mask.definitions['f'] = "[A-Fa-f0-9]";
                        _t.mask(_format, {placeholder:_placeholder});
    
                    });
                    
                });
    
            } 
            
            var $forms = $('form');

            if ($forms.length > 0) {

                $.App.utilites.loadScript("libs/form.validate/jquery.validation.min.js",function() {
                    $forms.each(function(){
                        var $this = $(this);

                        $.App.form($this);
                    });
                });
            }
    

            var $modal = $('.popup-with-form');

            if ($modal.length > 0) {
                
                $.App.utilites.loadScript("libs/magnific-popup/jquery.magnific-popup.min.js",function() {
                    $modal.magnificPopup({
                        type: 'inline',
                        preloader: false,
                        callbacks: {
                            afterClose: function() {
                                jQuery('.popup-form').trigger('reset');
                            }
                        }
                    });
                });
            
            }

            var $gallery = $('.gallery');

            if ($gallery.length > 0) {
                $.App.utilites.loadScript("libs/cubeportfolio/js/jquery.cubeportfolio.min.js", function() {

                    $gallery.cubeportfolio({
                        layoutMode: 'mosaic',
                        sortToPreventGaps: true,
                        defaultFilter: '*',
                        animationType: 'fadeOutTop',
                        gapHorizontal: 0,
                        gapVertical: 0,
                        gridAdjustment: 'responsive',
                        mediaQueries: [{
                            width: 993,
                            cols: 4
                        }, {
                            width: 601,
                            cols: 2
                        }, {
                            width: 320,
                            cols: 1
                        }],
                        caption: 'zoom',
                        displayType: 'lazyLoading',
                        displayTypeSpeed: 100,
            
                        // lightbox
                        lightboxDelegate: '.cbp-lightbox',
                        lightboxGallery: true,
                        lightboxTitleSrc: 'data-title',
                        lightboxCounter: '<div class="cbp-popup-lightbox-counter">{{current}} of {{total}}</div>',
                        showNavigation: true
                    });
            
                });
            }
        },
        form: function($form) {
            $form.validate({
                submitHandler: function( form ){
                    return false;
                },
                errorPlacement: function(error, element) {
                    if (element.attr('type') == 'checkbox'){
                        element.closest('.checkbox-field')
                            .addClass('error');
                    }
                    return true;
                },

                highlight: function(element, errorClass, validClass) {
                    $(element).addClass(errorClass).removeClass(validClass);
                    if ($(element).attr('type') == 'checkbox'){
                        $(element).closest('.checkbox-field').addClass(errorClass);
                    }
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).removeClass(errorClass).addClass(validClass);
                    if ($(element).attr('type') == 'checkbox'){
                        $(element).closest('.checkbox-field').removeClass(errorClass);
                    }
                },
                rules: {
                    username: {
                        required: true
                    },
                    phone: {
                        required: true
                    },
                    confirm: {
                        required: true
                    }
                }
            });

            $form.on('submit', function(e){
                e.preventDefault();

                var $this = $(this);

                if (!$this.valid()) return false;

                $.ajax({
                    url: 'assets/components/modxsite/connectors/connector.php',
                    data: $this.serialize(),
                    method: 'post',
                    beforeSend: function() {
                        $this.find('[type="submit"]')
                            .addClass('disabled');
                    },
                    success: function(response) {

                        if (response.success) {
                            switch ( $this.attr('id') ) {
                                case 'upsell-form' : 
                                    window.location.href = window.location.origin + "/thanks/";
                                    break;
                                default: window.location.href = window.location.origin + "/thanks-upsell/";
                            }
                        }

                    },
                    complete: function () {
                        $this.find('[type="submit"]')
                        .removeClass('disabled');
                        $this.trigger('reset');
                    }
                });
            });
        },
        utilites: {
            loadScript: function(scriptName, callback) {

                if (!scripts[scriptName]) {

                    scripts[scriptName] = true;
                    
                    var body 		= document.getElementsByTagName('body')[0],
                        script = document.createElement('script');

                    script.type 	= 'text/javascript';
                    script.src 		= $.App.settings.plugin_path + scriptName;
                    script.onload   = callback;

                    body.appendChild(script);                    

                } else if (callback) {
                    callback();
                }
            }
        }
    };

})(jQuery);