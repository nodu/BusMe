h = "<b>Hello WDI!</b><br>What's for lunch?"

showMarker = (lat, long, htmlPopup) ->
  marker = L.marker([lat, long]).addTo(window.map).bindPopup(htmlPopup)
showMarker "22.27487", "114.20082", h


in templates.js
   # var marker{{id}} = L.marker([{{lat}}, {{long}}]).addTo(map).bindPopup(\"{{name}}\");



# <script>
#       var pointsArr = [];
#       map.removeLayer(points);
#       var marker{{id}} = L.marker([{{lat}}, {{long}}]);
#       pointsArr.push(marker{{id}});
#       var points = L.layerGroup(pointsArr);
#       map.addLayer(points)

#     </script>
"

layer.push( 
  L.marker([{{lat}}, {{long}}]).addTo(map).bindPopup(\"{{name}}\")
  )