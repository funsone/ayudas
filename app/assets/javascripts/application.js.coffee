jQuery ->
  $('#dep_id').parent().hide()
  states = $('#dep_id').html()
  $('#dep_id').change ->
    departamento = $('#dep_id :selected').text()
    escaped_departamento = departamento.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_departamento}']").html()
    if options
      $('#dep_id').html(options)
      $('#dep_id').parent().show()
    else
      $('#dep_id').empty()
      $('#dep_id').parent().hide()
