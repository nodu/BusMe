$ ->
  BusMe.map = L.map('map').setView([22.2783, 114.1589], 13);
  # window.map = L.map('map')
  
  L.tileLayer('http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
      maxZoom: 18
  }).addTo(BusMe.map)
  
  L.Icon.Default.imagePath = "/assets"

  # Use GPS/WIFI to find current location, change viewport to their, and watch for location changes
  # BusMe.map.locate({setView: true, maxZoom: 13, watch: true})
  BusMe.map.locate({maxZoom: 13, watch: true})

  # Set marker/accuracy circle on found location
  onLocationFound = (e) ->
    radius = e.accuracy / 2

    L.marker(e.latlng).addTo(BusMe.map)
        # .bindPopup("You are within " + radius + " meters from this point").openPopup()
        .bindPopup("You are within " + radius + " meters from this point")

    L.circle(e.latlng, radius).addTo(BusMe.map)
    
    

  # Add markers where you click!
  onMapClick = (e) ->
    L.marker(e.latlng).addTo(BusMe.map).bindPopup('<a id=\'new-item\' href="#">New Bus?</a>')
    L.popup()
      .setLatLng(e.latlng)
      .setContent("You clicked the map at " + e.latlng.toString())
      .openOn(BusMe.map)
  
  # Set listeners for click and location found
  BusMe.map.on('click', onMapClick)
  BusMe.map.on('locationfound', onLocationFound)

  # marker = L.marker([22.27, 114.15]).addTo(map)
  # marker.bindPopup("<b>Hello WDI!</b><br>What's for lunch?")



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

  # map.addLayer(points)
  # map.removeLayer(points)







  