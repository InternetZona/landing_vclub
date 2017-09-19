function initMap() {
    var customMapType = new google.maps.StyledMapType([
        {
            stylers: [
                {'saturation': -100},
                {'lightness': 51},
                {'visibility': 'simplified'}
            ]
        },
        {
            elementType: 'labels',
            stylers: [{visibility: 'on'}]
        },
        {
            featureType: 'water',
            stylers: [{color: '#bac6cb'}]
        }
        ], {
            name: 'Vavilov Club'
        });
                  
    var image = new google.maps.MarkerImage(
            'assets/components/modxsite/templates/default/images/marker.png',
            new google.maps.Size(48,54),
            new google.maps.Point(0,0),
            new google.maps.Point(24,54)
        );
                  
    var customMapTypeId = 'custom_style';
                  
    var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 17,
                scrollwheel: false,
                center: {lat: 55.6900292, lng: 37.5625295},
                mapTypeControlOptions: {
                mapTypeIds: [google.maps.MapTypeId.ROADMAP, customMapTypeId]
            }
        });
                  
    var infowindow = new google.maps.InfoWindow;
    infowindow.setContent('<b>Vavilov Club</b>');
                  
    var marker = new google.maps.Marker({
            map: map,
            clickable: false,
            icon: image,
            position: {lat: 55.6900292, lng: 37.5625295},
        });
                  
    map.mapTypes.set(customMapTypeId, customMapType);
    map.setMapTypeId(customMapTypeId);
}