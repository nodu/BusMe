@busMe =
   busesTemplate: Handlebars.compile "
     {{#each buses}}
     <ul>
         <li data-id=\"{{id}}\">{{name}}</li>
     </ul>

    <script>
    layer = [];
    
    var point = L.marker([{{lat}}, {{long}}]).addTo(map).bindPopup(\"{{name}}\");

    layer.push(point);
    cities = L.layerGroup(layer);

    </script>
     {{/each}}
   "
 
   busTemplate: Handlebars.compile "
    {{#each buses}}
      <p class=\"name\">{{name}}</p>
      <p><a id=\"back-to-buses\" href=\"#\">Back to Buses</a></p>
    
    <script>
    

    </script>
    {{/each}}
   "

      # L.marker([{{lat}}, {{long}}]).addTo(map).bindPopup(\"{{name}}\");

# <script>
#       var pointsArr = [];
#       map.removeLayer(points);
#       var marker{{id}} = L.marker([{{lat}}, {{long}}]);
#       pointsArr.push(marker{{id}});
#       var points = L.layerGroup(pointsArr);
#       map.addLayer(points);

#     </script>