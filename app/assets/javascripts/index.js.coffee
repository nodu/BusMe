$ ->
  showPage = (url, templateFunc)->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $("#content").html(templateFunc(data))

  $('section').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/buses/#{id}", busMe.busTemplate
      
  $('section').on 'click', '#back-to-buses', (e) ->
    showPage '/api/buses', busMe.busesTemplate

  showPage '/api/buses', busMe.busesTemplate


  #  $('section').on 'click', 'ul li', (e) ->
  #    id = $(@).data('id')
  #    console.log @
  #    $.ajax "/api/buses/#{id}",
  #      type: 'GET',
  #      dataType: 'json',
  #      success: (data) ->
  #       source = $('#route-template').html()
  #       template = Handlebars.compile(source)
  #       # console.log(template(data.buses[0]))
  #       output = template(data.buses[0])
  #       console.log(data)
  #       $('#content').html(output)


  # $.ajax '/api/buses',
  #   type: 'GET',
  #   dataType: 'json',
  #   success: (data) ->
  #     # console.log data
  #     # Get the template from the script element
  #     source = $('#buses-template').html()
  #     # console.log source

  #     # Compile the template to a JS function
  #     template = Handlebars.compile(source)
  #     # console.log template
  #     # console.log template({buses: data})
  #     # console.log template({buses: data})

  #     # call the template function and pass in 
  #     # the data to return the html
  #     output = template(data)

  #     #insert that html into the secetion element
  #     $('#content').html(output)
  #     # console.log(output)