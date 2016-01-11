# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


initialize = ->
  latlng = new (google.maps.LatLng)(35.709984, 139.810703)
  opts = 
    zoom: 15
    center: latlng
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new (google.maps.Map)(document.getElementById('map_canvas'), opts)
  return
  

initialize2 = ->
  latlng = new (google.maps.LatLng)(35.709984, 139.810703)
  opts = 
    zoom: 6
    center: latlng
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new (google.maps.Map)(document.getElementById('map_canvas'), opts)
  map.setCenter new (google.maps.LatLng)(36.870832, 139.130859)
  points1 = [
    new (google.maps.LatLng)(35.687418, 139.707642)
    new (google.maps.LatLng)(35.174931, 136.900635)
    new (google.maps.LatLng)(36.060756, 136.223602)
    new (google.maps.LatLng)(36.559291, 136.656189)
  ]
  points2 = [
    new (google.maps.LatLng)(35.687418, 139.707642)
    new (google.maps.LatLng)(36.386466, 139.062195)
    new (google.maps.LatLng)(37.906283, 139.042969)
    new (google.maps.LatLng)(39.71511, 140.103149)
  ]
  points3 = [
    new (google.maps.LatLng)(37.906283, 139.042969)
    new (google.maps.LatLng)(39.704545, 141.15509)
  ]
  polyLineOptions1 =
    path: points1
    strokeWeight: 5
    strokeColor: "#0000ff"
    strokeOpacity: "0.5"
  polyLineOptions2 =
    path: points2
    strokeWeight: 5
    strokeColor: "#0000ff"
    strokeOpacity: "0.5"
  polyLineOptions3 =
    path: points3
    strokeWeight: 5
    strokeColor: "#0000ff"
    strokeOpacity: "0.5"
  line1 = new (google.maps.Polyline)(polyLineOptions1)
  line2 = new (google.maps.Polyline)(polyLineOptions2)
  line3 = new (google.maps.Polyline)(polyLineOptions3)
  line1.setMap map
  line2.setMap map
  line3.setMap map
# map.addOverlay line1
#  map.addOverlay line2
#  map.addOverlay line3
#  alert "a1"
  return

$ ->
  $("div#map_canvas").dblclick ->
    initialize2()