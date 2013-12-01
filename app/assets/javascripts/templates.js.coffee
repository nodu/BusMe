@bus =
  busesTemplate: Handlebars.compile "
   <button class='show-add-form'> Add New </button>
     {{#each buses}}
       <ul>
          <li data-id=\"{{id}}\">
          <span>{{name}}</span>
          <button class=\"edit\">edit</button>
          <button class='delete'>Delete</button>
          </li>
       </ul>
       <script>

        if (BusMe.newMarker) {
          console.log('marker', {{id}});

          BusMe.map.removeLayer(BusMe.newMarker);
        }
       </script>
     {{/each}}
   "
 
  busTemplate: Handlebars.compile "
    {{#each buses}}
      <p class=\"name\">{{name}}</p>
      <span>Type: </span>
      <span class=\"type\">{{type_of_bus}}</span>
      <p><a id=\"back-to-buses\" href=\"#\">Back to Buses</a></p>
      <script>
        var point = L.marker([{{lat}}, {{long}}]).addTo(BusMe.map).bindPopup('<a href=\"#\" id=\"marker{{id}}\">{{name}}<a>');
      </script>
    {{/each}}
   "
        # BusMe.newMarker = L.marker([{{lat}}, {{long}}]).bindPopup(\"{{name}}\");
        # BusMe.map.addLayer(BusMe.newMarker);
   

  busAddForm: Handlebars.compile "
     <form id=\"bus-add-form\">
      <input type=\"text\" name=\"bus[name]\" value=\"\">
      <input type=\"submit\" value=\"Create Bus\">
    </form>
    <script>
    
    </script>
    "

  editBusTemplate: Handlebars.compile "
    {{#each buses}}
      <form id=\"bus-edit-form\" data-id=\"{{id}}\">
        <input type=\"text\" name=\"bus[name]\" value=\"{{name}}\">
        <input type=\"text\" name=\"bus[type_of_bus]\" value=\"{{type_of_bus}}\">
        <input type=\"submit\" value=\"Save Changes\">
      </form>
    {{/each}}
    "