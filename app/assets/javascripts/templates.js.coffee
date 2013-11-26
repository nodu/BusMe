@busMe =
   busesTemplate: Handlebars.compile "
     <ul>
       {{#each buses}}
         <li data-id=\"{{id}}\">{{name}}</li>
       {{/each}}
     </ul>
   "
 
   busTemplate: Handlebars.compile "
     {{#each buses}}
       <p class=\"name\">{{name}}</p>
       <p><a id=\"back-to-buses\" href=\"#\">Back to Buses</a></p>
     {{/each}}
   "