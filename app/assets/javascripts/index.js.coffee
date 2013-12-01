$ ->
  pageBody = $('#content')
  # templates - Handlebars.templates


  showPage = (url, templateFunc) =>
    $.ajax url,
      dataType: 'json',
      success: (data) =>
        pageBody.html(templateFunc(data))

  # pageBody.on 'click', 'ul li', (e) ->
  #   id = $(@).data('id')
  #   showPage "/api/buses/#{id}", bus.busTemplate

  pageBody.on 'click', 'ul li span', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/buses/#{id}", bus.busTemplate


  pageBody.on 'click', 'button.show-add-form', (e) ->
    pageBody.html bus.busAddForm

  pageBody.on 'submit', 'form#bus-add-form', (e) ->
    e.preventDefault()
    $.ajax "/api/buses",
      type: 'POST'
      data: $(@).serialize()
      dataType: 'text'
      success: (x) ->
        # Back to the Users page
        showPage '/api/buses', bus.busesTemplate
 

  pageBody.on 'click', '#back-to-buses', (e) ->
    showPage '/api/buses', bus.busesTemplate

  showPage '/api/buses', bus.busesTemplate

  name = "Replace me with a jquery var to get the content of the form"


  pageBody.on 'click', 'ul li button.edit', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/buses/#{id}", bus.editBusTemplate

  pageBody.on 'submit', 'form#bus-edit-form', (e) ->
    console.log "derp"
    e.preventDefault()
    id = $(@).data('id')
    $.ajax "/api/buses/#{id}",
      type: 'PUT'
      data: $(@).serialize()
      dataType: 'text'
      success: (x) ->
        showPage '/api/buses', bus.busesTemplate

  pageBody.on 'click', 'ul li button.delete', (e) ->
    id = $(@).parent().data('id')
    $.ajax "/api/buses/#{id}",
      type: 'DELETE'
      dataType: 'text'
      success: ->
        # Redisplay the updated Users list
        showPage '/api/buses', bus.busesTemplate


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