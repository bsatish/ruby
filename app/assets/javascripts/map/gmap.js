function initMap() {
        var customMapType = new google.maps.StyledMapType([
            {
              stylers: [
                {hue: '#890000'},
                {visibility: 'simplified'},
                {gamma: 0.5},
                {weight: 0.5}
              ]
            },
            {
              elementType: 'labels',
              stylers: [{visibility: 'off'}]
            },
            {
              featureType: 'water',
              stylers: [{color: '#890000'}]
            }
          ], {
            name: 'Custom Style'
        });
        var customMapTypeId = 'custom_style';

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: {lat: 40.674, lng: -73.946},  // Brooklyn.
          mapTypeControlOptions: {
            mapTypeIds: [google.maps.MapTypeId.ROADMAP, customMapTypeId]
          }
        });

        map.mapTypes.set(customMapTypeId, customMapType);
        map.setMapTypeId(customMapTypeId);
      }