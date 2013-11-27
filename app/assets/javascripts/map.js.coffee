$ ->
  # window.map = L.map('map').setView([22.2783, 114.1589], 13);
  window.map = L.map('map')
  
  L.tileLayer('http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
      maxZoom: 18
  }).addTo(map)
  
  L.Icon.Default.imagePath = "/assets"


  map.locate({setView: true, maxZoom: 13, watch: true})

  onLocationFound = (e) ->
    radius = e.accuracy / 2

    L.marker(e.latlng).addTo(map)
        .bindPopup("You are within " + radius + " meters from this point").openPopup()

    L.circle(e.latlng, radius).addTo(map)
    map.addLayer(cities);
    

  popup = L.popup()

  onMapClick = (e) ->
    L.marker(e.latlng).addTo(map).bindPopup('<a id=\'new-item\' href="#">New Bus?</a>')
    popup
      .setLatLng(e.latlng)
      .setContent("You clicked the map at " + e.latlng.toString())
      .openOn(map)
  

  map.on('click', onMapClick)
  map.on('locationfound', onLocationFound)




  marker = L.marker([22.27, 114.15]).addTo(map)
  marker.bindPopup("<b>Hello WDI!</b><br>What's for lunch?")

  # circle = L.circle([22.2783, 114.1589], 500, {
  #   color: 'green',
  #   fillColor: 'green',
  #   fillOpacity: 0.5
  # }).addTo(map)
  # circle.bindPopup("<b>Hello WDI!</b><br>What's for lunch?")

  # polygon = L.polygon([
  #   [22.264, 114.1589],
  #   [22.265, 114.1587],
  #   [22.266, 114.1585]
  #   ]).addTo(map)


  # m1 = L.marker([22.264, 114.1589]).bindPopup('This is on the Peak?')
  # m2    = L.marker([22.265, 114.1587])
  # m3    = L.marker([22.266, 114.1585])
  # pointsArr = []
  # pointsArr.push(m1)
  # pointsArr.push(m2)
  # pointsArr.push(m3)

  # map.addLayer(points)
  # map.removeLayer(points)

  # display all buses in a layer
  # on click of bus, clear all bus's markers(layer) and add the current bus's marker to the map