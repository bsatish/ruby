# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('[data-toggle=offcanvas]').click ->
    $('.row-offcanvas').toggleClass 'active'
    return
  return
  
initMap = ->
  customMapType = new (google.maps.StyledMapType)([
    { stylers: [
      { hue: '#890000' }
      { visibility: 'simplified' }
      { gamma: 0.5 }
      { weight: 0.5 }
    ] }
    {
      elementType: 'labels'
      stylers: [ { visibility: 'off' } ]
    }
    {
      featureType: 'water'
      stylers: [ { color: '#890000' } ]
    }
  ], name: 'Custom Style')
  customMapTypeId = 'custom_style'
  map = new (google.maps.Map)(document.getElementById('map'),
    zoom: 12
    center:
      lat: 40.674
      lng: -73.946
    mapTypeControlOptions: mapTypeIds: [
      google.maps.MapTypeId.ROADMAP
      customMapTypeId
    ])
  map.mapTypes.set customMapTypeId, customMapType
  map.setMapTypeId customMapTypeId
  return